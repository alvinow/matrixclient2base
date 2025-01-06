import 'package:matrixclient/modules/base/vwdataformat/vwrowdata/vwrowdata.dart';
import 'package:matrixclient/modules/base/vwuser/vwuser.dart';
import 'package:matrixclient/modules/base/vwusergroup/vwusergroup.dart';
import 'package:matrixclient/modules/base/vwusergroupmember/vwusergroupmember.dart';
import 'package:json_annotation/json_annotation.dart';
part 'vwuserinfo.g.dart';

@JsonSerializable()
class VwUserInfo {
  VwUserInfo(
      {required this.user,
       this.userGroupList,
       this.userGroupMemberList,
        this.mainRoleUserGroup,
        this.roleInfoList=const []
      });
  final List<VwUserGroupMember>? userGroupMemberList;
  final List<VwUserGroup>? userGroupList;
  final VwUser user;
  final VwUserGroup? mainRoleUserGroup;
  final List<VwRowData>? roleInfoList;


  factory VwUserInfo.fromJson(Map<String, dynamic> json) =>
      _$VwUserInfoFromJson(json);
  Map<String, dynamic> toJson() => _$VwUserInfoToJson(this);
}
