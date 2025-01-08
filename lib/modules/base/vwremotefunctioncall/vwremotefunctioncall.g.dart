// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwremotefunctioncall.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwRemoteFunctionCall _$VwRemoteFunctionCallFromJson(
        Map<String, dynamic> json) =>
    VwRemoteFunctionCall(
      remoteFunctionCallId: json['remoteFunctionCallId'] as String,
      remoteFunctionId: json['remoteFunctionId'] as String,
      token: json['token'] as String,
      parameters: (json['parameters'] as List<dynamic>)
          .map((e) => VwRowData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VwRemoteFunctionCallToJson(
        VwRemoteFunctionCall instance) =>
    <String, dynamic>{
      'remoteFunctionCallId': instance.remoteFunctionCallId,
      'remoteFunctionId': instance.remoteFunctionId,
      'token': instance.token,
      'parameters': instance.parameters,
    };
