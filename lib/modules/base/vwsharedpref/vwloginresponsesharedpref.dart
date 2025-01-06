import 'package:matrixclient/modules/base/vwloginresponse/vwloginresponse.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class VwLoginResponseSharedPref {
  static Future<bool> deleteLoginResponseInstance(String instanceId) async {
    bool returnValue = false;
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      returnValue = await prefs.remove(instanceId);
    } catch (error) {
      print("Error catched on VwClientDb.getLoginSessionInstance=" +
          error.toString());
    }
    return returnValue;
  }

  static Future<VwLoginResponse?> getLoginResponseInstance(
      String instanceId) async {
    VwLoginResponse? returnValue;
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();

      String? dataEncodedJson = await prefs.getString(instanceId);

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

    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      String loginResponseDataString = json.encode(loginResponse.toJson());
      returnValue=await prefs.setString(instanceId, loginResponseDataString);
    } catch (error) {}
    return returnValue;
  }
}
