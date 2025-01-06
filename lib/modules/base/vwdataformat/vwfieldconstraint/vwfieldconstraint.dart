import 'package:json_annotation/json_annotation.dart';
import 'package:matrixclient/modules/base/vwdataformat/vwregexvalidation/vwregexvalidation.dart';
part 'vwfieldconstraint.g.dart';

@JsonSerializable()
class VwFieldConstraint {
   VwFieldConstraint({
    this.isMandatory = false,
    this.isAllowNull = true,
    this.maxLength,
    this.minLength=4000,
    this.minValue=-9007199254740991,
    this.maxValue=9007199254740991,
    this.regexValidation,
    //this.collectionName,

  });

  final int? maxLength;
  final int? minLength;
  final bool isMandatory;
  final bool isAllowNull;
  final double? maxValue;
  final double? minValue;
  final VwRegexValidation? regexValidation;
  //final String? collectionName;


  factory VwFieldConstraint.fromJson(Map<String, dynamic> json) =>
      _$VwFieldConstraintFromJson(json);
  Map<String, dynamic> toJson() => _$VwFieldConstraintToJson(this);
}
