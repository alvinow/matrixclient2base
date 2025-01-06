import 'package:matrixclient/modules/base/vwclassencodedjson/vwclassencodedjson.dart';
import 'package:matrixclient/modules/base/vwlinkbasemodel/vwlinkbasemodel.dart';
import 'package:matrixclient/modules/vwform/vwformdefinition/vwformdefinition.dart';
import 'package:json_annotation/json_annotation.dart';
part 'vwlinkformdefinition.g.dart';

@JsonSerializable()
class VwLinkFormDefinition  extends VwLinkBaseModel{
  VwLinkFormDefinition({
    required super.collectionName,
    required super.recordId,
    super.rendered,
    super.sync
});

  VwFormDefinition? renderedFormDefinition;

  factory VwLinkFormDefinition.fromJson(Map<String, dynamic> json) =>
      _$VwLinkFormDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$VwLinkFormDefinitionToJson(this);
}
