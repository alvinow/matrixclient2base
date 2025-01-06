// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwusergroup.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwUserGroup _$VwUserGroupFromJson(Map<String, dynamic> json) => VwUserGroup(
      recordId: json['recordId'] as String,
      timestamp: json['timestamp'] == null
          ? null
          : VwDataFormatTimestamp.fromJson(
              json['timestamp'] as Map<String, dynamic>),
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
      name: json['name'] as String,
      ownerUserId: json['ownerUserId'] as String,
      description: json['description'] as String?,
      functionalRoleId: json['functionalRoleId'] as String?,
      organizationId: json['organizationId'] as String?,
    )
      ..indexKey = json['indexKey'] as Map<String, dynamic>?
      ..crudMode = json['crudMode'] as String?
      ..creatorUserId = json['creatorUserId'] as String?
      ..creatorUserLinkNode = json['creatorUserLinkNode'] == null
          ? null
          : VwLinkNode.fromJson(
              json['creatorUserLinkNode'] as Map<String, dynamic>);

Map<String, dynamic> _$VwUserGroupToJson(VwUserGroup instance) =>
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
      'creatorUserLinkNode': instance.creatorUserLinkNode,
      'name': instance.name,
      'ownerUserId': instance.ownerUserId,
      'description': instance.description,
      'functionalRoleId': instance.functionalRoleId,
      'organizationId': instance.organizationId,
    };
