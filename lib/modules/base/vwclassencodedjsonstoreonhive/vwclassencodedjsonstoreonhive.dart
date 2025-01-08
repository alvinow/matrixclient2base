import 'package:matrixclient/modules/base/vwclassencodedjson/vwclassencodedjson.dart';
import 'package:matrixclient/modules/vwclassencodedjsonhiveprovider/vwclassencodedjsonhiveprovider.dart';
import 'dart:convert';

class VwClassEncodedJsonStoreOnHive{
  static Future<int> syncContentToBox(VwClassEncodedJson node) async {
    int returnValue = 0;
    try {
      String encodedJsonString = json.encode(node.data);
      node.data = json.decode(encodedJsonString);

      returnValue =
      await VwClassEncodedJsonHiveProvider.syncRecordByBoxName(node);
    } catch (error) {
      print(
          "Error on VwDocumentStoreOnHive::Future<int> syncClassInstance(VwDocument document)=" +
              error.toString());
    }

    return returnValue;
  }

  static Future<VwClassEncodedJson?> getNodeByBoxName(
      {required String boxName}) async {
    VwClassEncodedJson? returnValue;
    try {
      returnValue = await VwClassEncodedJsonHiveProvider.getRecordByBoxName(
          boxName: boxName);
    } catch (error) {
      print(
          "Error on VwDocumentStore::Future<VwDocument?> getDocumentInstance=" +
              error.toString());
    }

    return returnValue;
  }

  static Future<int> deleteDocumentByBoxName({required String boxName}) async {
    int returnValue = -1;
    try {
      returnValue = await VwClassEncodedJsonHiveProvider .deleteRecordByBoxName(
          boxName: boxName);
    } catch (error) {
      print("Error on deleteDocumentByBoxName");
    }
    return returnValue;
  }


}