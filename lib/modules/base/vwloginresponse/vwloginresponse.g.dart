// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwloginresponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwLoginResponse _$VwLoginResponseFromJson(Map<String, dynamic> json) =>
    VwLoginResponse(
      recordId: json['recordId'] as String,
      timestamp: VwDataFormatTimestamp.fromJson(
          json['timestamp'] as Map<String, dynamic>),
      loginStatusCode: (json['loginStatusCode'] as num).toInt(),
      loginSessionId: json['loginSessionId'] as String?,
      userInfo: json['userInfo'] == null
          ? null
          : VwUserInfo.fromJson(json['userInfo'] as Map<String, dynamic>),
      errorMessage: json['errorMessage'] as String?,
      authType: json['authType'] as String? ?? VwUser.authTypeInternal,
      idToken: json['idToken'] as String?,
      homeLinkNode: json['homeLinkNode'] == null
          ? null
          : VwLinkNode.fromJson(json['homeLinkNode'] as Map<String, dynamic>),
    )
      ..indexKey = json['indexKey'] as Map<String, dynamic>?
      ..ref = json['ref'] == null
          ? null
          : VwLinkNode.fromJson(json['ref'] as Map<String, dynamic>)
      ..attachments = (json['attachments'] as List<dynamic>?)
          ?.map((e) => VwNodeContent.fromJson(e as Map<String, dynamic>))
          .toList()
      ..collectionName = json['collectionName'] as String?
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

Map<String, dynamic> _$VwLoginResponseToJson(VwLoginResponse instance) =>
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
      'loginSessionId': instance.loginSessionId,
      'userInfo': instance.userInfo,
      'loginStatusCode': instance.loginStatusCode,
      'errorMessage': instance.errorMessage,
      'homeLinkNode': instance.homeLinkNode,
      'authType': instance.authType,
      'idToken': instance.idToken,
    };
