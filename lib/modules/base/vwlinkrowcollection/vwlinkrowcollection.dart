import 'package:matrixclient/modules/base/vwdataformat/vwrowdata/vwrowdata.dart';
import 'package:json_annotation/json_annotation.dart';
part 'vwlinkrowcollection.g.dart';

@JsonSerializable()
class VwLinkRowCollection {
  VwLinkRowCollection(
      {required this.recordId,
      required this.collectionName,
      this.rendered,
        this.cache,
      this.sync
      });

  String recordId;
  String collectionName;
  VwRowData? rendered;
  VwRowData? cache;
  VwRowData? sync;

  factory VwLinkRowCollection.fromJson(Map<String, dynamic> json) => _$VwLinkRowCollectionFromJson(json);
  Map<String, dynamic> toJson() => _$VwLinkRowCollectionToJson(this);
}
