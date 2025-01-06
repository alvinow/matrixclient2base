import 'package:json_annotation/json_annotation.dart';
import 'package:matrixclient/modules/base/vwdataformat/vwfiedvalue/vwfieldvalue.dart';
import 'package:matrixclient/modules/base/vwdataformat/vwfieldconstraint/vwfieldconstraint.dart';
part 'vwfielddefinition.g.dart';

@JsonSerializable()
class VwFieldDefinition {
  VwFieldDefinition(
      {required this.fieldName,
      this.valueTypeId = VwFieldValue.vatString,
      this.fieldConstraint ,
      this.refCollectionName
      }){
    if(this.fieldConstraint==null)
      {
        this.fieldConstraint=VwFieldConstraint();
      }
  }

  String fieldName;
  String valueTypeId;
  VwFieldConstraint? fieldConstraint;
  String? refCollectionName;

  factory VwFieldDefinition.fromJson(Map<String, dynamic> json) =>
      _$VwFieldDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$VwFieldDefinitionToJson(this);
}
