import 'package:matrixclient/modules/base/vwbasemodel/vwbasemodel.dart';
import 'package:matrixclient/modules/base/vwdataformat/vwdataformattimestamp/vwdataformattimestamp.dart';
import 'package:matrixclient/modules/base/vwdataformat/vwrowdata/vwrowdata.dart';
import 'package:matrixclient/modules/base/vwlinkbasemodel/vwlinkbasemodel.dart';
import 'package:matrixclient/modules/base/vwlinknode/vwlinknode.dart';
import 'package:matrixclient/modules/base/vwnode/vwnode.dart';
import 'package:matrixclient/modules/base/vwnode/vwnodecontent/vwnodecontent.dart';
import 'package:matrixclient/modules/base/vwuser/vwuser.dart';
import 'package:matrixclient/modules/base/vwusergroupmember/vwusergroupmember.dart';
import 'package:json_annotation/json_annotation.dart';
part 'vwrenderednodepackage.g.dart';


@JsonSerializable()
class VwRenderedNodePackage extends VwBaseModel {
  VwRenderedNodePackage(
      {required super.recordId,
      required super.timestamp,
      this.rootNode,
        this.parentArticleNode,
      this.renderedNodeList,
      this.user,
      this.userGroupMember});

  final VwNode? rootNode;
  final VwNode? parentArticleNode;
  List<VwNode>? renderedNodeList;
  final VwUser? user;
  List<VwUserGroupMember>? userGroupMember;

  factory VwRenderedNodePackage.fromJson(Map<String, dynamic> json) =>
      _$VwRenderedNodePackageFromJson(json);
  Map<String, dynamic> toJson() => _$VwRenderedNodePackageToJson(this);
}
