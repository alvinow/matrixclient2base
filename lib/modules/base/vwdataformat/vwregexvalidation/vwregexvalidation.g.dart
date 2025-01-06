// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwregexvalidation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwRegexValidation _$VwRegexValidationFromJson(Map<String, dynamic> json) =>
    VwRegexValidation(
      name: json['name'] as String,
      validationDescription: json['validationDescription'] as String,
      regex: json['regex'] as String,
    );

Map<String, dynamic> _$VwRegexValidationToJson(VwRegexValidation instance) =>
    <String, dynamic>{
      'name': instance.name,
      'validationDescription': instance.validationDescription,
      'regex': instance.regex,
    };
