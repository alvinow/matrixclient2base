import 'package:matrixclient2base/modules/base/vwbasemodel/vwbasemodel.dart';
import 'package:matrixclient2base/modules/base/vwdataformat/vwdataformattimestamp/vwdataformattimestamp.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:matrixclient2base/modules/base/vwdataformat/vwrowdata/vwrowdata.dart';
import 'package:matrixclient2base/modules/base/vwlinknode/vwlinknode.dart';
import 'package:matrixclient2base/modules/base/vwnode/vwnodecontent/vwnodecontent.dart';
part 'vwuser.g.dart';

@JsonSerializable()
class VwUser extends VwBaseModel {
  VwUser(
      {required super.recordId,
      required super.timestamp,
        super.indexKey,
        super.attachments,
        super.ref,
        super.collectionName,
        super.rowDataFormat,
        super.creatorUserLinkNode,
      required this.username,
        required this.mainRoleUserGroupId,
      required this.displayname,
      required this.email,
      required this.password,
      required this.userStatusId,
      required this.homeFolderNodeId,
      this.citizenId,
        this.organizationMemberId,
        required this.organizationId,
        this.prefixUserGroupDefaultNodeId,
        this.authType=VwUser.authTypeInternal,
        this.urlProfilePicture
      });

  static const String ustEnabled = "ustEnabled";
  static const  String ustDisabled = "ustDisabled";
  static const String ustBlocked = "ustBlocked";
  static const String authTypeInternal= "authTypeInternal";
  static const String authTypeGoogle= "authTypeGoogle";

  final String username;
  String mainRoleUserGroupId;
  final String displayname;
  final String email;
  final String password;
  final String userStatusId;
  final String homeFolderNodeId;
  final String? citizenId;
  final String? organizationMemberId;
  String? organizationId;
  final String? prefixUserGroupDefaultNodeId;
  final String authType;
  final String? urlProfilePicture;

  factory VwUser.fromJson(Map<String, dynamic> json) => _$VwUserFromJson(json);
  Map<String, dynamic> toJson() => _$VwUserToJson(this);
  syncFromRowData(VwRowData formResponse){
  try
      {
        this.mainRoleUserGroupId=formResponse.getFieldByName("mainRoleUserGroupId")!.valueString!;
      }
      catch(error)
    {

    }

    try
        {
          this.organizationId=formResponse.getFieldByName("organizationId")!.valueString!;
        }
        catch(error)
    {

    }


  }
}
