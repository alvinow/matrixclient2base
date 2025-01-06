// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwfielddefinition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwFieldDefinition _$VwFieldDefinitionFromJson(Map<String, dynamic> json) =>
    VwFieldDefinition(
      fieldName: json['fieldName'] as String,
      valueTypeId: json['valueTypeId'] as String? ?? VwFieldValue.vatString,
      fieldConstraint: json['fieldConstraint'] == null
          ? null
          : VwFieldConstraint.fromJson(
              json['fieldConstraint'] as Map<String, dynamic>),
      refCollectionName: json['refCollectionName'] as String?,
    );

Map<String, dynamic> _$VwFieldDefinitionToJson(VwFieldDefinition instance) =>
    <String, dynamic>{
      'fieldName': instance.fieldName,
      'valueTypeId': instance.valueTypeId,
      'fieldConstraint': instance.fieldConstraint,
      'refCollectionName': instance.refCollectionName,
    };
