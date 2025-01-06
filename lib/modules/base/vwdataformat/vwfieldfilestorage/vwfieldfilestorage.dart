import 'package:matrixclient2base/modules/base/vwfilestorage/vwfilestorage.dart';
import 'package:json_annotation/json_annotation.dart';
part 'vwfieldfilestorage.g.dart';

@JsonSerializable()
class VwFieldFileStorage {
  VwFieldFileStorage(
      {required this.doSyncFile, this.tagLinkNodeListFieldName, this.uploadFile, this.serverFile});

  bool doSyncFile;
  final String? tagLinkNodeListFieldName;
  List<VwFileStorage>? uploadFile;
  List<VwFileStorage>? serverFile;

  factory VwFieldFileStorage.fromJson(Map<String, dynamic> json) =>
      _$VwFieldFileStorageFromJson(json);
  Map<String, dynamic> toJson() => _$VwFieldFileStorageToJson(this);
}
