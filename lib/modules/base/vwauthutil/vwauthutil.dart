import 'package:matrixclient/appconfig.dart';
import 'package:matrixclient/modules/base/vwclassencodedjson/vwclassencodedjson.dart';
import 'package:matrixclient/modules/base/vwloginresponse/vwloginresponse.dart';
import 'package:matrixclient/modules/vwclassencodedjsonstoreonhive/vwclassencodedjsonstoreonhive.dart';
import 'package:matrixclient/modules/vwsharedpref/vwloginresponsesharedpref.dart';

class VwAuthUtil {

  static String getClientUserLoggedInBoxName(){
    String keyName= AppConfig.loggedInUser+"."+AppConfig.appTitle+"."+AppConfig.appVersion;

    keyName=keyName.toLowerCase();
    return keyName;
  }

  static Future<VwLoginResponse?> getSavedLoggedInLoginResponseInLocal() async {

    return await VwLoginResponseSharedPref.getLoginResponseInstance( VwAuthUtil.getClientUserLoggedInBoxName());

  }
}
