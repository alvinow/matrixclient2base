import 'package:json_annotation/json_annotation.dart';
import 'package:matrixclient2base/modules/base/vwbasemodel/vwbasemodel.dart';
import 'package:matrixclient2base/modules/base/vwdataformat/vwdataformattimestamp/vwdataformattimestamp.dart';
import 'package:matrixclient2base/modules/base/vwdataformat/vwrowdata/vwrowdata.dart';
import 'package:matrixclient2base/modules/base/vwlinknode/vwlinknode.dart';
import 'package:matrixclient2base/modules/base/vwnode/vwnodeaccessrendered/vwnodeaccessrendered.dart';
import 'package:matrixclient2base/modules/base/vwnode/vwnodecontent/vwnodecontent.dart';
import 'package:matrixclient2base/modules/base/vwnoderesponse/vwnoderesponse.dart';
part 'vwnode.g.dart';

@JsonSerializable()
class VwNode  extends VwBaseModel{
  String displayName;
  String? parentNodeId;
  String nodeType; //ntnFolder, ntnLinkRowRecord, ntnLinkApiCallId, ntnLinkFile

  String? ownerUserGroupId;
  String nodeStatusId;
  int accessMode; //0:strict,1:parent
  VwNodeContent content;
  String? upsyncToken;
  final String? uniqueKey;
  VwNodeAccessRendered? nodeAccessRendered;
  int? relativeDepth;
  List<String>? defaultFormDefinitionIdList;
  List<VwNode>? defaultFormDefinitionList;
  VwNodeResponse? responseInfo;
  bool? isSelected;
  String? stateKey;
  bool isAllowChildFolder;
  bool isAllowChildNodeContentRowData;
  bool isSpecificChildNodeContentRowData;
  List<String>? childNodeContentRowDataCollectionNameList;
  List<VwNode>? childNodeFormDefinitionList;
  final VwNode? nodeEditorFormDefinitionNode;


  VwNode(
      {

        required super.recordId,
        super.timestamp,
        super.indexKey,
        super.attachments,
        super.ref,
        super.collectionName,
        super.creatorUserId,
        required super.ownerUserId,
        super.creatorUserLinkNode,
        super.crudMode,
        super.rowDataFormat,
        required this.displayName,
        this.parentNodeId,
        required this.nodeType,
        this.nodeStatusId=VwNode.nsActive,
        this.accessMode=1,
        this.ownerUserGroupId,
        this.upsyncToken,
        this.uniqueKey,
        required this.content,
        this.relativeDepth,
        this.defaultFormDefinitionIdList,
        this.defaultFormDefinitionList,
        this.responseInfo,
        this.isSelected=false,
        this.stateKey,
        this.isAllowChildFolder=false,
        this.isAllowChildNodeContentRowData=false,
        this.isSpecificChildNodeContentRowData=false,
        this.childNodeContentRowDataCollectionNameList,
        this.nodeEditorFormDefinitionNode,
        this.nodeAccessRendered,
        this.childNodeFormDefinitionList


});


  static const String ntnFolder = "ntnFolder";
  static const String ntnLinkApiCallId = "ntnLinkApiCallId";
  static const String ntnFileStorage = "ntnFileStorage";
  static const String ntnClassEncodedJson = "ntnClassEncodedJson";
  static const String ntnLinkBaseModelCollection = "ntnLinkBaseModelCollection";
  static const String ntnLinkRowCollection = "ntnLinkRowCollection";
  static const String ntnRowData = "ntnRowData";
  static const String ntnFormDefinition = "ntnFormDefinition";
  static const String ntnTopNodeInsert = "ntnTopNodeInsert";
  static const String ntnFormResponse = "ntnFormResponse";



  static const String nsActive = "nsActive";
  static const String nsDeleted = "nsDeleted";
  static const String nsLocked = "nsLocked";
  static const String nsApprovalProcess = "nsApprovalProcess";

  factory VwNode.fromJson(Map<String, dynamic> json) => _$VwNodeFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$VwNodeToJson(this);
}
