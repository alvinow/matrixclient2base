import 'package:matrixclient2base/modules/base/vwloginresponse/vwloginresponse.dart';
import 'package:matrixclient2base/modules/base/vwsharedpref/vwloginresponsesharedpref.dart';

class VwAuthUtil {

  static String getClientUserLoggedInBoxName({required String loggedInUser,required String appTitle, required appVersion}){
    String keyName= loggedInUser+"."+appTitle+"."+appVersion;

    keyName=keyName.toLowerCase();
    return keyName;
  }

  static Future<VwLoginResponse?> getSavedLoggedInLoginResponseInLocal({required String loggedInUser,required String appTitle, required appVersion}) async {

    return await VwLoginResponseSharedPref.getLoginResponseInstance( VwAuthUtil.getClientUserLoggedInBoxName(
      loggedInUser:loggedInUser,
      appTitle:appTitle,
      appVersion:appVersion
    ));

  }
}
