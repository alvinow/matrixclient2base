// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwnode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwNode _$VwNodeFromJson(Map<String, dynamic> json) => VwNode(
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
      creatorUserId: json['creatorUserId'] as String?,
      ownerUserId: json['ownerUserId'] as String?,
      creatorUserLinkNode: json['creatorUserLinkNode'] == null
          ? null
          : VwLinkNode.fromJson(
              json['creatorUserLinkNode'] as Map<String, dynamic>),
      crudMode: json['crudMode'] as String? ?? VwBaseModel.cmCreateOrUpdate,
      rowDataFormat: json['rowDataFormat'] == null
          ? null
          : VwRowData.fromJson(json['rowDataFormat'] as Map<String, dynamic>),
      displayName: json['displayName'] as String,
      parentNodeId: json['parentNodeId'] as String?,
      nodeType: json['nodeType'] as String,
      nodeStatusId: json['nodeStatusId'] as String? ?? VwNode.nsActive,
      accessMode: (json['accessMode'] as num?)?.toInt() ?? 1,
      ownerUserGroupId: json['ownerUserGroupId'] as String?,
      upsyncToken: json['upsyncToken'] as String?,
      content: VwNodeContent.fromJson(json['content'] as Map<String, dynamic>),
      relativeDepth: (json['relativeDepth'] as num?)?.toInt(),
      defaultFormDefinitionIdList:
          (json['defaultFormDefinitionIdList'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      defaultFormDefinitionList:
          (json['defaultFormDefinitionList'] as List<dynamic>?)
              ?.map((e) => VwNode.fromJson(e as Map<String, dynamic>))
              .toList(),
      responseInfo: json['responseInfo'] == null
          ? null
          : VwNodeResponse.fromJson(
              json['responseInfo'] as Map<String, dynamic>),
      isSelected: json['isSelected'] as bool? ?? false,
      stateKey: json['stateKey'] as String?,
      isAllowChildFolder: json['isAllowChildFolder'] as bool? ?? false,
      isAllowChildNodeContentRowData:
          json['isAllowChildNodeContentRowData'] as bool? ?? false,
      isSpecificChildNodeContentRowData:
          json['isSpecificChildNodeContentRowData'] as bool? ?? false,
      childNodeContentRowDataCollectionNameList:
          (json['childNodeContentRowDataCollectionNameList'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      nodeEditorFormDefinitionNode: json['nodeEditorFormDefinitionNode'] == null
          ? null
          : VwNode.fromJson(
              json['nodeEditorFormDefinitionNode'] as Map<String, dynamic>),
      nodeAccessRendered: json['nodeAccessRendered'] == null
          ? null
          : VwNodeAccessRendered.fromJson(
              json['nodeAccessRendered'] as Map<String, dynamic>),
      childNodeFormDefinitionList:
          (json['childNodeFormDefinitionList'] as List<dynamic>?)
              ?.map((e) => VwNode.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$VwNodeToJson(VwNode instance) => <String, dynamic>{
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
      'displayName': instance.displayName,
      'parentNodeId': instance.parentNodeId,
      'nodeType': instance.nodeType,
      'ownerUserGroupId': instance.ownerUserGroupId,
      'nodeStatusId': instance.nodeStatusId,
      'accessMode': instance.accessMode,
      'content': instance.content,
      'upsyncToken': instance.upsyncToken,
      'nodeAccessRendered': instance.nodeAccessRendered,
      'relativeDepth': instance.relativeDepth,
      'defaultFormDefinitionIdList': instance.defaultFormDefinitionIdList,
      'defaultFormDefinitionList': instance.defaultFormDefinitionList,
      'responseInfo': instance.responseInfo,
      'isSelected': instance.isSelected,
      'stateKey': instance.stateKey,
      'isAllowChildFolder': instance.isAllowChildFolder,
      'isAllowChildNodeContentRowData': instance.isAllowChildNodeContentRowData,
      'isSpecificChildNodeContentRowData':
          instance.isSpecificChildNodeContentRowData,
      'childNodeContentRowDataCollectionNameList':
          instance.childNodeContentRowDataCollectionNameList,
      'childNodeFormDefinitionList': instance.childNodeFormDefinitionList,
      'nodeEditorFormDefinitionNode': instance.nodeEditorFormDefinitionNode,
    };
