// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwnodecontent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwNodeContent _$VwNodeContentFromJson(Map<String, dynamic> json) {
      try{
            return  VwNodeContent(
                  classEncodedJson: json['classEncodedJson'] == null
                      ? null
                      : VwClassEncodedJson.fromJson(
                      json['classEncodedJson'] as Map<String, dynamic>),
                  linkFileStorageId: json['linkFileStorageId'] as String?,
                  linkNode: json['linkNode'] == null
                      ? null
                      : VwLinkNode.fromJson(json['linkNode'] as Map<String, dynamic>),
                  renderedDate: json['renderedDate'] == null
                      ? null
                      : DateTime.parse(json['renderedDate'] as String),
                  contentContext: json['contentContext'] == null
                      ? null
                      : VwContentContext.fromJson(
                      json['contentContext'] as Map<String, dynamic>),
                  rowData: json['rowData'] == null
                      ? null
                      : VwRowData.fromJson(json['rowData'] as Map<String, dynamic>),
                  fileStorage: json['fileStorage'] == null
                      ? null
                      : VwFileStorage.fromJson(json['fileStorage'] as Map<String, dynamic>),
                  tag: json['tag'] as String?,
            );
      }
      catch(error)
      {
            print("Error catched on VwNodeContentFromJson(Map<String, dynamic> json) "+error.toString());
      }
      return  VwNodeContent(
            classEncodedJson: json['classEncodedJson'] == null
                ? null
                : VwClassEncodedJson.fromJson(
                json['classEncodedJson'] as Map<String, dynamic>),
            linkFileStorageId: json['linkFileStorageId'] as String?,

            linkNode: json['linkNode'] == null
                ? null
                : VwLinkNode.fromJson(json['linkNode'] as Map<String, dynamic>),

            renderedDate: json['renderedDate'] == null
                ? null
                : DateTime.parse(json['renderedDate'] as String),
            contentContext: json['contentContext'] == null
                ? null
                : VwContentContext.fromJson(
                json['contentContext'] as Map<String, dynamic>),
            rowData: json['rowData'] == null
                ? null
                : VwRowData.fromJson(json['rowData'] as Map<String, dynamic>),
            fileStorage: json['fileStorage'] == null
                ? null
                : VwFileStorage.fromJson(json['fileStorage'] as Map<String, dynamic>),
            tag: json['tag'] as String?,
      );
}


Map<String, dynamic> _$VwNodeContentToJson(VwNodeContent instance) =>
    <String, dynamic>{
      'classEncodedJson': instance.classEncodedJson,
      'linkFileStorageId': instance.linkFileStorageId,
      'fileStorage': instance.fileStorage,
      'linkNode': instance.linkNode,
      'renderedDate': instance.renderedDate?.toIso8601String(),
      'contentContext': instance.contentContext,
      'rowData': instance.rowData,
      'tag': instance.tag,
    };
