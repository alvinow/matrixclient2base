// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwlinknode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwLinkNode _$VwLinkNodeFromJson(Map<String, dynamic> json) => VwLinkNode(
      nodeId: json['nodeId'] as String?,
      nodeType: json['nodeType'] as String,
      contentContext: json['contentContext'] == null
          ? null
          : VwContentContext.fromJson(
              json['contentContext'] as Map<String, dynamic>),
      cache: json['cache'] == null
          ? null
          : VwLinkNodeRendered.fromJson(json['cache'] as Map<String, dynamic>),
      rendered: json['rendered'] == null
          ? null
          : VwLinkNodeRendered.fromJson(
              json['rendered'] as Map<String, dynamic>),
      sync: json['sync'] == null
          ? null
          : VwLinkNodeRendered.fromJson(json['sync'] as Map<String, dynamic>),
      enabledRenderChildrenNode:
          json['enabledRenderChildrenNode'] as bool? ?? false,
      childrenNodeRendered: json['childrenNodeRendered'] == null
          ? null
          : VwQueryNodeResult.fromJson(
              json['childrenNodeRendered'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VwLinkNodeToJson(VwLinkNode instance) =>
    <String, dynamic>{
      'nodeId': instance.nodeId,
      'nodeType': instance.nodeType,
      'contentContext': instance.contentContext,
      'cache': instance.cache,
      'rendered': instance.rendered,
      'sync': instance.sync,
      'enabledRenderChildrenNode': instance.enabledRenderChildrenNode,
      'childrenNodeRendered': instance.childrenNodeRendered,
    };
