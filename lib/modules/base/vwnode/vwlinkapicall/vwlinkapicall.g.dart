// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwlinkapicall.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VwLinkApiCallAdapter extends TypeAdapter<VwLinkApiCall> {
  @override
  final int typeId = 15;

  @override
  VwLinkApiCall read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VwLinkApiCall(
      apiCallId: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, VwLinkApiCall obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.apiCallId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VwLinkApiCallAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwLinkApiCall _$VwLinkApiCallFromJson(Map<String, dynamic> json) =>
    VwLinkApiCall(
      apiCallId: json['apiCallId'] as String,
    );

Map<String, dynamic> _$VwLinkApiCallToJson(VwLinkApiCall instance) =>
    <String, dynamic>{
      'apiCallId': instance.apiCallId,
    };
