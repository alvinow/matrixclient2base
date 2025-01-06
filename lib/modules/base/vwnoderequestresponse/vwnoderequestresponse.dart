import 'package:matrixclient2base/modules/base/vwapicall/vwapicallresponse/vwapicallresponse.dart';
import 'package:matrixclient2base/modules/base/vwrenderednodepackage/vwrenderednodepackage.dart';
import 'package:http/http.dart' as _http;

class VwNodeRequestResponse {
  VwNodeRequestResponse({this.apiCallResponse, this.renderedNodePackage});
  VwApiCallResponse? apiCallResponse;
  VwRenderedNodePackage? renderedNodePackage;
  _http.Response? httpResponse;
}
