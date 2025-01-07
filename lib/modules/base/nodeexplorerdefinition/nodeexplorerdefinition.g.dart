// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nodeexplorerdefinition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NodeExplorerDefinition _$NodeExplorerDefinitionFromJson(
        Map<String, dynamic> json) =>
    NodeExplorerDefinition(
      keyName: json['keyName'] as String,
      fieldExplorerList: (json['fieldExplorerList'] as List<dynamic>)
          .map((e) =>
              FieldExplorerDefinition.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NodeExplorerDefinitionToJson(
        NodeExplorerDefinition instance) =>
    <String, dynamic>{
      'keyName': instance.keyName,
      'fieldExplorerList': instance.fieldExplorerList,
    };
