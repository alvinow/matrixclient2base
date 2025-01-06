// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwencodedfile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwEncodedFile _$VwEncodedFileFromJson(Map<String, dynamic> json) =>
    VwEncodedFile(
      recordId: json['recordId'] as String,
      timestamp: json['timestamp'] == null
          ? null
          : VwDataFormatTimestamp.fromJson(
              json['timestamp'] as Map<String, dynamic>),
      collectionName: json['collectionName'] as String?,
      indexKey: json['indexKey'] as Map<String, dynamic>?,
      fileInfo: VwFileInfo.fromJson(json['fileInfo'] as Map<String, dynamic>),
      fileSource:
          VwFileSource.fromJson(json['fileSource'] as Map<String, dynamic>),
      isEncrypted: json['isEncrypted'] as bool,
      fileDataEncodedBase64: json['fileDataEncodedBase64'] as String?,
      fileEncryption: json['fileEncryption'] == null
          ? null
          : VwFileEncryption.fromJson(
              json['fileEncryption'] as Map<String, dynamic>),
    )
      ..ref = json['ref'] == null
          ? null
          : VwLinkNode.fromJson(json['ref'] as Map<String, dynamic>)
      ..attachments = (json['attachments'] as List<dynamic>?)
          ?.map((e) => VwNodeContent.fromJson(e as Map<String, dynamic>))
          .toList()
      ..crudMode = json['crudMode'] as String?
      ..rowDataFormat = json['rowDataFormat'] == null
          ? null
          : VwRowData.fromJson(json['rowDataFormat'] as Map<String, dynamic>)
      ..creatorUserId = json['creatorUserId'] as String?
      ..ownerUserId = json['ownerUserId'] as String?
      ..creatorUserLinkNode = json['creatorUserLinkNode'] == null
          ? null
          : VwLinkNode.fromJson(
              json['creatorUserLinkNode'] as Map<String, dynamic>);

Map<String, dynamic> _$VwEncodedFileToJson(VwEncodedFile instance) =>
    <String, dynamic>{
      'recordId': instance.recordId,
      'timestamp': instance.timestamp,
      'indexKey': instance.indexKey,
      'ref': instance.ref,
      'attachments': instance.attachments,
      'collectionName': instance.collectionName,
      'crudMode': instance.crudMode,
      'rowDataFormat': instance.rowDataFormat,
      'creatorUserId': instance.creatorUserId,
      'ownerUserId': instance.ownerUserId,
      'creatorUserLinkNode': instance.creatorUserLinkNode,
      'fileInfo': instance.fileInfo,
      'fileSource': instance.fileSource,
      'isEncrypted': instance.isEncrypted,
      'fileDataEncodedBase64': instance.fileDataEncodedBase64,
      'fileEncryption': instance.fileEncryption,
    };
