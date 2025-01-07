// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwupnoderowdatasearchparameter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwUpNodeRowDataSearchParameter _$VwUpNodeRowDataSearchParameterFromJson(
        Map<String, dynamic> json) =>
    VwUpNodeRowDataSearchParameter(
      loopLimit: (json['loopLimit'] as num).toInt(),
      targetCollectionName: json['targetCollectionName'] as String,
    );

Map<String, dynamic> _$VwUpNodeRowDataSearchParameterToJson(
        VwUpNodeRowDataSearchParameter instance) =>
    <String, dynamic>{
      'loopLimit': instance.loopLimit,
      'targetCollectionName': instance.targetCollectionName,
    };
