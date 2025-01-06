import 'package:json_annotation/json_annotation.dart';
import 'package:matrixclient/modules/base/vwnode/vwlinkfileurl/vwlinkfileurl.dart';
import 'package:hive/hive.dart';
part 'vwlinkfilenode.g.dart';

@HiveType(typeId: 11)
@JsonSerializable()
class VwLinkFileNode {
  VwLinkFileNode(
      {required this.linkFileNodeId,
      required this.originalFileName,
      required this.md5,
      required this.temporaryLink});

  @HiveField(0)
  String linkFileNodeId;

  @HiveField(1)
  String originalFileName;

  @HiveField(2)
  String md5;

  @HiveField(3)
  VwLinkFileUrl temporaryLink;

  factory VwLinkFileNode.fromJson(Map<String, dynamic> json) =>
      _$VwLinkFileNodeFromJson(json);
  Map<String, dynamic> toJson() => _$VwLinkFileNodeToJson(this);
}
