import 'package:hive_flutter/adapters.dart';
import 'package:matrixclient/modules/base/vwclassencodedjson/vwclassencodedjson.dart';
import 'dart:convert';



class VwClassEncodedJsonHiveProvider{



  static Future<int> syncRecordByBoxName(VwClassEncodedJson record) async {
    int result = 0;
    try {


      String boxName=record.instanceId;

      Box<dynamic> box = await Hive.openBox(boxName);



      while(box.isNotEmpty==true)
      {
        await box.deleteAt(0);
      }

      result = await box.add(record);


    } catch (error) {
      print(
          "Error catched on VwDocumentHiveProvider::syncRecordByClassInstanceId(VwClassEncodedJson record); Error Message=" +
              error.toString());
    }

    return result;
  }

  static Future<int> deleteRecordByBoxName({required String boxName}) async {
    int result = 0;
    try {

      Box<dynamic> box = await Hive.openBox(boxName);
      box.deleteFromDisk();
      //await Hive.deleteBoxFromDisk(boxName);
      result = 1;

    } catch (error) {
      print(
          "Error catched on VwDocumentHiveProvider::deleteRecordByClassInstanceId({required String className ,required String classInstanceId}) ; Error Message=" +
              error.toString());
    }

    return result;
  }

  static Future<VwClassEncodedJson?> getRecordByBoxName(
      {required String boxName}) async {
    VwClassEncodedJson? returnValue;
    try {
      //String instanceBoxId=VwClassEncodedJsonHiveProvider.getInstanceBoxid(className: className,classInstanceId: classInstanceId);

      Box<dynamic> box = await Hive.openBox(boxName);

      if(box.length>0) {
        returnValue = box.getAt(0);

        String encodedJSON=json.encode(returnValue!.data);

        dynamic testDyn1=json.decode(encodedJSON);

        returnValue.data=testDyn1;

      }

    } catch (error) {
      print(
          "Error On: VwDocumentHiveProvider.getRecordByClassInstanceId({required String className, required String classInstanceId}) : " +
              error.toString());
    }

    return returnValue;
  }
}