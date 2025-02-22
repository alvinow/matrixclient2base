// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwrowdata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwRowData _$VwRowDataFromJson(Map<String, dynamic> json) => VwRowData(
      recordId: json['recordId'] as String,
      collectionName: json['collectionName'] as String?,
      indexKey: json['indexKey'] as Map<String, dynamic>?,
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
      crudMode: json['crudMode'] as String? ?? VwBaseModel.cmCreateOrUpdate,
      rowDataFormat: json['rowDataFormat'] == null
          ? null
          : VwRowData.fromJson(json['rowDataFormat'] as Map<String, dynamic>),
      creatorUserLinkNode: json['creatorUserLinkNode'] == null
          ? null
          : VwLinkNode.fromJson(
              json['creatorUserLinkNode'] as Map<String, dynamic>),
      creatorUserId: json['creatorUserId'] as String?,
      ownerUserId: json['ownerUserId'] as String?,
      fields: (json['fields'] as List<dynamic>?)
          ?.map((e) => VwFieldValue.fromJson(e as Map<String, dynamic>))
          .toList(),
      formDefinitionId: json['formDefinitionId'] as String?,
      formDefinitionLinkNode: json['formDefinitionLinkNode'] == null
          ? null
          : VwLinkNode.fromJson(
              json['formDefinitionLinkNode'] as Map<String, dynamic>),
      cmReadFormDefinitionId: json['cmReadFormDefinitionId'] as String?,
      cmReadFormDefinitionLinkNode: json['cmReadFormDefinitionLinkNode'] == null
          ? null
          : VwLinkNode.fromJson(
              json['cmReadFormDefinitionLinkNode'] as Map<String, dynamic>),
      rowDefinitionId: json['rowDefinitionId'] as String?,
      responseInfo: json['responseInfo'] == null
          ? null
          : VwNodeResponse.fromJson(
              json['responseInfo'] as Map<String, dynamic>),
      syncFormResponseList: (json['syncFormResponseList'] as List<dynamic>?)
          ?.map((e) => VwRowData.fromJson(e as Map<String, dynamic>))
          .toList(),
      parentNodeId: json['parentNodeId'] as String?,
      renderedFormResponseList:
          (json['renderedFormResponseList'] as List<dynamic>?)
              ?.map((e) => VwRowData.fromJson(e as Map<String, dynamic>))
              .toList(),
      indexFieldProperties:
          json['indexFieldProperties'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$VwRowDataToJson(VwRowData instance) => <String, dynamic>{
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
      'fields': instance.fields,
      'formDefinitionId': instance.formDefinitionId,
      'cmReadFormDefinitionId': instance.cmReadFormDefinitionId,
      'formDefinitionLinkNode': instance.formDefinitionLinkNode,
      'cmReadFormDefinitionLinkNode': instance.cmReadFormDefinitionLinkNode,
      'rowDefinitionId': instance.rowDefinitionId,
      'responseInfo': instance.responseInfo,
      'syncFormResponseList': instance.syncFormResponseList,
      'renderedFormResponseList': instance.renderedFormResponseList,
      'parentNodeId': instance.parentNodeId,
      'indexFieldProperties': instance.indexFieldProperties,
    };
