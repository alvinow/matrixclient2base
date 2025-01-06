import 'package:flutter/cupertino.dart';
import 'package:matrixclient/modules/base/vwappinstanceparam/vwappinstanceparam.dart';
import 'package:matrixclient/modules/base/vwdataformat/vwfiedvalue/vwfieldvalue.dart';
import 'package:matrixclient/modules/base/vwlinknode/vwlinknode.dart';
import 'package:matrixclient/modules/base/vwnode/vwnode.dart';
import 'package:matrixclient/modules/vwchecklistlinknode/vwchecklistlinknode.dart';
import 'package:matrixclient/modules/vwchecklistnode/vwchecklistnode.dart';
import 'package:matrixclient/modules/vwform/vwfieldwidget/vwfieldwidget.dart';
import 'package:matrixclient/modules/vwform/vwform.dart';
import 'package:matrixclient/modules/vwform/vwformdefinition/vwformfield/vwformfield.dart';

class VwCheckListNodeFieldWidget extends StatelessWidget {
  const VwCheckListNodeFieldWidget(
      {Key? key,
        required this.field,
        this.readOnly = false,
        required this.formField,
        this.onValueChanged,
        required this.appInstanceParam,
        this.parentRef,
        required this.getFieldvalueCurrentResponseFunction})
      : super(key: key);

  final VwFieldValue field;
  final bool readOnly;
  final VwFormField formField;
  final VwFieldWidgetChanged? onValueChanged;

  final VwAppInstanceParam appInstanceParam;
  final VwLinkNode? parentRef;
  final GetCurrentFormResponseFunction getFieldvalueCurrentResponseFunction;

  void implementRefreshDataOnParentFunction(List<VwLinkNode> linkNodeList) {

  }

  void _onNodeFieldValueChanged(bool selected,VwNode node){

    this.onValueChanged!(this.field, this.field, true);
  }

  @override
  Widget build(BuildContext context) {
    if (field.valueLinkNodeList == null) {
      field.valueLinkNodeList = [];
    }

    Widget captionWidget = Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
        child: VwFieldWidget.getLabel(this.field, this.formField,
            DefaultTextStyle.of(context).style, this.readOnly));

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      captionWidget,
      Container(
          height: 240,
          child: VwCheckListNode(
              formField: this.formField,
              appInstanceParam: appInstanceParam,
              getFieldvalueCurrentResponseFunction:
              this.getFieldvalueCurrentResponseFunction,
              fieldValue: this.field,
              syncLinkNodeListToParentFunction:
              this.implementRefreshDataOnParentFunction,
              parentRef: this.parentRef,
              fieldUiParam: this.formField.fieldUiParam))
    ]);
  }
}
