
import 'package:matrixclient2base/appconfig.dart';
import 'package:matrixclient2base/modules/base/vwloginresponse/vwloginresponse.dart';

class VwAuthUtil {

  static String getClientUserLoggedInBoxName(){
    String keyName= AppConfigBase.loggedInUser+"."+AppConfigBase.appTitle+"."+AppConfigBase.appVersion;

    keyName=keyName.toLowerCase();
    return keyName;
  }

  static Future<VwLoginResponse?> getSavedLoggedInLoginResponseInLocal() async {

    return await VwLoginResponseSharedPref.getLoginResponseInstance( VwAuthUtil.getClientUserLoggedInBoxName());

  }
}
