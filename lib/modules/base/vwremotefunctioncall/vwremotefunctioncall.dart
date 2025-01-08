import 'package:json_annotation/json_annotation.dart';
import 'package:matrixclient/modules/base/vwdataformat/vwrowdata/vwrowdata.dart';


part 'vwremotefunctioncall.g.dart';

@JsonSerializable()
class VwRemoteFunctionCall{
  VwRemoteFunctionCall({
    required this.remoteFunctionCallId,
    required this.remoteFunctionId,
    required this.token,
    required this.parameters
});

  final String remoteFunctionCallId;
  final String remoteFunctionId;
  final String token;
  final List<VwRowData > parameters;

  factory VwRemoteFunctionCall.fromJson(Map<String, dynamic> json) => _$VwRemoteFunctionCallFromJson(json);
  Map<String, dynamic> toJson() => _$VwRemoteFunctionCallToJson(this);
}