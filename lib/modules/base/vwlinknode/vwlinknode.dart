import 'package:matrixclient2base/modules/base/vwlinknode/modules/vwlinknoderendered/vwlinknoderendered.dart';
import 'package:matrixclient2base/modules/base/vwnode/vwcontentcontext/vwcontentcontext.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:matrixclient2base/modules/base/vwquerynoderesult/vwquerynoderesult.dart';
part 'vwlinknode.g.dart';

@JsonSerializable()
class VwLinkNode {
  VwLinkNode(
      {required this.nodeId,
      required this.nodeType,
       this.contentContext,
      this.cache,
      this.rendered,
      this.sync,
        this.enabledRenderChildrenNode=false,
        this.childrenNodeRendered
      });

  final String nodeId;
  final String nodeType;
  VwContentContext? contentContext;
  VwLinkNodeRendered? cache;
  VwLinkNodeRendered? rendered;
  VwLinkNodeRendered? sync;
  bool enabledRenderChildrenNode;
  final VwQueryNodeResult?  childrenNodeRendered;


  factory VwLinkNode.fromJson(Map<String, dynamic> json) => _$VwLinkNodeFromJson(json);
  Map<String, dynamic> toJson() => _$VwLinkNodeToJson(this);
}
