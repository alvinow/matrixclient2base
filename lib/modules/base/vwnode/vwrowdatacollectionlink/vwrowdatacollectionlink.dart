import 'package:json_annotation/json_annotation.dart';
part 'vwrowdatacollectionlink.g.dart';

@JsonSerializable()
class VwRowDataCollectionLink{
  VwRowDataCollectionLink({
    required this.collectionName,
    required this.recordId
});

  String collectionName;
  String recordId;

  factory VwRowDataCollectionLink.fromJson(Map<String, dynamic> json) => _$VwRowDataCollectionLinkFromJson(json);
  Map<String, dynamic> toJson() => _$VwRowDataCollectionLinkToJson(this);
}