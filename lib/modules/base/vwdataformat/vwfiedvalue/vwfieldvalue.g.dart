// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwfieldvalue.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VwFieldValueAdapter extends TypeAdapter<VwFieldValue> {
  @override
  final int typeId = 51;

  @override
  VwFieldValue read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VwFieldValue(
      fieldName: fields[0] as String,
      valueTypeId: fields[1] as String,
      valueString: fields[2] as String?,
      valueNumber: fields[3] as double?,
      valueDateTime: fields[4] as DateTime?,
      valueBoolean: fields[5] as bool?,
      value: fields[6] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, VwFieldValue obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.fieldName)
      ..writeByte(1)
      ..write(obj.valueTypeId)
      ..writeByte(2)
      ..write(obj.valueString)
      ..writeByte(3)
      ..write(obj.valueNumber)
      ..writeByte(4)
      ..write(obj.valueDateTime)
      ..writeByte(5)
      ..write(obj.valueBoolean)
      ..writeByte(6)
      ..write(obj.value);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VwFieldValueAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwFieldValue _$VwFieldValueFromJson(Map<String, dynamic> json) {

  try
  {
    VwFieldValue(
      fieldName: json['fieldName'] as String,
      valueTypeId: json['valueTypeId'] as String? ?? VwFieldValue.vatString,
      valueString: json['valueString'] as String?,
      valueNumber: (json['valueNumber'] as num?)?.toDouble(),
      valueDateTime: json['valueDateTime'] == null
          ? null
          : DateTime.parse(json['valueDateTime'] as String),
      valueBoolean: json['valueBoolean'] as bool?,
      value: json['value'],
      valueFieldFileStorage: json['valueFieldFileStorage'] == null
          ? null
          : VwFieldFileStorage.fromJson(
          json['valueFieldFileStorage'] as Map<String, dynamic>),
      valueClassEncodedJson: json['valueClassEncodedJson'] == null
          ? null
          : VwClassEncodedJson.fromJson(
          json['valueClassEncodedJson'] as Map<String, dynamic>),
      valueRowData: json['valueRowData'] == null
          ? null
          : VwRowData.fromJson(json['valueRowData'] as Map<String, dynamic>),
      valueFormResponse: json['valueFormResponse'] == null
          ? null
          : VwRowData.fromJson(
          json['valueFormResponse'] as Map<String, dynamic>),
      valueRowDataList: (json['valueRowDataList'] as List<dynamic>?)
          ?.map((e) => VwRowData.fromJson(e as Map<String, dynamic>))
          .toList(),
      valueStringList: (json['valueStringList'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      valueFieldValueList: (json['valueFieldValueList'] as List<dynamic>?)
          ?.map((e) => VwFieldValue.fromJson(e as Map<String, dynamic>))
          .toList(),
      valueLinkNode: json['valueLinkNode'] == null
          ? null
          : VwLinkNode.fromJson(json['valueLinkNode'] as Map<String, dynamic>),
      valueLinkNodeList: (json['valueLinkNodeList'] as List<dynamic>?)
          ?.map((e) => VwLinkNode.fromJson(e as Map<String, dynamic>))
          .toList(),
      valueNodeList: (json['valueNodeList'] as List<dynamic>?)
          ?.map((e) => VwNode.fromJson(e as Map<String, dynamic>))
          .toList(),
      syncFormResponseList: (json['syncFormResponseList'] as List<dynamic>?)
          ?.map((e) => VwRowData.fromJson(e as Map<String, dynamic>))
          .toList(),
      renderedFormResponseList:
      (json['renderedFormResponseList'] as List<dynamic>?)
          ?.map((e) => VwRowData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
  catch(error)
  {
  print("Error catched on _VwFieldValueFromJson: "+error.toString());
  }

  return VwFieldValue(
    fieldName: json['fieldName'] as String,
    valueTypeId: json['valueTypeId'] as String? ?? VwFieldValue.vatString,
    valueString: json['valueString'] as String?,
    valueNumber: (json['valueNumber'] as num?)?.toDouble(),
    valueDateTime: json['valueDateTime'] == null
        ? null
        : DateTime.parse(json['valueDateTime'] as String),
    valueBoolean: json['valueBoolean'] as bool?,
    value: json['value'],
    valueFieldFileStorage: json['valueFieldFileStorage'] == null
        ? null
        : VwFieldFileStorage.fromJson(
        json['valueFieldFileStorage'] as Map<String, dynamic>),
    valueClassEncodedJson: json['valueClassEncodedJson'] == null
        ? null
        : VwClassEncodedJson.fromJson(
        json['valueClassEncodedJson'] as Map<String, dynamic>),
    valueRowData: json['valueRowData'] == null
        ? null
        : VwRowData.fromJson(json['valueRowData'] as Map<String, dynamic>),
    valueFormResponse: json['valueFormResponse'] == null
        ? null
        : VwRowData.fromJson(
        json['valueFormResponse'] as Map<String, dynamic>),
    valueRowDataList: (json['valueRowDataList'] as List<dynamic>?)
        ?.map((e) => VwRowData.fromJson(e as Map<String, dynamic>))
        .toList(),
    valueStringList: (json['valueStringList'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    valueFieldValueList: (json['valueFieldValueList'] as List<dynamic>?)
        ?.map((e) => VwFieldValue.fromJson(e as Map<String, dynamic>))
        .toList(),
    valueLinkNode: json['valueLinkNode'] == null
        ? null
        : VwLinkNode.fromJson(json['valueLinkNode'] as Map<String, dynamic>),
    valueLinkNodeList: (json['valueLinkNodeList'] as List<dynamic>?)
        ?.map((e) => VwLinkNode.fromJson(e as Map<String, dynamic>))
        .toList(),
    valueNodeList: (json['valueNodeList'] as List<dynamic>?)
        ?.map((e) => VwNode.fromJson(e as Map<String, dynamic>))
        .toList(),
    syncFormResponseList: (json['syncFormResponseList'] as List<dynamic>?)
        ?.map((e) => VwRowData.fromJson(e as Map<String, dynamic>))
        .toList(),
    renderedFormResponseList:
    (json['renderedFormResponseList'] as List<dynamic>?)
        ?.map((e) => VwRowData.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$VwFieldValueToJson(VwFieldValue instance) =>
    <String, dynamic>{
      'fieldName': instance.fieldName,
      'valueTypeId': instance.valueTypeId,
      'valueString': instance.valueString,
      'valueNumber': instance.valueNumber,
      'valueDateTime': instance.valueDateTime?.toIso8601String(),
      'valueBoolean': instance.valueBoolean,
      'value': instance.value,
      'valueClassEncodedJson': instance.valueClassEncodedJson,
      'valueFieldFileStorage': instance.valueFieldFileStorage,
      'valueRowData': instance.valueRowData,
      'valueFormResponse': instance.valueFormResponse,
      'valueRowDataList': instance.valueRowDataList,
      'valueStringList': instance.valueStringList,
      'valueFieldValueList': instance.valueFieldValueList,
      'valueLinkNode': instance.valueLinkNode,
      'valueLinkNodeList': instance.valueLinkNodeList,
      'valueNodeList': instance.valueNodeList,
      'syncFormResponseList': instance.syncFormResponseList,
      'renderedFormResponseList': instance.renderedFormResponseList,
    };
