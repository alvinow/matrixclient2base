// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwrowcollectiondefinition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwRowCollectionDefinition _$VwRowCollectionDefinitionFromJson(
        Map<String, dynamic> json) =>
    VwRowCollectionDefinition(
      recordId: json['recordId'] as String,
      timestamp: json['timestamp'] == null
          ? null
          : VwDataFormatTimestamp.fromJson(
              json['timestamp'] as Map<String, dynamic>),
      rowDefinitionId: json['rowDefinitionId'] as String,
      defaultNodeFolderId: json['defaultNodeFolderId'] as String?,
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
              json['creatorUserLinkNode'] as Map<String, dynamic>);

Map<String, dynamic> _$VwRowCollectionDefinitionToJson(
        VwRowCollectionDefinition instance) =>
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
      'rowDefinitionId': instance.rowDefinitionId,
      'defaultNodeFolderId': instance.defaultNodeFolderId,
    };
