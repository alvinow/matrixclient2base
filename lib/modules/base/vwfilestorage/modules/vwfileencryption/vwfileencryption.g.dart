// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwfileencryption.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwFileEncryption _$VwFileEncryptionFromJson(Map<String, dynamic> json) =>
    VwFileEncryption(
      encryptionMethod: json['encryptionMethod'] as String,
      encryptionKey: json['encryptionKey'] as String,
      encryptionHashSecret: json['encryptionHashSecret'] as String?,
      encryptionIV: json['encryptionIV'] as String?,
      encryptionSalt: json['encryptionSalt'] as String?,
      encryptedFileMd5: json['encryptedFileMd5'] as String,
    );

Map<String, dynamic> _$VwFileEncryptionToJson(VwFileEncryption instance) =>
    <String, dynamic>{
      'encryptionMethod': instance.encryptionMethod,
      'encryptionKey': instance.encryptionKey,
      'encryptionHashSecret': instance.encryptionHashSecret,
      'encryptionIV': instance.encryptionIV,
      'encryptionSalt': instance.encryptionSalt,
      'encryptedFileMd5': instance.encryptedFileMd5,
    };
