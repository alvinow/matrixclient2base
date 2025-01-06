// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwrowdefinition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwRowDefinition _$VwRowDefinitionFromJson(Map<String, dynamic> json) =>
    VwRowDefinition(
      fieldDefinitionList: (json['fieldDefinitionList'] as List<dynamic>)
          .map((e) => VwFieldDefinition.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VwRowDefinitionToJson(VwRowDefinition instance) =>
    <String, dynamic>{
      'fieldDefinitionList': instance.fieldDefinitionList,
    };
