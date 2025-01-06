// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwlinkrowcollection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwLinkRowCollection _$VwLinkRowCollectionFromJson(Map<String, dynamic> json) =>
    VwLinkRowCollection(
      recordId: json['recordId'] as String,
      collectionName: json['collectionName'] as String,
      rendered: json['rendered'] == null
          ? null
          : VwRowData.fromJson(json['rendered'] as Map<String, dynamic>),
      cache: json['cache'] == null
          ? null
          : VwRowData.fromJson(json['cache'] as Map<String, dynamic>),
      sync: json['sync'] == null
          ? null
          : VwRowData.fromJson(json['sync'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VwLinkRowCollectionToJson(
        VwLinkRowCollection instance) =>
    <String, dynamic>{
      'recordId': instance.recordId,
      'collectionName': instance.collectionName,
      'rendered': instance.rendered,
      'cache': instance.cache,
      'sync': instance.sync,
    };
