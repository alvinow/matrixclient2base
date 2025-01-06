import 'package:matrixclient/modules/base/vwbasemodel/vwbasemodel.dart';
import 'package:matrixclient/modules/base/vwdataformat/vwdataformattimestamp/vwdataformattimestamp.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:matrixclient/modules/base/vwdataformat/vwrowdata/vwrowdata.dart';
import 'package:matrixclient/modules/base/vwlinkbasemodel/vwlinkbasemodel.dart';
import 'package:matrixclient/modules/base/vwlinknode/vwlinknode.dart';
import 'package:matrixclient/modules/base/vwnode/vwnodecontent/vwnodecontent.dart';

part 'vwnodeaccess.g.dart';

@JsonSerializable()
class VwNodeAccess extends VwBaseModel{
  VwNodeAccess({
    required String recordId,
    required VwDataFormatTimestamp timestamp,
    super.ownerUserId,
    required this.nodeId,
    required this.sharedByUserId,
    this.access,
    this.isActive=false
}):super(recordId: recordId,timestamp: timestamp);


  String nodeId;
  String sharedByUserId;
  List<String>? access;
  bool? isActive;


  //node
  static String accReadNode= "accReadNode";
  static String accUpdateNode= "accUpdateNode";


  //child node
  static String accCreateChildNode = "accCreateChildNode";
  static String accReadChildNode = "accReadChildNode";
  static String accUpdateChildNode = "accUpdateChildNode";

  //after create access
  static String accAfterCreateChildNodeAllowReadByCreator ="accAfterCreateChildNodeAllowReadByCreator";
  static String accAfterCreateChildNodeAllowUpdateByCreator ="accAfterCreateChildNodeAllowUpdateByCreator";
  static String accAfterCreateChildNodeAllowReadByMainRoleUserGroup ="accAfterCreateChildNodeAllowReadByMainRoleUserGroup";



  //ownership
  static String accTakeNodeOwnership = "accTakeNodeOwnership";
  static String accTakeChildNodeOwnership = "accTakeChildNodeOwnership";
  static String accOwnedCreatedNode = "accOwnedCreatedNode";
  static String accOwnedCreatedChildNode = "accOwnedCreatedChildNode";

  //share
  static String accShareReadNodeAccess = "accShareReadNodeAccess";
  static String accShareUpdateNodeAccess = "accShareUpdateNodeAccess";

  factory VwNodeAccess.fromJson(Map<String, dynamic> json) =>
      _$VwNodeAccessFromJson(json);
  Map<String, dynamic> toJson() => _$VwNodeAccessToJson(this);

}