import 'package:matrixclient2base/modules/base/vwnode/vwnode.dart';
import 'package:json_annotation/json_annotation.dart';
part 'vwlinknoderendered.g.dart';

@JsonSerializable()
class VwLinkNodeRendered{
  VwLinkNodeRendered({
    required this.renderedDate,
    this.node
});
  final DateTime renderedDate;
  final VwNode? node;


  factory VwLinkNodeRendered.fromJson(Map<String, dynamic> json) => _$VwLinkNodeRenderedFromJson(json);
  Map<String, dynamic> toJson() => _$VwLinkNodeRenderedToJson(this);
  }