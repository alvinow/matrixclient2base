// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwlinknoderendered.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwLinkNodeRendered _$VwLinkNodeRenderedFromJson(Map<String, dynamic> json) =>
    VwLinkNodeRendered(
      renderedDate: DateTime.parse(json['renderedDate'] as String),
      node: json['node'] == null
          ? null
          : VwNode.fromJson(json['node'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VwLinkNodeRenderedToJson(VwLinkNodeRendered instance) =>
    <String, dynamic>{
      'renderedDate': instance.renderedDate.toIso8601String(),
      'node': instance.node,
    };
