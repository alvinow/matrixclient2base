import 'package:matrixclient/modules/base/vwnode/vwnode.dart';
import 'package:matrixclient/modules/base/vwnode/vwnodeaccess/vwnodeaccess.dart';
import 'package:matrixclient/modules/base/vwnode/vwnodeuseraccess/vwnodeuseraccess.dart';
import 'package:matrixclient/modules/base/vwnode/vwnodeusergroupaccess/vwnodeusergroupaccess.dart';
import 'package:matrixclient/modules/base/vwuser/vwuser.dart';
import 'package:matrixclient/modules/base/vwusergroup/vwusergroup.dart';
import 'package:json_annotation/json_annotation.dart';
part 'vwnodeaccessrendered.g.dart';

@JsonSerializable()
class VwNodeAccessRendered {
  VwNodeAccessRendered(
      {required this.renderedDate,
      this.ownerUser,
      this.ownerUserGroup,
      this.nodeAccesses,
      this.renderedChildNodes,
      this.nodeUserAccessList,
      this.nodeUserGroupAccessList});
  DateTime renderedDate;
  VwUser? ownerUser;
  VwUserGroup? ownerUserGroup;
  List<VwNodeAccess>? nodeAccesses;
  List<VwNode>? renderedChildNodes;
  List<VwNodeUserAccess>? nodeUserAccessList;
  List<VwNodeUserGroupAccess>? nodeUserGroupAccessList;

  factory VwNodeAccessRendered.fromJson(Map<String, dynamic> json) =>
      _$VwNodeAccessRenderedFromJson(json);
  Map<String, dynamic> toJson() => _$VwNodeAccessRenderedToJson(this);
}
