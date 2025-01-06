import 'dart:ui';

import 'package:flutter/material.dart';


class AppConfigBase {
  AppConfigBase(){
    this.serverAddress=  this.baseUrl+"/graphql";
    this.filedocumentUrl = this.baseUrl+'/filedocument';
    this.copyrightText="Copyright @2024 "+this.appTitle+". All Right Reserved";
  }

  String appVersion = "2.30.7";
  Color textColor=Colors.white;
  Color windowColor=Colors.white;
  Color darkAccentColor=Colors.white;
  //static const String baseUrl= "https://api.bagkeu.dikdasmen.kemdikbud.go.id/";
  //static const String baseUrl = "https://tlhp.bdg1.net/tinjut";
  String baseUrl = "http://localhost:4101";
  //static const String baseUrl = "https://appkeubmnpdm.kemdikbud.go.id/tinjut";
  bool showStartSplashScreen=false;
  String filesUrlPath = "/files";
  String locale='id_ID';

  Color primaryColor=Color.fromARGB(255,0, 0, 0);
  String mainLogoPath="assets/logo/logo_kemdikbud.png";
  String textLogoPath="assets/logo/logo_kemdikbud.png";
  String rootLogoPath="assets/logo/logo_kemdikbud.png";

  late String serverAddress ;
  late String filedocumentUrl;
  String loggedInUser = "VwLoginResponse.loggedInUser";
  String appId="edokumen";

  String appTitle = "SIM Tindak Lanjut Audit 2024";
  late String copyrightText;

  String unsyncedRecordFieldname = "unsyncedRecord";
  String userNotificationFolderNodeId = "user_notification_folder";
  String spmFolderNodeId = "spm_kemdikbud";
  String centerLogoMode="mlmDisabled";
  bool showAppLogoOnInitSplashScreen=true;
  bool showAppTitleOnInitSplashScreen=false;
  String tagLinkBaseModelFormDefinition =
      "linkBaseModelFormDefinition";
  String tagLinkClassEncodedJsonFormDefinition =  "linkClassEncodedJsonFormDefinition";
  String vwFormDefinition = "VwFormDefinition";
  String formDefinitionFolderNodeId =
      "206868a4-0d60-4140-b9a2-252bb1ffb7f5";
  String adminPauddikdasmenSpiUserGroupRecordId =
      "669080e4-227f-41bc-938b-45ea313744bd";
  String auditorPauddikdasmenSpiUserGroupRecordId =
      "28fd276f-2e06-41cb-b0e9-a385c18e3c34";
  String instagramOperatorMainRole="instagramOperator";
  String adminticketMainRoleUserGroupId="adminticket";
  String operatorticketUserGroupId="operatorticket";
  String appUserMainRole="appUser";
  String appAdminUserMainRole="appAdmin";
  String appGuestUserMainRole="guestAdmin";
  String rootMainRole="root";







  String getAppVersion(){
    return this.appVersion;
  }

  Color getTextColor(){
    return this.textColor;
  }

  Color getWindowColor(){
    return this.windowColor;
  }

  Color getDarkAccentColor(){
    return this.darkAccentColor;
  }

  String getBaseUrl(){
    return this.baseUrl;
  }

  bool getShowStartSplashScreen()
  {
    return this.showStartSplashScreen;
  }

  String getFilesUrlPath()
  {
    return this.filesUrlPath;
  }

  String getLocale(){
    return this.locale;
  }

  Color getPrimaryColor(){
    return this.primaryColor;
  }

  String getMainLogoPath(){
    return this.mainLogoPath;
  }

  String getTextLogoPath(){
    return this.textLogoPath;
  }

  String getRootLogoPath(){
    return this.rootLogoPath;
  }

  String getServerAddress(){
    return this.serverAddress;
  }

  String getFiledocumentUrl(){
    return this.filedocumentUrl;
  }

  String getLoggedInUser(){
    return loggedInUser;
  }

  String getAppId(){
    return this.appId;
  }

  String getCopyrightText(){
    return this.copyrightText;
  }

  String getAppTitle(){
    return this.appTitle;
  }

  String getUnsyncedRecordFieldname(){
    return this.unsyncedRecordFieldname;
  }
  String getUserNotificationFolderNodeId(){
    return this.userNotificationFolderNodeId;
  }
  String getSpmFolderNodeId(){
    return this.spmFolderNodeId;
  }
  String getCenterLogoMode(){
    return this.centerLogoMode;
  }
  bool getShowAppLogoOnInitSplashScreen(){
    return this.showAppLogoOnInitSplashScreen;
  }

  bool getShowAppTitleOnInitSplashScreen(){
    return this.showAppTitleOnInitSplashScreen;
  }

  String getTagLinkBaseModelFormDefinition (){
    return this.tagLinkBaseModelFormDefinition;
  }

  String getTagLinkClassEncodedJsonFormDefinition (){
    return this.tagLinkClassEncodedJsonFormDefinition;
  }

  String getVwFormDefinition (){
    return this.vwFormDefinition;
  }


  String getFormDefinitionFolderNodeId (){
    return this.formDefinitionFolderNodeId;
  }


  String getAdminPauddikdasmenSpiUserGroupRecordId (){
    return this.adminPauddikdasmenSpiUserGroupRecordId;
  }


  String getAuditorPauddikdasmenSpiUserGroupRecordId (){
    return this.auditorPauddikdasmenSpiUserGroupRecordId;
  }


  String getInstagramOperatorMainRole(){
    return this.instagramOperatorMainRole;
  }


  String getAdminticketMainRoleUserGroupId(){
    return this.adminticketMainRoleUserGroupId;
  }


  String getOperatorticketUserGroupId(){
    return this.operatorticketUserGroupId;
  }


  String getAppUserMainRole(){
    return this.appUserMainRole;

  }


  String getAppAdminUserMainRole(){
    return this.appAdminUserMainRole;
  }


  String getAppGuestUserMainRole(){
    return this.appGuestUserMainRole;
  }


  String getRootMainRole(){
    return this.rootMainRole;
  }







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


