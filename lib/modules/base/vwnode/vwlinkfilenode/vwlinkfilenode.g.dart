// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwlinkfilenode.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VwLinkFileNodeAdapter extends TypeAdapter<VwLinkFileNode> {
  @override
  final int typeId = 11;

  @override
  VwLinkFileNode read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VwLinkFileNode(
      linkFileNodeId: fields[0] as String,
      originalFileName: fields[1] as String,
      md5: fields[2] as String,
      temporaryLink: fields[3] as VwLinkFileUrl,
    );
  }

  @override
  void write(BinaryWriter writer, VwLinkFileNode obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.linkFileNodeId)
      ..writeByte(1)
      ..write(obj.originalFileName)
      ..writeByte(2)
      ..write(obj.md5)
      ..writeByte(3)
      ..write(obj.temporaryLink);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VwLinkFileNodeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwLinkFileNode _$VwLinkFileNodeFromJson(Map<String, dynamic> json) {
  try
      {
    return  VwLinkFileNode(
      linkFileNodeId: json['linkFileNodeId'] as String,
      originalFileName: json['originalFileName'] as String,
      md5: json['md5'] as String,
      temporaryLink:
      VwLinkFileUrl.fromJson(json['temporaryLink'] as Map<String, dynamic>),
    );
      }
      catch(error)
  {
    print("Error catched on VwLinkFileNodeFromJson(Map<String, dynamic> json) "+error.toString());
  }

  return  VwLinkFileNode(
    linkFileNodeId: json['linkFileNodeId'] as String,
    originalFileName: json['originalFileName'] as String,
    md5: json['md5'] as String,
    temporaryLink:
    VwLinkFileUrl.fromJson(json['temporaryLink'] as Map<String, dynamic>),
  );
}


Map<String, dynamic> _$VwLinkFileNodeToJson(VwLinkFileNode instance) =>
    <String, dynamic>{
      'linkFileNodeId': instance.linkFileNodeId,
      'originalFileName': instance.originalFileName,
      'md5': instance.md5,
      'temporaryLink': instance.temporaryLink,
    };
