import 'package:matrixclient2base/modules/base/vwbasemodel/vwbasemodel.dart';
import 'package:matrixclient2base/modules/base/vwdataformat/vwdataformattimestamp/vwdataformattimestamp.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:matrixclient2base/modules/base/vwdataformat/vwrowdata/vwrowdata.dart';
import 'package:matrixclient2base/modules/base/vwlinknode/vwlinknode.dart';
import 'package:matrixclient2base/modules/base/vwnode/vwnodecontent/vwnodecontent.dart';
part 'vwusergroup.g.dart';

@JsonSerializable()
class VwUserGroup extends VwBaseModel {
  VwUserGroup(
      {required super.recordId,
      required super.timestamp,
      super.attachments,
      super.ref,
      super.collectionName,
        super.rowDataFormat,
      required this.name,
      required this.ownerUserId,
      this.description,
      this.functionalRoleId,
      this.organizationId});
  final String name;
  final String ownerUserId;
  final String? description;
  final String? functionalRoleId;
  final String? organizationId;

  factory VwUserGroup.fromJson(Map<String, dynamic> json) =>
      _$VwUserGroupFromJson(json);
  Map<String, dynamic> toJson() => _$VwUserGroupToJson(this);
}
