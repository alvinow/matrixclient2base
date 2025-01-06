import 'package:matrixclient/modules/base/vwclassencodedjson/vwclassencodedjson.dart';
import 'package:matrixclient/modules/base/vwdataformat/vwrowdata/vwrowdata.dart';
import 'package:matrixclient/modules/base/vwnode/vwnode.dart';
import 'package:matrixclient/modules/vwform/vwformdefinition/vwformdefinition.dart';
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