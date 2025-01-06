import 'package:json_annotation/json_annotation.dart';
import 'package:matrixclient2base/modules/base/vwdataformat/vwdataformattimestamp/vwdataformattimestamp.dart';
import 'package:matrixclient2base/modules/base/vwdataformat/vwrowdata/vwrowdata.dart';
import 'package:matrixclient2base/modules/base/vwlinknode/vwlinknode.dart';
import 'package:matrixclient2base/modules/base/vwnode/vwnodeaccess/vwnodeaccess.dart';
import 'package:matrixclient2base/modules/base/vwnode/vwnodecontent/vwnodecontent.dart';


part 'vwnodeuseraccess.g.dart';

@JsonSerializable()
class VwNodeUserAccess extends VwNodeAccess{

  VwNodeUserAccess({
    required String recordId,
    required  VwDataFormatTimestamp timestamp,
    required String nodeId,
    required String sharedByUserId,
    required this.targetUserId,
    List<String>? access
}):super(recordId: recordId,timestamp: timestamp,nodeId: nodeId,sharedByUserId:sharedByUserId,access: access );


  String targetUserId;



  factory VwNodeUserAccess.fromJson(Map<String, dynamic> json) =>
      _$VwNodeUserAccessFromJson(json);
  Map<String, dynamic> toJson() => _$VwNodeUserAccessToJson(this);
}