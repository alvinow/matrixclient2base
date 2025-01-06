// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwapicalldefinition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwApiCallDefinition _$VwApiCallDefinitionFromJson(Map<String, dynamic> json) =>
    VwApiCallDefinition(
      apiCallId: json['apiCallId'] as String,
      apiCallDisplayName: json['apiCallDisplayName'] as String,
      description: json['description'] as String,
      inputRowDefinition: VwRowDefinition.fromJson(
          json['inputRowDefinition'] as Map<String, dynamic>),
      outputRowDefinition: VwRowDefinition.fromJson(
          json['outputRowDefinition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VwApiCallDefinitionToJson(
        VwApiCallDefinition instance) =>
    <String, dynamic>{
      'apiCallId': instance.apiCallId,
      'apiCallDisplayName': instance.apiCallDisplayName,
      'description': instance.description,
      'inputRowDefinition': instance.inputRowDefinition,
      'outputRowDefinition': instance.outputRowDefinition,
    };
