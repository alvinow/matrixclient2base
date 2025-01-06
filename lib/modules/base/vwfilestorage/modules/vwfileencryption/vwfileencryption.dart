import 'package:json_annotation/json_annotation.dart';
part 'vwfileencryption.g.dart';

@JsonSerializable()
class VwFileEncryption{
  VwFileEncryption({
    required this.encryptionMethod,
    required this.encryptionKey,
    this.encryptionHashSecret,
    this.encryptionIV,
    this.encryptionSalt,
    required this.encryptedFileMd5,

});

  String encryptionMethod;
  String encryptionKey;
  String? encryptionHashSecret;
  String? encryptionIV;
  String? encryptionSalt;
  String encryptedFileMd5;


  factory VwFileEncryption.fromJson(Map<String, dynamic> json) =>
      _$VwFileEncryptionFromJson(json);
  Map<String, dynamic> toJson() => _$VwFileEncryptionToJson(this);
}