import 'package:matrixclient/modules/base/vwbasemodel/vwbasemodel.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:matrixclient/modules/base/vwdataformat/vwdataformattimestamp/vwdataformattimestamp.dart';
import 'package:matrixclient/modules/base/vwdataformat/vwrowdata/vwrowdata.dart';
import 'package:matrixclient/modules/base/vwlinkbasemodel/vwlinkbasemodel.dart';
import 'package:matrixclient/modules/base/vwlinknode/vwlinknode.dart';
import 'package:matrixclient/modules/base/vwnode/vwnodecontent/vwnodecontent.dart';
part 'vwloginsession.g.dart';

@JsonSerializable()
class VwLoginSession extends VwBaseModel {
  VwLoginSession(
      {required super.recordId,
      required super.timestamp,
      required this.isActiveSession,
      required this.deviceId,
      required this.ip,
      required this.userId,

      });

  bool isActiveSession;
  String deviceId;
  String ip;
  String userId;


  factory VwLoginSession.fromJson(Map<String, dynamic> json) =>
      _$VwLoginSessionFromJson(json);
  Map<String, dynamic> toJson() => _$VwLoginSessionToJson(this);
}
