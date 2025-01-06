// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwuserinfo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwUserInfo _$VwUserInfoFromJson(Map<String, dynamic> json) => VwUserInfo(
      user: VwUser.fromJson(json['user'] as Map<String, dynamic>),
      userGroupList: (json['userGroupList'] as List<dynamic>?)
          ?.map((e) => VwUserGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
      userGroupMemberList: (json['userGroupMemberList'] as List<dynamic>?)
          ?.map((e) => VwUserGroupMember.fromJson(e as Map<String, dynamic>))
          .toList(),
      mainRoleUserGroup: json['mainRoleUserGroup'] == null
          ? null
          : VwUserGroup.fromJson(
              json['mainRoleUserGroup'] as Map<String, dynamic>),
      roleInfoList: (json['roleInfoList'] as List<dynamic>?)
              ?.map((e) => VwRowData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$VwUserInfoToJson(VwUserInfo instance) =>
    <String, dynamic>{
      'userGroupMemberList': instance.userGroupMemberList,
      'userGroupList': instance.userGroupList,
      'user': instance.user,
      'mainRoleUserGroup': instance.mainRoleUserGroup,
      'roleInfoList': instance.roleInfoList,
    };
