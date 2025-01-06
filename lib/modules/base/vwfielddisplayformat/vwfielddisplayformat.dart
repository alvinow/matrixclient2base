import 'dart:ui';

import 'package:flutter/painting.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:matrixclient2base/appconfig.dart';
import 'package:matrixclient2base/modules/base/vwnumbertextinputformatter/vwnumbertextinputformatter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'vwfielddisplayformat.g.dart';


@JsonSerializable()
class VwFieldDisplayFormat {
  const VwFieldDisplayFormat(
      {this.locale = AppConfig.locale,
      this.fieldFormat = VwFieldDisplayFormat.vsfUnformatted,
      this.useCustomDateFormat = false,
      this.customDateFormat,
      this.numberTextInputFormatter = const VwNumberTextInputFormatter(),
      this.textColorHex = "ff000000",
      this.backgroundColorHex = "ffffffff",
      this.hideOnNull = false,
      this.fontSize = 13,
        this.textAlign=VwFieldDisplayFormat.textAlignStart,
        this.fontStyle=VwFieldDisplayFormat.fontStyleNormal,
        this.fontWeight=400,
        this.prefixCaption,
        this.sufixCaption
      });

  final String locale;
  final String fieldFormat;
  final bool useCustomDateFormat;
  final String? customDateFormat;
  final VwNumberTextInputFormatter? numberTextInputFormatter;
  final String textColorHex;
  final String backgroundColorHex;
  final bool hideOnNull;
  final double fontSize;
  final String textAlign;
  final String fontStyle;
  final double fontWeight;
  final String? prefixCaption;
  final String? sufixCaption;


  static const String vsfUnformatted = "vsfUnformatted";
  static const String vsfNumeric = "vsfNumeric";
  static const String vsfAccounting = "vsfAccounting";
  static const String vsfCurrency = "vsfCurrency";
  static const String vsfDateTime = "vsfDateTime";
  static const String vsfShortDateTime = "vsfShortDateTime";
  static const String vsfDateOnly = "vsfDateOnly";
  static const String vsfTimeOnly = "vsfTimeOnly";
  static  const String textAlignStart = "textAlignStart";
  static  const String textAlignCenter = "textAlignCenter";
  static  const String textAlignEnd = "textAlignEnd";
  static  const String fontStyleNormal ="fontStyleNormal";
  static  const String fontStyleItalic ="fontStyleItalic";

  static FontStyle getFontStyleFromString(String fontStyle)
  {
    FontStyle returnValue=FontStyle.normal;
    try
        {
          if(fontStyle==VwFieldDisplayFormat.fontStyleItalic)
            {
              returnValue=FontStyle.italic;
            }

        }
        catch(error)
    {

    }

    return returnValue;
  }

  static FontWeight getFontWeightFromString(double fontWeight){

    FontWeight returnValue=FontWeight.w400;
    try
        {
          if(fontWeight<=100)
            {
              returnValue=FontWeight.w100;
            }
          else if(fontWeight<=200)
            {
              returnValue=FontWeight.w200;
            }
          else if(fontWeight<=300)
            {
              returnValue=FontWeight.w300;
            }
          else if(fontWeight<=400)
            {
              returnValue=FontWeight.w400;
            }
          else if(fontWeight<=500)
            {
              returnValue=FontWeight.w500;
            }
          else if(fontWeight<=600)
            {
              returnValue=FontWeight.w600;
            }
          else if(fontWeight<=700)
            {
              returnValue=FontWeight.w700;
            }
          else if(fontWeight<=800)
            {
              returnValue=FontWeight.w800;
            }
          else
            {
              returnValue=FontWeight.w900;
            }

        }
        catch(error)
    {

    }
    return returnValue;
  }

  static TextAlign getTextAlignFromString(String textAlign){
    TextAlign returnValue=TextAlign.start;
    try
        {
          if(textAlign==VwFieldDisplayFormat.textAlignCenter)
            {
              returnValue=TextAlign.center;
            }
          else if(textAlign==VwFieldDisplayFormat.textAlignEnd)
            {
              returnValue=TextAlign.end;
            }
        }
        catch(error)
    {

    }
    return returnValue;

  }


  factory VwFieldDisplayFormat.fromJson(Map<String, dynamic> json) =>
      _$VwFieldDisplayFormatFromJson(json);
  Map<String, dynamic> toJson() => _$VwFieldDisplayFormatToJson(this);
}
