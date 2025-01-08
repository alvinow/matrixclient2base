import 'package:matrixclient2base/modules/base/vwloginresponse/vwloginresponse.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';
import 'dart:convert';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class VwClientDb {
  static Future<String> generateDbPath({required String collectionName}) async {
    var dir = await getApplicationDocumentsDirectory();
    await dir.create(recursive: true);
    String dbPath = join(dir.path, collectionName).substring(1);
    return dbPath;
  }

  static Future<bool> deleteLoginResponseInstance(String instanceId) async{
    bool returnValue=false;
    String className = "VwLoginResponse";
    String dbPath = await VwClientDb.generateDbPath(collectionName: className);
    try {
      returnValue =
      await VwClientDb.deleteStringRecord (dbPath: dbPath, keyName: instanceId);


    } catch (error) {
      print("Error catched on VwClientDb.getLoginSessionInstance=" +
          error.toString());
    }
    return returnValue;
}

  static Future<VwLoginResponse?> getLoginResponseInstance(
      String instanceId) async {
    VwLoginResponse? returnValue;
    String className = "VwLoginResponse";
    String dbPath = await VwClientDb.generateDbPath(collectionName: className);
    try {
      String? dataEncodedJson =
          await VwClientDb.getStringRecord(dbPath: dbPath, keyName: instanceId);

      if (dataEncodedJson != null) {
        returnValue = VwLoginResponse.fromJson(json.decode(dataEncodedJson));
      }
    } catch (error) {
      print("Error catched on VwClientDb.getLoginSessionInstance=" +
          error.toString());
    }
    return returnValue;
  }

  static Future<bool> syncLoginResponseInstance(
      String instanceId, VwLoginResponse loginResponse) async {
    bool returnValue = false;
    String className = "VwLoginResponse";
    String dbPath = await VwClientDb.generateDbPath(collectionName: className);
    try {
      returnValue = await VwClientDb.syncStringRecord(
          dbPath: dbPath,
          keyName: instanceId,
          recordString: json.encode(loginResponse.toJson()));
    } catch (error) {}
    return returnValue;
  }

  static Future<bool> syncStringRecord(
      {required String dbPath,
      required String keyName,
      required String recordString}) async {
    bool returnValue = false;
    try {
      Database db = await databaseFactoryIo.openDatabase(dbPath);

      var store = StoreRef.main();

      Object? key = await store.record(keyName).add(db, recordString);

      if (key != null) {
        print(key.toString());
        returnValue = true;
      }
    } catch (error) {
      print("Error catch on VwClientDb.syncStringRecord=" + error.toString());
    }
    return returnValue;
  }

  static Future<String?> getStringRecord(
      {required String dbPath, required String keyName}) async {
    String? returnValue;
    try {
      Database db = await databaseFactoryIo.openDatabase(dbPath, version: 1);

      var store = StoreRef.main();

      Object? recordObject = await store.record(keyName).get(db);
      returnValue = recordObject.toString();
    } catch (error) {
      print("Error catched on VwClientDb.getStringRecord=" + error.toString());
    }

    return returnValue;
  }

  static Future<bool> deleteStringRecord(
      {required String dbPath, required String keyName}) async {
    bool returnValue = false;

    Database db = await databaseFactoryIo.openDatabase(dbPath);

    var store = StoreRef.main();

    await store.record(keyName).delete(db);

    return returnValue;
  }


}
