import 'package:json_annotation/json_annotation.dart';
import 'package:matrixclient2base/modules/base/vwbasemodel/vwbasemodel.dart';
import 'package:matrixclient2base/modules/base/vwclassencodedjson/vwclassencodedjson.dart';
import 'package:matrixclient2base/modules/base/vwdataformat/vwdataformattimestamp/vwdataformattimestamp.dart';
import 'package:matrixclient2base/modules/base/vwdataformat/vwrowdata/vwrowdata.dart';
import 'package:matrixclient2base/modules/base/vwlinknode/vwlinknode.dart';
import 'package:matrixclient2base/modules/base/vwnode/vwnodecontent/vwnodecontent.dart';
part 'vwapicallresponse.g.dart';

@JsonSerializable()
class VwApiCallResponse extends VwBaseModel{
  VwApiCallResponse({
    required String recordId,
    required VwDataFormatTimestamp timestamp,
    required this.responseStatusCode,
    this.syncToken,
    required this.responseType,
    this.valueResponseClassEncodedJson,
    this.valueResponseRowData,
    this.errorMessage,
}):super(recordId: recordId,timestamp: timestamp);

  int responseStatusCode;
  String? syncToken;
  VwRowData? valueResponseRowData;
  String? errorMessage;
  String responseType;
  VwClassEncodedJson? valueResponseClassEncodedJson;


  static const String  rtRowData="rtRowData";
  static const String  rtClassEncodedJson="rtClassEncodedJson";

  factory VwApiCallResponse.fromJson(Map<String, dynamic> json) =>
      _$VwApiCallResponseFromJson(json);
  Map<String, dynamic> toJson() => _$VwApiCallResponseToJson(this);
}