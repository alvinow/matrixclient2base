import 'package:json_annotation/json_annotation.dart';
import 'package:matrixclient2base/modules/base/vwdataformat/vwdataformattimestamp/vwdataformattimestamp.dart';
import 'package:matrixclient2base/modules/base/vwbasemodel/vwbasemodel.dart';
import 'package:matrixclient2base/modules/base/vwdataformat/vwrowdata/vwrowdata.dart';
import 'package:matrixclient2base/modules/base/vwlinknode/vwlinknode.dart';
import 'package:matrixclient2base/modules/base/vwnode/vwnodecontent/vwnodecontent.dart';
part 'vwusergroupmember.g.dart';

@JsonSerializable()
class VwUserGroupMember extends VwBaseModel{
  VwUserGroupMember({
    required super.recordId,
    required super.timestamp,
    super.rowDataFormat,
    required this.userId,
    required this.userGroupId
});


    String userId;
    String userGroupId;

    factory VwUserGroupMember.fromJson(Map<String, dynamic> json) =>
        _$VwUserGroupMemberFromJson(json);
    Map<String, dynamic> toJson() => _$VwUserGroupMemberToJson(this);
}