// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwnodeaccess.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwNodeAccess _$VwNodeAccessFromJson(Map<String, dynamic> json) => VwNodeAccess(
      recordId: json['recordId'] as String,
      timestamp: VwDataFormatTimestamp.fromJson(
          json['timestamp'] as Map<String, dynamic>),
      ownerUserId: json['ownerUserId'] as String?,
      nodeId: json['nodeId'] as String,
      sharedByUserId: json['sharedByUserId'] as String,
      access:
          (json['access'] as List<dynamic>?)?.map((e) => e as String).toList(),
      isActive: json['isActive'] as bool? ?? false,
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
      ..creatorUserLinkNode = json['creatorUserLinkNode'] == null
          ? null
          : VwLinkNode.fromJson(
              json['creatorUserLinkNode'] as Map<String, dynamic>);

Map<String, dynamic> _$VwNodeAccessToJson(VwNodeAccess instance) =>
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
    };
