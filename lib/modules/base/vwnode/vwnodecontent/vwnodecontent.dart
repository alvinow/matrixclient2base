import 'package:matrixclient/modules/base/vwclassencodedjson/vwclassencodedjson.dart';
import 'package:matrixclient/modules/base/vwdataformat/vwrowdata/vwrowdata.dart';
import 'package:matrixclient/modules/base/vwfilestorage/vwfilestorage.dart';
import 'package:matrixclient/modules/base/vwlinkbasemodel/vwlinkbasemodel.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:matrixclient/modules/base/vwlinknode/vwlinknode.dart';
import 'package:matrixclient/modules/base/vwlinkrowcollection/vwlinkrowcollection.dart';
import 'package:matrixclient/modules/base/vwnode/vwcontentcontext/vwcontentcontext.dart';
import 'package:matrixclient/modules/vwform/vwformdefinition/vwformdefinition.dart';
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
    this.formDefinition,
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
  VwFormDefinition? formDefinition;
  String? tag;

  factory VwNodeContent.fromJson(Map<String, dynamic> json) =>
      _$VwNodeContentFromJson(json);
  Map<String, dynamic> toJson() => _$VwNodeContentToJson(this);
}
