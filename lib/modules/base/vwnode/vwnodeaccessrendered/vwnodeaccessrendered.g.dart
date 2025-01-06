// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwnodeaccessrendered.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwNodeAccessRendered _$VwNodeAccessRenderedFromJson(
        Map<String, dynamic> json) =>
    VwNodeAccessRendered(
      renderedDate: DateTime.parse(json['renderedDate'] as String),
      ownerUser: json['ownerUser'] == null
          ? null
          : VwUser.fromJson(json['ownerUser'] as Map<String, dynamic>),
      ownerUserGroup: json['ownerUserGroup'] == null
          ? null
          : VwUserGroup.fromJson(
              json['ownerUserGroup'] as Map<String, dynamic>),
      nodeAccesses: (json['nodeAccesses'] as List<dynamic>?)
          ?.map((e) => VwNodeAccess.fromJson(e as Map<String, dynamic>))
          .toList(),
      renderedChildNodes: (json['renderedChildNodes'] as List<dynamic>?)
          ?.map((e) => VwNode.fromJson(e as Map<String, dynamic>))
          .toList(),
      nodeUserAccessList: (json['nodeUserAccessList'] as List<dynamic>?)
          ?.map((e) => VwNodeUserAccess.fromJson(e as Map<String, dynamic>))
          .toList(),
      nodeUserGroupAccessList: (json['nodeUserGroupAccessList']
              as List<dynamic>?)
          ?.map(
              (e) => VwNodeUserGroupAccess.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VwNodeAccessRenderedToJson(
        VwNodeAccessRendered instance) =>
    <String, dynamic>{
      'renderedDate': instance.renderedDate.toIso8601String(),
      'ownerUser': instance.ownerUser,
      'ownerUserGroup': instance.ownerUserGroup,
      'nodeAccesses': instance.nodeAccesses,
      'renderedChildNodes': instance.renderedChildNodes,
      'nodeUserAccessList': instance.nodeUserAccessList,
      'nodeUserGroupAccessList': instance.nodeUserGroupAccessList,
    };
