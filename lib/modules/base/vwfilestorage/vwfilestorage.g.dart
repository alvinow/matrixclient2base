// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwfilestorage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwFileStorage _$VwFileStorageFromJson(Map<String, dynamic> json) =>
    VwFileStorage(
      recordId: json['recordId'] as String,
      timestamp: json['timestamp'] == null
          ? null
          : VwDataFormatTimestamp.fromJson(
              json['timestamp'] as Map<String, dynamic>),
      indexKey: json['indexKey'] as Map<String, dynamic>?,
      ref: json['ref'] == null
          ? null
          : VwLinkNode.fromJson(json['ref'] as Map<String, dynamic>),
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map((e) => VwNodeContent.fromJson(e as Map<String, dynamic>))
          .toList(),
      collectionName: json['collectionName'] as String?,
      isEncrypted: json['isEncrypted'] as bool,
      fileEncryption: json['fileEncryption'] == null
          ? null
          : VwFileEncryption.fromJson(
              json['fileEncryption'] as Map<String, dynamic>),
      clientEncodedFile: json['clientEncodedFile'] == null
          ? null
          : VwEncodedFile.fromJson(
              json['clientEncodedFile'] as Map<String, dynamic>),
      uploaderUserId: json['uploaderUserId'] as String,
      url: json['url'] as String?,
      fileServerStorage: json['fileServerStorage'] == null
          ? null
          : VwFileLocalStorage.fromJson(
              json['fileServerStorage'] as Map<String, dynamic>),
      availableOnServer: json['availableOnServer'] as bool? ?? false,
      availableOnClientStorage:
          json['availableOnClientStorage'] as bool? ?? false,
      availableOnClientEncodedFile:
          json['availableOnClientEncodedFile'] as bool? ?? false,
    )
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

Map<String, dynamic> _$VwFileStorageToJson(VwFileStorage instance) =>
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
      'url': instance.url,
      'availableOnServer': instance.availableOnServer,
      'availableOnClientStorage': instance.availableOnClientStorage,
      'availableOnClientEncodedFile': instance.availableOnClientEncodedFile,
      'isEncrypted': instance.isEncrypted,
      'fileEncryption': instance.fileEncryption,
      'clientEncodedFile': instance.clientEncodedFile,
      'uploaderUserId': instance.uploaderUserId,
      'fileServerStorage': instance.fileServerStorage,
    };
