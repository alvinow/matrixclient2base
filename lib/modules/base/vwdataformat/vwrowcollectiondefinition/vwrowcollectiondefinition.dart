import 'package:matrixclient/modules/base/vwbasemodel/vwbasemodel.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:matrixclient/modules/base/vwdataformat/vwdataformattimestamp/vwdataformattimestamp.dart';
import 'package:matrixclient/modules/base/vwdataformat/vwrowdata/vwrowdata.dart';
import 'package:matrixclient/modules/base/vwlinkbasemodel/vwlinkbasemodel.dart';
import 'package:matrixclient/modules/base/vwlinknode/vwlinknode.dart';
import 'package:matrixclient/modules/base/vwnode/vwnodecontent/vwnodecontent.dart';
part 'vwrowcollectiondefinition.g.dart';

@JsonSerializable()
class VwRowCollectionDefinition extends VwBaseModel {
  VwRowCollectionDefinition({
    required super.recordId,
    required super.timestamp,
    required this.rowDefinitionId,
    this.defaultNodeFolderId
});
  String rowDefinitionId;
  String? defaultNodeFolderId;

  factory VwRowCollectionDefinition.fromJson(Map<String, dynamic> json) =>
      _$VwRowCollectionDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$VwRowCollectionDefinitionToJson(this);
}
