
import 'package:matrixclient2base/appconfig.dart';
import 'package:matrixclient2base/modules/base/vwloginresponse/vwloginresponse.dart';
import 'package:matrixclient2base/modules/base/vwsharedpref/vwloginresponsesharedpref.dart';

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
