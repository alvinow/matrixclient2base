// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwapicallrequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwApiCallRequest _$VwApiCallRequestFromJson(Map<String, dynamic> json) =>
    VwApiCallRequest(
      apiCallRequestId: json['apiCallRequestId'] as String,
      apiCallId: json['apiCallId'] as String,
      inputRow: VwRowData.fromJson(json['inputRow'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VwApiCallRequestToJson(VwApiCallRequest instance) =>
    <String, dynamic>{
      'apiCallRequestId': instance.apiCallRequestId,
      'apiCallId': instance.apiCallId,
      'inputRow': instance.inputRow,
    };
