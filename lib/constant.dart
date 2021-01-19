

import 'package:flutter/material.dart';

const textColorPrimary = Color(0xFF333333);
const textColorSecondary = Color(0xFF949292);
const view_color = Color(0xFFDADADA);
const colorPrimary = Color(0xFF3B8BEA);
const colorPrimary_light = Color(0xFFE8E8EC);

double textBoldSizeGlobal = 16;
double textPrimarySizeGlobal = 16;
double textSecondarySizeGlobal = 14;
Color textPrimaryColorGlobal = Color(0xFF2E3033);

/// Styles

// Bold Text Style
TextStyle boldTextStyle({
  int size,
  Color color,
  FontWeight weight = FontWeight.bold,
  String fontFamily,
  double letterSpacing,
  FontStyle fontStyle,
  double wordSpacing,
  TextDecoration decoration,
  TextDecorationStyle textDecorationStyle,
  TextBaseline textBaseline,
  Color decorationColor,
}) {
  return TextStyle(
    fontSize: size != null ? size.toDouble() : textBoldSizeGlobal,
    color: color ?? textPrimaryColorGlobal,
    fontWeight: weight,
    fontFamily: fontFamily,
    letterSpacing: letterSpacing,
    fontStyle: fontStyle,
    decoration: decoration,
    decorationStyle: textDecorationStyle,
    decorationColor: decorationColor,
    wordSpacing: wordSpacing,
    textBaseline: textBaseline,
  );
}

TextStyle primaryTextStyle({
  int size,
  Color color,
  FontWeight weight = FontWeight.normal,
  String fontFamily,
  double letterSpacing,
  FontStyle fontStyle,
  double wordSpacing,
  TextDecoration decoration,
  TextDecorationStyle textDecorationStyle,
  TextBaseline textBaseline,
  Color decorationColor,
}) {
  return TextStyle(
    fontSize: size != null ? size.toDouble() : textPrimarySizeGlobal,
    color: color ?? textPrimaryColorGlobal,
    fontWeight: weight,
    fontFamily: fontFamily,
    letterSpacing: letterSpacing,
    fontStyle: fontStyle,
    decoration: decoration,
    decorationStyle: textDecorationStyle,
    decorationColor: decorationColor,
    wordSpacing: wordSpacing,
    textBaseline: textBaseline,
  );
}

TextStyle secondaryTextStyle({
  int size,
  Color color,
  FontWeight weight = FontWeight.normal,
  String fontFamily,
  double letterSpacing,
  FontStyle fontStyle,
  double wordSpacing,
  TextDecoration decoration,
  TextDecorationStyle textDecorationStyle,
  TextBaseline textBaseline,
  Color decorationColor,
}) {
  return TextStyle(
    fontSize: size != null ? size.toDouble() : textSecondarySizeGlobal,
    color: color ?? Color(0xFF757575),
    fontWeight: weight,
    fontFamily: fontFamily,
    letterSpacing: letterSpacing,
    fontStyle: fontStyle,
    decoration: decoration,
    decorationStyle: textDecorationStyle,
    decorationColor: decorationColor,
    wordSpacing: wordSpacing,
    textBaseline: textBaseline,
  );
}