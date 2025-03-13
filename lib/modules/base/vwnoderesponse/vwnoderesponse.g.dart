// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwnoderesponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwNodeResponse _$VwNodeResponseFromJson(Map<String, dynamic> json) {
  try
      {
        return  VwNodeResponse(
          targetNodeId: json['targetNodeId'] as String,
          contextId: json['contextId'] as String?,
          contextTypeId: json['contextTypeId'] as String?,
        );
      }
      catch(error)
  {
    print("Error catched on VwNodeResponseFromJson(Map<String, dynamic> json) "+error.toString());
  }
  return  VwNodeResponse(
    targetNodeId: json['targetNodeId'] as String,
    contextId: json['contextId'] as String?,
    contextTypeId: json['contextTypeId'] as String?,
  );
}


Map<String, dynamic> _$VwNodeResponseToJson(VwNodeResponse instance) =>
    <String, dynamic>{
      'targetNodeId': instance.targetNodeId,
      'contextId': instance.contextId,
      'contextTypeId': instance.contextTypeId,
    };
