import 'package:json_annotation/json_annotation.dart';
part 'vwnumbertextinputformatter.g.dart';

@JsonSerializable()
class VwNumberTextInputFormatter{
  const VwNumberTextInputFormatter({
    this.integerDigits=15,
    this.decimalDigits=2,
    this.maxValue='100000000000',
    this.decimalSeparator=',',
    this.groupDigits=3,
    this.groupSeparator='.',
    this.allowNegative=false,
    this.overrideDecimalPoint=true,
    this.insertDecimalPoint=false,
    this.insertDecimalDigits=true
});

  final int? integerDigits;
  final int? decimalDigits;
  final String? maxValue;
  final String? decimalSeparator;
  final int? groupDigits;
  final String? groupSeparator;
  final bool? allowNegative;
  final bool? overrideDecimalPoint;
  final bool? insertDecimalPoint;
  final bool? insertDecimalDigits;

  factory VwNumberTextInputFormatter.fromJson(Map<String, dynamic> json) => _$VwNumberTextInputFormatterFromJson(json);
  Map<String, dynamic> toJson() => _$VwNumberTextInputFormatterToJson(this);
  }