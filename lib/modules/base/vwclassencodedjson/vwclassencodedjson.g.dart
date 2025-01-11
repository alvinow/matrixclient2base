// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwclassencodedjson.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VwClassEncodedJsonAdapter extends TypeAdapter<VwClassEncodedJson> {
  @override
  final int typeId = 12;

  @override
  VwClassEncodedJson read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VwClassEncodedJson(
      instanceId: fields[0] as String,
      data: (fields[1] as Map?)?.cast<String, dynamic>(),
      className: fields[2] as String,
      isCompressed: fields[8] as bool?,
      dataCompressedBase64: fields[7] as String?,
      compressionType: fields[9] as String?,
      collectionName: fields[6] as String?,
      createdOnClient: fields[3] as DateTime?,
      syncedToServer: fields[4] as DateTime?,
      pushToServerStatus: fields[5] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, VwClassEncodedJson obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.instanceId)
      ..writeByte(1)
      ..write(obj.data)
      ..writeByte(2)
      ..write(obj.className)
      ..writeByte(3)
      ..write(obj.createdOnClient)
      ..writeByte(4)
      ..write(obj.syncedToServer)
      ..writeByte(5)
      ..write(obj.pushToServerStatus)
      ..writeByte(6)
      ..write(obj.collectionName)
      ..writeByte(7)
      ..write(obj.dataCompressedBase64)
      ..writeByte(8)
      ..write(obj.isCompressed)
      ..writeByte(9)
      ..write(obj.compressionType);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VwClassEncodedJsonAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwClassEncodedJson _$VwClassEncodedJsonFromJson(Map<String, dynamic> json) =>
    VwClassEncodedJson(
      instanceId: json['instanceId'] as String,
      data: json['data'] as Map<String, dynamic>?,
      className: json['className'] as String,
      isCompressed: json['isCompressed'] as bool? ?? false,
      dataCompressedBase64: json['dataCompressedBase64'] as String?,
      compressionType: json['compressionType'] as String?,
      collectionName: json['collectionName'] as String?,
      createdOnClient: json['createdOnClient'] == null
          ? null
          : DateTime.parse(json['createdOnClient'] as String),
      syncedToServer: json['syncedToServer'] == null
          ? null
          : DateTime.parse(json['syncedToServer'] as String),
      pushToServerStatus: (json['pushToServerStatus'] as num?)?.toInt(),
      syncUseRowDataFormat: json['syncUseRowDataFormat'] as bool? ?? false,
    );

Map<String, dynamic> _$VwClassEncodedJsonToJson(VwClassEncodedJson instance) =>
    <String, dynamic>{
      'instanceId': instance.instanceId,
      'data': instance.data,
      'className': instance.className,
      'createdOnClient': instance.createdOnClient?.toIso8601String(),
      'syncedToServer': instance.syncedToServer?.toIso8601String(),
      'pushToServerStatus': instance.pushToServerStatus,
      'collectionName': instance.collectionName,
      'dataCompressedBase64': instance.dataCompressedBase64,
      'isCompressed': instance.isCompressed,
      'compressionType': instance.compressionType,
      'syncUseRowDataFormat': instance.syncUseRowDataFormat,
    };
