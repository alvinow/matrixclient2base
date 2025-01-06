import 'package:matrixclient2base/modules/base/vwnode/vwnode.dart';
import 'package:json_annotation/json_annotation.dart';
part 'vwquerynoderesult.g.dart';

@JsonSerializable()

class VwQueryNodeResult {
  VwQueryNodeResult({
   required this.rows,
   required this.rowCount,
   this.resultCode=200,
    this.resultMessage
});

  List<VwNode> rows;
  int rowCount;
  int resultCode;
  String? resultMessage;

  factory VwQueryNodeResult.fromJson(Map<String, dynamic> json) => _$VwQueryNodeResultFromJson(json);
  Map<String, dynamic> toJson() => _$VwQueryNodeResultToJson(this);
}