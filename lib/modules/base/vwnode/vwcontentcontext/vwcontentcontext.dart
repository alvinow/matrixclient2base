import 'package:matrixclient2base/modules/base/vwlinknode/vwlinknode.dart';
import 'package:json_annotation/json_annotation.dart';
part 'vwcontentcontext.g.dart';

@JsonSerializable()
class VwContentContext {
  VwContentContext({
    this.rowDefinitionId,
    this.collectionName,
    this.className,
    this.recordId,
    this.recordRef,
    this.tag
});
  final String? rowDefinitionId;
  final String? collectionName;
  final String? className;
  final String? recordId;
  final VwLinkNode? recordRef;
  final List<String>? tag;

  factory VwContentContext.fromJson(Map<String, dynamic> json) =>
      _$VwContentContextFromJson(json);
  Map<String, dynamic> toJson() => _$VwContentContextToJson(this);
}
