import 'package:matrixclient2base/modules/base/vwbasemodel/vwbasemodel.dart';
import 'package:matrixclient2base/modules/base/vwdataformat/vwdataformattimestamp/vwdataformattimestamp.dart';
import 'package:matrixclient2base/modules/base/vwdataformat/vwrowdata/vwrowdata.dart';
import 'package:matrixclient2base/modules/base/vwfilestorage/modules/vwfileencryption/vwfileencryption.dart';
import 'package:matrixclient2base/modules/base/vwfilestorage/modules/vwfileinfo/vwfileinfo.dart';
import 'package:matrixclient2base/modules/base/vwfilestorage/modules/vwfilesource/vwfilesource.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:matrixclient2base/modules/base/vwlinkbasemodel/vwlinkbasemodel.dart';
import 'package:matrixclient2base/modules/base/vwlinknode/vwlinknode.dart';
import 'package:matrixclient2base/modules/base/vwnode/vwnodecontent/vwnodecontent.dart';
import 'package:json_annotation/json_annotation.dart';
part 'vwencodedfile.g.dart';

@JsonSerializable()
class VwEncodedFile extends VwBaseModel{
  VwEncodedFile({
    required super.recordId,
    required super.timestamp,
    super.collectionName,
    super.indexKey,
    required this.fileInfo,
    required this.fileSource,
    required this.isEncrypted,
    this.fileDataEncodedBase64,
    this.fileEncryption
});


  VwFileInfo fileInfo;
  VwFileSource fileSource;
  bool isEncrypted;
  String? fileDataEncodedBase64;
  VwFileEncryption ? fileEncryption;

  factory VwEncodedFile.fromJson(Map<String, dynamic> json) => _$VwEncodedFileFromJson(json);
  Map<String, dynamic> toJson() => _$VwEncodedFileToJson(this);
}
