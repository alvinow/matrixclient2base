import 'package:flutter/material.dart';


class AppConfig {
  static const String appVersion = "2.30.7";

  static const Color textColor=Colors.white;
  static const Color windowColor=Colors.white;
  static const Color darkAccentColor=Colors.white;

  //static const String baseUrl= "https://api.bagkeu.dikdasmen.kemdikbud.go.id/";
  //static const String baseUrl = "https://tlhp.bdg1.net/tinjut";
  static const String baseUrl = "http://localhost:4101";
  //static const String baseUrl = "https://appkeubmnpdm.kemdikbud.go.id/tinjut";


  static const bool showStartSplashScreen=false;
  static const String filesUrlPath = "/files";
  static const String locale='id_ID';
  /*
    static const Color primaryColor=Color.fromARGB(255,37, 42, 103);
  static const String mainLogoPath="assets/image/anies_imin_mainlogo.png";
  static const String textLogoPath="assets/image/love_letter.png";
  static const String rootLogoPath="assets/image/projectamin/project_amin_logo_white.png";

   */
  static const Color primaryColor=Color.fromARGB(255,0, 0, 0);
  static const String mainLogoPath="assets/logo/logo_kemdikbud.png";
  static const String textLogoPath="assets/logo/logo_kemdikbud.png";
  static const String rootLogoPath="assets/logo/logo_kemdikbud.png";

  static const String serverAddress = "$baseUrl/graphql";
  static const String loggedInUser = "VwLoginResponse.loggedInUser";
  static const String filedocumentUrl = '$baseUrl/filedocument';
  static const String appId="edokumen";

  static const String appTitle = "SIM Tindak Lanjut Audit 2024";
  static const String copyrightText="Copyright @2024 "+appTitle+". All Right Reserved";

  static const String instagramUrl="";
  static const String youtubeUrl="";
  static const String twitterUrl="";
  static const String facebookUrl="";
  static const String tiktokUrl="";



  static const String unsyncedRecordFieldname = "unsyncedRecord";
  static const String userNotificationFolderNodeId = "user_notification_folder";
  static const String spmFolderNodeId = "spm_kemdikbud";
  static const String centerLogoMode="mlmDisabled";
  static const bool showAppLogoOnInitSplashScreen=true;
  static const bool showAppTitleOnInitSplashScreen=false;
  static const String tagLinkBaseModelFormDefinition =
      "linkBaseModelFormDefinition";
  static const String tagLinkClassEncodedJsonFormDefinition =  "linkClassEncodedJsonFormDefinition";
  static const String vwFormDefinition = "VwFormDefinition";
  static const String formDefinitionFolderNodeId =
      "206868a4-0d60-4140-b9a2-252bb1ffb7f5";
  static const String adminPauddikdasmenSpiUserGroupRecordId =
      "669080e4-227f-41bc-938b-45ea313744bd";
  static const String auditorPauddikdasmenSpiUserGroupRecordId =
      "28fd276f-2e06-41cb-b0e9-a385c18e3c34";
  static const String instagramOperatorMainRole="instagramOperator";
  static const String adminticketMainRoleUserGroupId="adminticket";
  static const String operatorticketUserGroupId="operatorticket";
  static const String appUserMainRole="appUser";
  static const String appAdminUserMainRole="appAdmin";
  static const String appGuestUserMainRole="guestAdmin";
  static const String rootMainRole="root";


  static const String userQuoraMainRole="userquora";
  static const String guestQuoraMainRole="guestquora";
  static const String entryDataOperatorUserGroupId="entrydataoperator";
  static const String entryDatAdminUserGroupId="entrydataadmin";
  static const String ppspmUserGroupId="ppspm";
  static const String ppkUserGroupId="ppk";
  static const String bppUserGroupId="bpp";
  static const String invalidUserId = "<invalid_user_id>";
  static const String rootFolderNodeId="rootfolder";
  static const String formResponseFolderNodeId="ddac1e76-429d-4235-8e5b-e2598a93bcdb";
  static const String specifiedFormSubmit="specifiedFormSubmit";
  static const String cableExtractionChartNodeId="84987631-2ed0-4f9b-a2d7-2d4c2ef052f6";
  static const String guestUserId="eac4252d-a848-4db1-9693-01bce74a91ae";
  static const String loginSessionGuestUserId="01bf4751-07d4-48ec-bee2-80a8752e31de";

//static const String loginSessionGuestUserId="d15c8fa7-e777-4660-b6ec-7dc7580264f6"; //projectamin





}


