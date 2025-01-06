import 'package:matrixclient/modules/base/vwbasemodel/vwbasemodel.dart';
import 'package:matrixclient/modules/base/vwdataformat/vwdataformattimestamp/vwdataformattimestamp.dart';
import 'package:matrixclient/modules/base/vwdataformat/vwfiedvalue/vwfieldvalue.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:matrixclient/modules/base/vwlinknode/vwlinknode.dart';
import 'package:matrixclient/modules/base/vwnode/vwnodecontent/vwnodecontent.dart';
import 'package:matrixclient/modules/base/vwnoderesponse/vwnoderesponse.dart';
part 'vwrowdata.g.dart';

@JsonSerializable()
class VwRowData extends VwBaseModel {
  VwRowData(
      {required super.recordId,
      super.collectionName,
      super.indexKey,
      super.timestamp,
      super.attachments,
      super.ref,
      super.crudMode,
      super.rowDataFormat,
      super.creatorUserLinkNode,
      super.creatorUserId,
      super.ownerUserId,
      this.fields,
      this.formDefinitionId,
      this.formDefinitionLinkNode,
      this.cmReadFormDefinitionId,
      this.cmReadFormDefinitionLinkNode,
      this.rowDefinitionId,
      this.responseInfo,
      this.syncFormResponseList,
        this.parentNodeId,
      this.renderedFormResponseList,
      this.indexFieldProperties
      }) {
    if (this.fields == null) {
      this.fields = [];
    }
  }

  List<VwFieldValue>? fields;
  String? formDefinitionId;
  String? cmReadFormDefinitionId;
  VwLinkNode? formDefinitionLinkNode;
  VwLinkNode? cmReadFormDefinitionLinkNode;
  String? rowDefinitionId;
  VwNodeResponse? responseInfo;
  List<VwRowData>? syncFormResponseList;
  List<VwRowData>? renderedFormResponseList;
  String? parentNodeId;
  Map<String,dynamic>? indexFieldProperties;

  int getFieldIndexByName(String fieldName) {
    int returnValue = -1;

    if (fieldName.length > 0 && this.fields != null) {
      for (int la = 0; la < this.fields!.length; la++) {
        VwFieldValue currentElement = this.fields!.elementAt(la);

        if (currentElement.fieldName == fieldName) {
          returnValue = la;
          break;
        }
      }
    }

    return returnValue;
  }

  int getNumberIntegerValueByFieldName(
      {required String fieldName, required int defaultValue}) {
    int returnValue = defaultValue;
    try {
      returnValue = this.getFieldByName(fieldName)!.valueNumber!.toInt();
    } catch (error) {}

    return returnValue;
  }

  double getNumberDoubleValueByFieldName(
      {required String fieldName, required double defaultValue}) {
    double returnValue = defaultValue;
    try {
      returnValue = this.getFieldByName(fieldName)!.valueNumber!;
    } catch (error) {}
    return returnValue;
  }

  VwFieldValue getOrCreateFieldByName(
      {required String fieldName,
      String valueTypeId = VwFieldValue.vatString}) {
    VwFieldValue returnValue =
        VwFieldValue(fieldName: fieldName, valueTypeId: valueTypeId);
    try {
      VwFieldValue? tempFieldValue = this.getFieldByName(fieldName);

      if (tempFieldValue == null) {
        if (this.fields == null) {
          this.fields = [];
        }
        this.fields!.add(returnValue);
      } else {
        returnValue = tempFieldValue;
      }
    } catch (error) {}

    return returnValue;
  }

  VwFieldValue? getFieldByName(String fieldName) {
    VwFieldValue? returnValue;
    if (fieldName.length > 0 && this.fields != null) {
      for (int la = 0; la < this.fields!.length; la++) {
        VwFieldValue currentElement = this.fields!.elementAt(la);

        if (currentElement.fieldName == fieldName) {
          returnValue = currentElement;
          break;
        }
      }
    }
    return returnValue;
  }

  VwFieldValue getFieldByNameOrDefaultFieldValue({required String fieldName, required  VwFieldValue defaultValue }) {
    VwFieldValue? returnValue;

    returnValue=this.getFieldByName(fieldName);

    if(returnValue==null)
      {
        returnValue=defaultValue;
      }

    return returnValue;
  }

  List<VwFieldValue> getFieldBySearchString(String fieldName, String value) {
    List<VwFieldValue> returnValue = <VwFieldValue>[];

    if (this.fields != null) {
      for (int la = 0; la < this.fields!.length; la++) {
        VwFieldValue currentField = this.fields!.elementAt(la);
        if (currentField.fieldName == fieldName) {
          final String currentValueAsString = currentField.getValueAsString();
          if (currentValueAsString == value) {
            returnValue.add(currentField);
          }
        }
      }
    }
    return returnValue;
  }

  factory VwRowData.fromJson(Map<String, dynamic> json) =>
      _$VwRowDataFromJson(json);
  Map<String, dynamic> toJson() => _$VwRowDataToJson(this);
}
