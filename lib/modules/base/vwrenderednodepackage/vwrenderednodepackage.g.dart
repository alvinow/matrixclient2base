// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwrenderednodepackage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwRenderedNodePackage _$VwRenderedNodePackageFromJson(
        Map<String, dynamic> json) =>
    VwRenderedNodePackage(
      recordId: json['recordId'] as String,
      timestamp: json['timestamp'] == null
          ? null
          : VwDataFormatTimestamp.fromJson(
              json['timestamp'] as Map<String, dynamic>),
      rootNode: json['rootNode'] == null
          ? null
          : VwNode.fromJson(json['rootNode'] as Map<String, dynamic>),
      parentArticleNode: json['parentArticleNode'] == null
          ? null
          : VwNode.fromJson(json['parentArticleNode'] as Map<String, dynamic>),
      renderedNodeList: (json['renderedNodeList'] as List<dynamic>?)
          ?.map((e) => VwNode.fromJson(e as Map<String, dynamic>))
          .toList(),
      user: json['user'] == null
          ? null
          : VwUser.fromJson(json['user'] as Map<String, dynamic>),
      userGroupMember: (json['userGroupMember'] as List<dynamic>?)
          ?.map((e) => VwUserGroupMember.fromJson(e as Map<String, dynamic>))
          .toList(),
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

Map<String, dynamic> _$VwRenderedNodePackageToJson(
        VwRenderedNodePackage instance) =>
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
      'rootNode': instance.rootNode,
      'parentArticleNode': instance.parentArticleNode,
      'renderedNodeList': instance.renderedNodeList,
      'user': instance.user,
      'userGroupMember': instance.userGroupMember,
    };
