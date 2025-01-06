// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwlinkbasemodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwLinkBaseModel _$VwLinkBaseModelFromJson(Map<String, dynamic> json) =>
    VwLinkBaseModel(
      collectionName: json['collectionName'] as String,
      recordId: json['recordId'] as String,
      cache: json['cache'] == null
          ? null
          : VwClassEncodedJson.fromJson(json['cache'] as Map<String, dynamic>),
      rendered: json['rendered'] == null
          ? null
          : VwClassEncodedJson.fromJson(
              json['rendered'] as Map<String, dynamic>),
      sync: json['sync'] == null
          ? null
          : VwClassEncodedJson.fromJson(json['sync'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VwLinkBaseModelToJson(VwLinkBaseModel instance) =>
    <String, dynamic>{
      'collectionName': instance.collectionName,
      'recordId': instance.recordId,
      'rendered': instance.rendered,
      'cache': instance.cache,
      'sync': instance.sync,
    };
