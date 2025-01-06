// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwnumbertextinputformatter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwNumberTextInputFormatter _$VwNumberTextInputFormatterFromJson(
        Map<String, dynamic> json) =>
    VwNumberTextInputFormatter(
      integerDigits: (json['integerDigits'] as num?)?.toInt() ?? 15,
      decimalDigits: (json['decimalDigits'] as num?)?.toInt() ?? 2,
      maxValue: json['maxValue'] as String? ?? '100000000000',
      decimalSeparator: json['decimalSeparator'] as String? ?? ',',
      groupDigits: (json['groupDigits'] as num?)?.toInt() ?? 3,
      groupSeparator: json['groupSeparator'] as String? ?? '.',
      allowNegative: json['allowNegative'] as bool? ?? false,
      overrideDecimalPoint: json['overrideDecimalPoint'] as bool? ?? true,
      insertDecimalPoint: json['insertDecimalPoint'] as bool? ?? false,
      insertDecimalDigits: json['insertDecimalDigits'] as bool? ?? true,
    );

Map<String, dynamic> _$VwNumberTextInputFormatterToJson(
        VwNumberTextInputFormatter instance) =>
    <String, dynamic>{
      'integerDigits': instance.integerDigits,
      'decimalDigits': instance.decimalDigits,
      'maxValue': instance.maxValue,
      'decimalSeparator': instance.decimalSeparator,
      'groupDigits': instance.groupDigits,
      'groupSeparator': instance.groupSeparator,
      'allowNegative': instance.allowNegative,
      'overrideDecimalPoint': instance.overrideDecimalPoint,
      'insertDecimalPoint': instance.insertDecimalPoint,
      'insertDecimalDigits': instance.insertDecimalDigits,
    };
