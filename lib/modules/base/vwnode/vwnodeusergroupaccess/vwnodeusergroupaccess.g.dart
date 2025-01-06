// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwnodeusergroupaccess.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwNodeUserGroupAccess _$VwNodeUserGroupAccessFromJson(
        Map<String, dynamic> json) =>
    VwNodeUserGroupAccess(
      recordId: json['recordId'] as String,
      timestamp: VwDataFormatTimestamp.fromJson(
          json['timestamp'] as Map<String, dynamic>),
      nodeId: json['nodeId'] as String,
      sharedByUserId: json['sharedByUserId'] as String,
      targetUserGroupId: json['targetUserGroupId'] as String,
      access:
          (json['access'] as List<dynamic>?)?.map((e) => e as String).toList(),
      targetUserGroup: json['targetUserGroup'] == null
          ? null
          : VwLinkNode.fromJson(
              json['targetUserGroup'] as Map<String, dynamic>),
      sharedByUser: json['sharedByUser'] == null
          ? null
          : VwLinkNode.fromJson(json['sharedByUser'] as Map<String, dynamic>),
    )
      ..indexKey = json['indexKey'] as Map<String, dynamic>?
      ..ref = json['ref'] == null
          ? null
          : VwLinkNode.fromJson(json['ref'] as Map<String, dynamic>)
      ..attachments = (json['attachments'] as List<dynamic>?)
          ?.map((e) => VwNodeContent.fromJson(e as Map<String, dynamic>))
          .toList()
      ..collectionName = json['collectionName'] as String?
      ..crudMode = json['crudMode'] as String?
      ..rowDataFormat = json['rowDataFormat'] == null
          ? null
          : VwRowData.fromJson(json['rowDataFormat'] as Map<String, dynamic>)
      ..creatorUserId = json['creatorUserId'] as String?
      ..ownerUserId = json['ownerUserId'] as String?
      ..creatorUserLinkNode = json['creatorUserLinkNode'] == null
          ? null
          : VwLinkNode.fromJson(
              json['creatorUserLinkNode'] as Map<String, dynamic>)
      ..isActive = json['isActive'] as bool?;

Map<String, dynamic> _$VwNodeUserGroupAccessToJson(
        VwNodeUserGroupAccess instance) =>
    <String, dynamic>{
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
      'nodeId': instance.nodeId,
      'sharedByUserId': instance.sharedByUserId,
      'access': instance.access,
      'isActive': instance.isActive,
      'targetUserGroupId': instance.targetUserGroupId,
      'targetUserGroup': instance.targetUserGroup,
      'sharedByUser': instance.sharedByUser,
    };
