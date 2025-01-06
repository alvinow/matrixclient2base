import 'package:json_annotation/json_annotation.dart';
part 'vwregexvalidation.g.dart';

@JsonSerializable()
class VwRegexValidation {
  VwRegexValidation({
    required this.name,
    required this.validationDescription,
    required this.regex
});
  final String name;
  final String validationDescription;
  final String regex;

  factory VwRegexValidation.fromJson(Map<String, dynamic> json) =>
      _$VwRegexValidationFromJson(json);
  Map<String, dynamic> toJson() => _$VwRegexValidationToJson(this);
  }