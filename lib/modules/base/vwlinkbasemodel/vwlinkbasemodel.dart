import 'package:json_annotation/json_annotation.dart';
import 'package:matrixclient2base/modules/base/vwclassencodedjson/vwclassencodedjson.dart';
part 'vwlinkbasemodel.g.dart';

@JsonSerializable()
class VwLinkBaseModel{
  VwLinkBaseModel({
    required this.collectionName,
    required this.recordId,
    this.cache,
    this.rendered,
    this.sync,
});
  final String collectionName;
  final String recordId;
   VwClassEncodedJson? rendered;
   VwClassEncodedJson? cache;
   VwClassEncodedJson? sync;

  factory VwLinkBaseModel.fromJson(Map<String, dynamic> json) => _$VwLinkBaseModelFromJson(json);
  Map<String, dynamic> toJson() => _$VwLinkBaseModelToJson(this);
}