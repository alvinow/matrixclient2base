// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwapicallresponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwApiCallResponse _$VwApiCallResponseFromJson(Map<String, dynamic> json) =>
    VwApiCallResponse(
      recordId: json['recordId'] as String,
      timestamp: VwDataFormatTimestamp.fromJson(
          json['timestamp'] as Map<String, dynamic>),
      responseStatusCode: (json['responseStatusCode'] as num).toInt(),
      syncToken: json['syncToken'] as String?,
      responseType: json['responseType'] as String,
      valueResponseClassEncodedJson: json['valueResponseClassEncodedJson'] ==
              null
          ? null
          : VwClassEncodedJson.fromJson(
              json['valueResponseClassEncodedJson'] as Map<String, dynamic>),
      valueResponseRowData: json['valueResponseRowData'] == null
          ? null
          : VwRowData.fromJson(
              json['valueResponseRowData'] as Map<String, dynamic>),
      errorMessage: json['errorMessage'] as String?,
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

Map<String, dynamic> _$VwApiCallResponseToJson(VwApiCallResponse instance) =>
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
      'responseStatusCode': instance.responseStatusCode,
      'syncToken': instance.syncToken,
      'valueResponseRowData': instance.valueResponseRowData,
      'errorMessage': instance.errorMessage,
      'responseType': instance.responseType,
      'valueResponseClassEncodedJson': instance.valueResponseClassEncodedJson,
    };
