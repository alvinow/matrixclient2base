// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwuser.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwUser _$VwUserFromJson(Map<String, dynamic> json) => VwUser(
      recordId: json['recordId'] as String,
      timestamp: json['timestamp'] == null
          ? null
          : VwDataFormatTimestamp.fromJson(
              json['timestamp'] as Map<String, dynamic>),
      indexKey: json['indexKey'] as Map<String, dynamic>?,
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map((e) => VwNodeContent.fromJson(e as Map<String, dynamic>))
          .toList(),
      ref: json['ref'] == null
          ? null
          : VwLinkNode.fromJson(json['ref'] as Map<String, dynamic>),
      collectionName: json['collectionName'] as String?,
      rowDataFormat: json['rowDataFormat'] == null
          ? null
          : VwRowData.fromJson(json['rowDataFormat'] as Map<String, dynamic>),
      creatorUserLinkNode: json['creatorUserLinkNode'] == null
          ? null
          : VwLinkNode.fromJson(
              json['creatorUserLinkNode'] as Map<String, dynamic>),
      username: json['username'] as String,
      mainRoleUserGroupId: json['mainRoleUserGroupId'] as String,
      displayname: json['displayname'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      userStatusId: json['userStatusId'] as String,
      homeFolderNodeId: json['homeFolderNodeId'] as String,
      citizenId: json['citizenId'] as String?,
      organizationMemberId: json['organizationMemberId'] as String?,
      organizationId: json['organizationId'] as String?,
      prefixUserGroupDefaultNodeId:
          json['prefixUserGroupDefaultNodeId'] as String?,
      authType: json['authType'] as String? ?? VwUser.authTypeInternal,
      urlProfilePicture: json['urlProfilePicture'] as String?,
    )
      ..crudMode = json['crudMode'] as String?
      ..creatorUserId = json['creatorUserId'] as String?
      ..ownerUserId = json['ownerUserId'] as String?;

Map<String, dynamic> _$VwUserToJson(VwUser instance) => <String, dynamic>{
      'recordId': instance.recordId,
      'timestamp': instance.timestamp,
      'indexKey': instance.indexKey,
      'ref': instance.ref,
      'attachments': instance.attachments,
      'collectionName': instance.collectionName,
      'crudMode': instance.crudMode,
      'rowDataFormat': instance.rowDataFormat,
      'creatorUserId': instance.creatorUserId,
      'ownerUserId': instance.ownerUserId,
      'creatorUserLinkNode': instance.creatorUserLinkNode,
      'username': instance.username,
      'mainRoleUserGroupId': instance.mainRoleUserGroupId,
      'displayname': instance.displayname,
      'email': instance.email,
      'password': instance.password,
      'userStatusId': instance.userStatusId,
      'homeFolderNodeId': instance.homeFolderNodeId,
      'citizenId': instance.citizenId,
      'organizationMemberId': instance.organizationMemberId,
      'organizationId': instance.organizationId,
      'prefixUserGroupDefaultNodeId': instance.prefixUserGroupDefaultNodeId,
      'authType': instance.authType,
      'urlProfilePicture': instance.urlProfilePicture,
    };
