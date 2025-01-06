import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:matrixclient2base/modules/base/vwclassencodedjson/vwclassencodedjson.dart';
import 'package:matrixclient2base/modules/base/vwdataformat/vwfieldfilestorage/vwfieldfilestorage.dart';
import 'package:matrixclient2base/modules/base/vwdataformat/vwrowdata/vwrowdata.dart';
import 'package:matrixclient2base/modules/base/vwlinknode/vwlinknode.dart';
import 'package:matrixclient2base/modules/base/vwnode/vwnode.dart';
part 'vwfieldvalue.g.dart';

@HiveType(typeId: 51)
@JsonSerializable()
class VwFieldValue {
  VwFieldValue(
      {required this.fieldName,
      this.valueTypeId = VwFieldValue.vatString,
      this.valueString,
      this.valueNumber,
      this.valueDateTime,
      this.valueBoolean,
      this.value,
      this.valueFieldFileStorage,
      this.valueClassEncodedJson,
        this.valueRowData,
        this.valueFormResponse,
        this.valueRowDataList,
        this.valueStringList,
        this.valueFieldValueList,
        this.valueLinkNode,
        this.valueLinkNodeList,
        this.valueNodeList,
        this.syncFormResponseList,
        this.renderedFormResponseList,

});

  static const String vatNull = 'vatNull';
  static const String vatString = 'vatString';
  static const String vatNumber = 'vatNumber';
  static const String vatDateTime = 'vatDateTime';
  static const String vatDateOnly = 'vatDateOnly';
  static const String vatTimeOnly = 'vatTimeOnly';
  static const String vatBoolean = 'vatBoolean';
  static const String vatObject = 'vatObject';
  static const String vatValueFormResponseCommentOnly = 'vatValueFormResponseCommentOnly';
  static const String vatClassEncodedJson = 'vatClassEncodedJson';
  static const String vatFieldFileStorage = 'vatFieldFileStorage';
  static const String vatValueRowData = 'vatValueRowData';
  static const String vatValueFormResponse = 'vatValueFormResponse';
  static const String vatValueRowDataList = 'vatValueRowDataList';
  static const String vatValueStringList = "vatValueStringList";
  static const String vatValueFieldValueList = "vatValueFieldValueList";
  static const String vatCalculatedField = "vatCalculatedField";
  static const String vatValueFormDefinition='vatValueFormDefinition';
  static const String vatValueLinkNode="vatValueLinkNode";
  static const String vatValueLinkNodeList="vatValueLinkNodeList";
  static const String vatNodeList="vatNodeList";


  @HiveField(0)
  String fieldName;

  @HiveField(1)
  String valueTypeId;

  @HiveField(2)
  String? valueString;

  @HiveField(3)
  double? valueNumber;

  @HiveField(4)
  DateTime? valueDateTime;

  @HiveField(5)
  bool? valueBoolean;

  @HiveField(6)
  dynamic? value;

  VwClassEncodedJson? valueClassEncodedJson;
  VwFieldFileStorage? valueFieldFileStorage;
  VwRowData? valueRowData;
  VwRowData? valueFormResponse;
  List<VwRowData>? valueRowDataList;
  List<String>? valueStringList;
  List<VwFieldValue>? valueFieldValueList;
  VwLinkNode ? valueLinkNode;
  List<VwLinkNode>? valueLinkNodeList;
  List<VwNode>? valueNodeList;
  List<VwRowData>? syncFormResponseList;
  List<VwRowData>? renderedFormResponseList;




  factory VwFieldValue.clone(VwFieldValue field) {
    Map<String, dynamic> oldValueDyn = field.toJson();
    String oldValueString = json.encode(oldValueDyn);
    VwFieldValue returnValue =
        VwFieldValue.fromJson(json.decode(oldValueString));

    return returnValue;
  }

  dynamic getValue() {
    if (valueTypeId == VwFieldValue.vatNull) {
      return null;
    } else if (valueTypeId == VwFieldValue.vatString) {
      return this.valueString;
    } else if (valueTypeId == VwFieldValue.vatNumber) {
      return this.valueNumber;
    } else if (valueTypeId == VwFieldValue.vatDateTime) {
      return this.valueDateTime;
    } else if (valueTypeId == VwFieldValue.vatBoolean) {
      return this.valueBoolean;
    }  else if (valueTypeId == VwFieldValue.vatObject) {
      return this.value;
    }
  }

  String getValueAsString() {
    if (this.getValue() == null) {
      return '';
    } else if (this.valueTypeId == VwFieldValue.vatObject) {
      return jsonEncode(this.value);
    } else {
      return this.getValue().toString();
    }
  }

  void copyFrom(VwFieldValue source){

    this.valueTypeId=source.valueTypeId;
    this.value=source.value;
    this.renderedFormResponseList=source.renderedFormResponseList;
    this.syncFormResponseList=source.syncFormResponseList;
    this.valueBoolean=source.valueBoolean;
    this.valueClassEncodedJson=source.valueClassEncodedJson;
    this.valueDateTime=source.valueDateTime;
    this.valueFieldFileStorage=source.valueFieldFileStorage;
    this.valueFieldValueList=source.valueFieldValueList;
    this.valueFormResponse=source.valueFormResponse;
    this.valueLinkNode=source.valueLinkNode;
    this.valueLinkNodeList=source.valueLinkNodeList;
    this.valueNodeList=source.valueNodeList;
    this.valueNumber=source.valueNumber;
    this.valueRowData=source.valueRowData;
    this.valueRowDataList=source.valueRowDataList;
    this.valueString=source.valueString;
    this.valueStringList=source.valueStringList;

  }

  factory VwFieldValue.fromJson(Map<String, dynamic> json) =>
      _$VwFieldValueFromJson(json);
  Map<String, dynamic> toJson() => _$VwFieldValueToJson(this);
}
