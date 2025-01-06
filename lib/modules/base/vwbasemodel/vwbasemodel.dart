import 'package:json_annotation/json_annotation.dart';
import 'package:matrixclient/modules/base/vwdataformat/vwdataformattimestamp/vwdataformattimestamp.dart';
import 'package:matrixclient/modules/base/vwdataformat/vwrowdata/vwrowdata.dart';
import 'package:matrixclient/modules/base/vwlinkbasemodel/vwlinkbasemodel.dart';
import 'package:matrixclient/modules/base/vwlinknode/vwlinknode.dart';
import 'package:matrixclient/modules/base/vwnode/vwnodecontent/vwnodecontent.dart';
import 'package:json_annotation/json_annotation.dart';
part 'vwbasemodel.g.dart';

@JsonSerializable()
class VwBaseModel{
  VwBaseModel({

    required this.recordId,
    this.timestamp,
    this.indexKey,
    this.ref,
    this.attachments,
    this.collectionName,
    this.crudMode=VwBaseModel.cmCreateOrUpdate,
    this.rowDataFormat,
    this.creatorUserId,
    this.ownerUserId,
    this.creatorUserLinkNode
});



  String recordId;
  VwDataFormatTimestamp? timestamp;
  Map<String,dynamic>? indexKey;
  VwLinkNode? ref;
   List<VwNodeContent>?  attachments;
  String? collectionName;
  String? crudMode;
  VwRowData? rowDataFormat;
  String? creatorUserId;
  String? ownerUserId;
  VwLinkNode? creatorUserLinkNode;


  static const String cmCreateOrUpdate = "cmCreateOrUpdate";
  static const String cmCreate = "cmCreate";
  static const String cmUpdate = "cmUpdate";
  static const String cmRead = "cmRead";
  static const String cmDelete = "cmDelete";


  factory VwBaseModel.fromJson(Map<String, dynamic> json) =>
      _$VwBaseModelFromJson(json);
  Map<String, dynamic> toJson() => _$VwBaseModelToJson(this);
}