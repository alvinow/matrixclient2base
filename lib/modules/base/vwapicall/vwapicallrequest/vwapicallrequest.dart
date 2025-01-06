import 'package:json_annotation/json_annotation.dart';
import 'package:matrixclient2base/modules/base/vwdataformat/vwrowdata/vwrowdata.dart';
part 'vwapicallrequest.g.dart';

@JsonSerializable()
class VwApiCallRequest{
  VwApiCallRequest({
    required this.apiCallRequestId,
    required this.apiCallId,
    required this.inputRow
});

  String apiCallRequestId;
  String apiCallId;
  VwRowData inputRow;

  factory VwApiCallRequest.fromJson(Map<String, dynamic> json) =>
      _$VwApiCallRequestFromJson(json);
  Map<String, dynamic> toJson() => _$VwApiCallRequestToJson(this);
}