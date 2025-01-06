import 'package:matrixclient/modules/base/vwbasemodel/vwbasemodel.dart';
import 'package:matrixclient/modules/base/vwdataformat/vwdataformattimestamp/vwdataformattimestamp.dart';
import 'package:matrixclient/modules/base/vwdataformat/vwrowdata/vwrowdata.dart';
import 'package:matrixclient/modules/base/vwlinknode/vwlinknode.dart';
import 'package:matrixclient/modules/base/vwnode/vwnodecontent/vwnodecontent.dart';
import 'package:matrixclient/modules/base/vwuser/vwuser.dart';
import 'package:matrixclient/modules/base/vwuserinfo/vwuserinfo.dart';
import 'package:json_annotation/json_annotation.dart';
part 'vwloginresponse.g.dart';

@JsonSerializable()
class VwLoginResponse extends VwBaseModel {
  VwLoginResponse(
      {required String recordId,
      required VwDataFormatTimestamp timestamp,
      required this.loginStatusCode,
      this.loginSessionId,
      this.userInfo,
      this.errorMessage,
        this.authType=VwUser.authTypeInternal,
        this.idToken,
        this.homeLinkNode
      })
      : super(recordId: recordId, timestamp: timestamp);

  final String? loginSessionId;
  final VwUserInfo? userInfo;
  final int loginStatusCode;
  final String? errorMessage;
  VwLinkNode? homeLinkNode;
  final String authType;
  final String? idToken;

  factory VwLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$VwLoginResponseFromJson(json);
  Map<String, dynamic> toJson() => _$VwLoginResponseToJson(this);
}
