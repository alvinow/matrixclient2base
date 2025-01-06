import 'package:json_annotation/json_annotation.dart';
import 'package:hive/hive.dart';
import 'package:matrixclient/modules/base/vwfilestorage/vwfilestorage.dart';
import 'package:matrixclient/modules/base/vwnode/vwnode.dart';
part 'vwclassencodedjson.g.dart';

@HiveType(typeId: 12)
@JsonSerializable()
class VwClassEncodedJson{
  VwClassEncodedJson({
    required this.instanceId,
    this.data,
    required this.className,
    this.isCompressed=false,
    this.dataCompressedBase64,
    this.compressionType,

    this.collectionName,
  this.createdOnClient,
    this.syncedToServer,
    this.pushToServerStatus,
    this.uploadFileStorageList,
    this.uploadNodeResponse,
    this.syncUseRowDataFormat=false
  });

  static const String cptGzip="cptGzip";

  @HiveField(0)
  String instanceId;

  @HiveField(1)
  Map<String,dynamic>? data;

  @HiveField(2)
  String className;

  @HiveField(3)
  DateTime? createdOnClient;

  @HiveField(4)
  DateTime? syncedToServer;

  @HiveField(5)
  int? pushToServerStatus; //3.unsync, 2.sync but network failed , 1.synced, 0:rejected by server

  @HiveField(6)
  String? collectionName;

  @HiveField(7)
  String? dataCompressedBase64;

  @HiveField(8)
  bool? isCompressed;

  @HiveField(9)
  String? compressionType;

  List<VwFileStorage>? uploadFileStorageList;

  List<VwNode>? uploadNodeResponse;

  bool? syncUseRowDataFormat;

  factory VwClassEncodedJson.fromJson(Map<String, dynamic> json) =>
      _$VwClassEncodedJsonFromJson(json);
  Map<String, dynamic> toJson() => _$VwClassEncodedJsonToJson(this);
}