// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwfielddisplayformat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwFieldDisplayFormat _$VwFieldDisplayFormatFromJson(
        Map<String, dynamic> json) =>
    VwFieldDisplayFormat(
      locale: json['locale'] as String,
      fieldFormat:
          json['fieldFormat'] as String? ?? VwFieldDisplayFormat.vsfUnformatted,
      useCustomDateFormat: json['useCustomDateFormat'] as bool? ?? false,
      customDateFormat: json['customDateFormat'] as String?,
      numberTextInputFormatter: json['numberTextInputFormatter'] == null
          ? const VwNumberTextInputFormatter()
          : VwNumberTextInputFormatter.fromJson(
              json['numberTextInputFormatter'] as Map<String, dynamic>),
      textColorHex: json['textColorHex'] as String? ?? "ff000000",
      backgroundColorHex: json['backgroundColorHex'] as String? ?? "ffffffff",
      hideOnNull: json['hideOnNull'] as bool? ?? false,
      fontSize: (json['fontSize'] as num?)?.toDouble() ?? 13,
      textAlign:
          json['textAlign'] as String? ?? VwFieldDisplayFormat.textAlignStart,
      fontStyle:
          json['fontStyle'] as String? ?? VwFieldDisplayFormat.fontStyleNormal,
      fontWeight: (json['fontWeight'] as num?)?.toDouble() ?? 400,
      prefixCaption: json['prefixCaption'] as String?,
      sufixCaption: json['sufixCaption'] as String?,
    );

Map<String, dynamic> _$VwFieldDisplayFormatToJson(
        VwFieldDisplayFormat instance) =>
    <String, dynamic>{
      'locale': instance.locale,
      'fieldFormat': instance.fieldFormat,
      'useCustomDateFormat': instance.useCustomDateFormat,
      'customDateFormat': instance.customDateFormat,
      'numberTextInputFormatter': instance.numberTextInputFormatter,
      'textColorHex': instance.textColorHex,
      'backgroundColorHex': instance.backgroundColorHex,
      'hideOnNull': instance.hideOnNull,
      'fontSize': instance.fontSize,
      'textAlign': instance.textAlign,
      'fontStyle': instance.fontStyle,
      'fontWeight': instance.fontWeight,
      'prefixCaption': instance.prefixCaption,
      'sufixCaption': instance.sufixCaption,
    };
