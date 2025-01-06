import 'package:matrixclient2base/modules/base/vwclassencodedjson/vwclassencodedjson.dart';
import 'package:matrixclient2base/modules/base/vwdataformat/vwrowdata/vwrowdata.dart';
import 'package:matrixclient2base/modules/base/vwfilestorage/vwfilestorage.dart';
import 'package:matrixclient2base/modules/base/vwlinkbasemodel/vwlinkbasemodel.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:matrixclient2base/modules/base/vwlinknode/vwlinknode.dart';
import 'package:matrixclient2base/modules/base/vwlinkrowcollection/vwlinkrowcollection.dart';
import 'package:matrixclient2base/modules/base/vwnode/vwcontentcontext/vwcontentcontext.dart';
part 'vwnodecontent.g.dart';

@JsonSerializable()
class VwNodeContent {
  VwNodeContent({
    this.classEncodedJson,
    this.linkFileStorageId,
    this.linkbasemodel,
    this.linkNode,
    this.linkRowCollection,
    this.renderedDate,
    this.contentContext,
    this.rowData,
    this.fileStorage,
    this.tag,
  });

  VwClassEncodedJson? classEncodedJson;
  String? linkFileStorageId;
  VwFileStorage? fileStorage;
  VwLinkNode? linkNode;
  VwLinkBaseModel? linkbasemodel;
  VwLinkRowCollection? linkRowCollection;
  DateTime? renderedDate;
  VwContentContext? contentContext;
  VwRowData? rowData;
  String? tag;

  factory VwNodeContent.fromJson(Map<String, dynamic> json) =>
      _$VwNodeContentFromJson(json);
  Map<String, dynamic> toJson() => _$VwNodeContentToJson(this);
}
