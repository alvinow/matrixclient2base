// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwcontentcontext.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwContentContext _$VwContentContextFromJson(Map<String, dynamic> json) =>
    VwContentContext(
      rowDefinitionId: json['rowDefinitionId'] as String?,
      collectionName: json['collectionName'] as String?,
      className: json['className'] as String?,
      recordId: json['recordId'] as String?,
      recordRef: json['recordRef'] == null
          ? null
          : VwLinkNode.fromJson(json['recordRef'] as Map<String, dynamic>),
      tag: (json['tag'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$VwContentContextToJson(VwContentContext instance) =>
    <String, dynamic>{
      'rowDefinitionId': instance.rowDefinitionId,
      'collectionName': instance.collectionName,
      'className': instance.className,
      'recordId': instance.recordId,
      'recordRef': instance.recordRef,
      'tag': instance.tag,
    };
