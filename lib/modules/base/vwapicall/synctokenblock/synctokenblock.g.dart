// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'synctokenblock.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SyncTokenBlock _$SyncTokenBlockFromJson(Map<String, dynamic> json) =>
    SyncTokenBlock(
      respondedDate: DateTime.parse(json['respondedDate'] as String),
      isServerResponded: json['isServerResponded'] as bool? ?? false,
      loginSessionId: json['loginSessionId'] as String,
      tokenList:
          (json['tokenList'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$SyncTokenBlockToJson(SyncTokenBlock instance) =>
    <String, dynamic>{
      'respondedDate': instance.respondedDate.toIso8601String(),
      'isServerResponded': instance.isServerResponded,
      'loginSessionId': instance.loginSessionId,
      'tokenList': instance.tokenList,
    };
