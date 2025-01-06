import 'package:matrixclient2base/modules/base/vwbasemodel/vwbasemodel.dart';
import 'package:matrixclient2base/modules/base/vwdataformat/vwdataformattimestamp/vwdataformattimestamp.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:matrixclient2base/modules/base/vwdataformat/vwrowdata/vwrowdata.dart';
import 'package:matrixclient2base/modules/base/vwlinknode/vwlinknode.dart';
import 'package:matrixclient2base/modules/base/vwnode/vwnodecontent/vwnodecontent.dart';
part 'synctoken.g.dart';

@JsonSerializable()
class SyncToken extends VwBaseModel {
  SyncToken(
      {required super.recordId,
      required super.timestamp,
      required this.loginSessionId,
      required this.apiCallId,
      required this.expired,
      required this.isTokenUsed});

  String loginSessionId;
  String apiCallId;
  DateTime expired;
  bool isTokenUsed;

  factory SyncToken.fromJson(Map<String, dynamic> json) =>
      _$SyncTokenFromJson(json);
  Map<String, dynamic> toJson() => _$SyncTokenToJson(this);
}
