import 'package:json_annotation/json_annotation.dart';
import 'package:matrixclient/modules/base/vwdataformat/vwdataformattimestamp/vwdataformattimestamp.dart';
import 'package:matrixclient/modules/base/vwdataformat/vwrowdata/vwrowdata.dart';
import 'package:matrixclient/modules/base/vwlinkbasemodel/vwlinkbasemodel.dart';
import 'package:matrixclient/modules/base/vwlinknode/vwlinknode.dart';
import 'package:matrixclient/modules/base/vwnode/vwnodeaccess/vwnodeaccess.dart';
import 'package:matrixclient/modules/base/vwnode/vwnodecontent/vwnodecontent.dart';
part 'vwnodeusergroupaccess.g.dart';


@JsonSerializable()
class VwNodeUserGroupAccess extends VwNodeAccess{

  VwNodeUserGroupAccess({
    required String recordId,
    required  VwDataFormatTimestamp timestamp,
    required String nodeId,
    required String sharedByUserId,
    required this.targetUserGroupId,
    List<String>? access,
    this.targetUserGroup,
    this.sharedByUser
  }):super(recordId: recordId,timestamp: timestamp,nodeId: nodeId,sharedByUserId:sharedByUserId,access: access );


  String targetUserGroupId;
  final VwLinkNode? targetUserGroup;
  final VwLinkNode? sharedByUser;


  factory VwNodeUserGroupAccess.fromJson(Map<String, dynamic> json) =>
      _$VwNodeUserGroupAccessFromJson(json);
  Map<String, dynamic> toJson() => _$VwNodeUserGroupAccessToJson(this);
}