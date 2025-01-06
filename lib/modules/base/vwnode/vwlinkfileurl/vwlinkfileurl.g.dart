// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwlinkfileurl.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VwLinkFileUrlAdapter extends TypeAdapter<VwLinkFileUrl> {
  @override
  final int typeId = 14;

  @override
  VwLinkFileUrl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VwLinkFileUrl(
      linkFileUrlId: fields[0] as String,
      fileName: fields[1] as String,
      url: fields[2] as String,
      linkExpiredTime: fields[3] as DateTime,
      contentType: fields[4] as DateTime,
      fileSize: fields[5] as int,
      originalFileName: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, VwLinkFileUrl obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.linkFileUrlId)
      ..writeByte(1)
      ..write(obj.fileName)
      ..writeByte(2)
      ..write(obj.url)
      ..writeByte(3)
      ..write(obj.linkExpiredTime)
      ..writeByte(4)
      ..write(obj.contentType)
      ..writeByte(5)
      ..write(obj.fileSize)
      ..writeByte(6)
      ..write(obj.originalFileName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VwLinkFileUrlAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwLinkFileUrl _$VwLinkFileUrlFromJson(Map<String, dynamic> json) =>
    VwLinkFileUrl(
      linkFileUrlId: json['linkFileUrlId'] as String,
      fileName: json['fileName'] as String,
      url: json['url'] as String,
      linkExpiredTime: DateTime.parse(json['linkExpiredTime'] as String),
      contentType: DateTime.parse(json['contentType'] as String),
      fileSize: (json['fileSize'] as num).toInt(),
      originalFileName: json['originalFileName'] as String,
    );

Map<String, dynamic> _$VwLinkFileUrlToJson(VwLinkFileUrl instance) =>
    <String, dynamic>{
      'linkFileUrlId': instance.linkFileUrlId,
      'fileName': instance.fileName,
      'url': instance.url,
      'linkExpiredTime': instance.linkExpiredTime.toIso8601String(),
      'contentType': instance.contentType.toIso8601String(),
      'fileSize': instance.fileSize,
      'originalFileName': instance.originalFileName,
    };
