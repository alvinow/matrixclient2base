import 'package:json_annotation/json_annotation.dart';
part 'vwfilelocalstorage.g.dart';

@JsonSerializable()
class VwFileLocalStorage{
  VwFileLocalStorage({
    required this.path,
    required this.filename
});

  final String path;
  final String filename;

  factory VwFileLocalStorage.fromJson(Map<String, dynamic> json) => _$VwFileLocalStorageFromJson(json);
  Map<String, dynamic> toJson() => _$VwFileLocalStorageToJson(this);
}