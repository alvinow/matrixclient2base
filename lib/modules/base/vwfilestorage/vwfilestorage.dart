import 'package:matrixclient/modules/base/vwbasemodel/vwbasemodel.dart';
import 'package:matrixclient/modules/base/vwdataformat/vwdataformattimestamp/vwdataformattimestamp.dart';
import 'package:matrixclient/modules/base/vwdataformat/vwrowdata/vwrowdata.dart';
import 'package:matrixclient/modules/base/vwencodedfile/vwencodedfile.dart';
import 'package:matrixclient/modules/base/vwfilestorage/modules/vwfileencryption/vwfileencryption.dart';
import 'package:matrixclient/modules/base/vwfilestorage/modules/vwfilelocalstorage/vwfilelocalstorage.dart';
import 'package:matrixclient/modules/base/vwlinkbasemodel/vwlinkbasemodel.dart';
import 'package:matrixclient/modules/base/vwlinknode/vwlinknode.dart';
import 'package:matrixclient/modules/base/vwnode/vwnodecontent/vwnodecontent.dart';
import 'package:json_annotation/json_annotation.dart';
part 'vwfilestorage.g.dart';

@JsonSerializable()
class VwFileStorage extends VwBaseModel{
  VwFileStorage({

    required super.recordId,
    required super.timestamp,
    super.indexKey,
    super.ref,
    super.attachments,
    super.collectionName,

    required this.isEncrypted,
    this.fileEncryption,
    this.clientEncodedFile,
    required this.uploaderUserId,
    this.url,
    this.fileServerStorage,
    this.availableOnServer=false,
    this.availableOnClientStorage=false,
    this.availableOnClientEncodedFile=false
});


  String? url;
  bool availableOnServer;
  bool availableOnClientStorage;
  bool availableOnClientEncodedFile;
  bool isEncrypted;

  VwFileEncryption? fileEncryption;
  VwEncodedFile? clientEncodedFile;
  String uploaderUserId;
  VwFileLocalStorage? fileServerStorage;


  factory VwFileStorage.fromJson(Map<String, dynamic> json) =>
      _$VwFileStorageFromJson(json);
  Map<String, dynamic> toJson() => _$VwFileStorageToJson(this);
}