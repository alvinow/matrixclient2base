// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwfieldconstraint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwFieldConstraint _$VwFieldConstraintFromJson(Map<String, dynamic> json) =>
    VwFieldConstraint(
      isMandatory: json['isMandatory'] as bool? ?? false,
      isAllowNull: json['isAllowNull'] as bool? ?? true,
      maxLength: (json['maxLength'] as num?)?.toInt(),
      minLength: (json['minLength'] as num?)?.toInt() ?? 4000,
      minValue: (json['minValue'] as num?)?.toDouble() ?? -9007199254740991,
      maxValue: (json['maxValue'] as num?)?.toDouble() ?? 9007199254740991,
      regexValidation: json['regexValidation'] == null
          ? null
          : VwRegexValidation.fromJson(
              json['regexValidation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VwFieldConstraintToJson(VwFieldConstraint instance) =>
    <String, dynamic>{
      'maxLength': instance.maxLength,
      'minLength': instance.minLength,
      'isMandatory': instance.isMandatory,
      'isAllowNull': instance.isAllowNull,
      'maxValue': instance.maxValue,
      'minValue': instance.minValue,
      'regexValidation': instance.regexValidation,
    };
