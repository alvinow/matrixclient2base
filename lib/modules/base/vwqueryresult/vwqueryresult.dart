
import 'package:json_annotation/json_annotation.dart';
import 'package:matrixclient2base/modules/base/vwdataformat/vwfiedvalue/vwfieldvalue.dart';
import 'package:matrixclient2base/modules/base/vwdataformat/vwrowdata/vwrowdata.dart';


part 'vwqueryresult.g.dart';

@JsonSerializable()
class VwQueryResult {
  VwQueryResult(
      {required this.rows,
      this.rowCount = 0,
      this.resultCode = 100, //100:continue, 404: no response, 200: ok
      this.resultMessage});

  List<VwRowData> rows;
  int rowCount;
  int resultCode;
  String? resultMessage;

  List<VwRowData> searchValueOnField({required String fieldName,required String value}){
    List<VwRowData> returnValue=<VwRowData>[];
    for(int la=0;la<rows.length;la++)
      {
        VwRowData currentElement=this.rows.elementAt(la);

        List<VwFieldValue> fieldValueList= currentElement.getFieldBySearchString(fieldName, value);

        if(fieldValueList.length>0)
          {
            returnValue.add(currentElement);
          }
      }


    return returnValue;
  }

  factory VwQueryResult.fromJson(Map<String, dynamic> json) =>
      _$VwQueryResultFromJson(json);
  Map<String, dynamic> toJson() => _$VwQueryResultToJson(this);
}
