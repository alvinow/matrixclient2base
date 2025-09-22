// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwnoderesponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwNodeResponse _$VwNodeResponseFromJson(Map<String, dynamic> json) =>
    VwNodeResponse(
      targetNodeId: json['targetNodeId'] as String,
      contextId: json['contextId'] as String?,
      contextTypeId: json['contextTypeId'] as String?,
    );

Map<String, dynamic> _$VwNodeResponseToJson(VwNodeResponse instance) =>
    <String, dynamic>{
      'targetNodeId': instance.targetNodeId,
      'contextId': instance.contextId,
      'contextTypeId': instance.contextTypeId,
    };
