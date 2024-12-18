import 'package:cafit/common/helper/color_extension.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primaryColor: AppColor.primary,
    scaffoldBackgroundColor: AppColor.white,
    fontFamily: "Quicksand",
    brightness: Brightness.light,
    // inputDecorationTheme: InputDecorationTheme(
    // filled: true,
    // fillColor: Colors.transparent,
    // contentPadding: const EdgeInsets.all(30),
    // border: OutlineInputBorder(
    // borderRadius: BorderRadius.circular(30),
    // borderSide: const BorderSide(width: 0.4, color: Colors.black)),
    // hintStyle: const TextStyle(
    // color: AppColor.hintTextFormField, fontWeight: FontWeight.w500),
    // enabledBorder: OutlineInputBorder(
    // borderRadius: BorderRadius.circular(30),
    // borderSide: const BorderSide(width: 0.4, color: Colors.black)),
    // ),
    // elevatedButtonTheme: ElevatedButtonThemeData(
    // style: ElevatedButton.styleFrom(
    // elevation: 0,
    // backgroundColor: AppColor.primary,
    // textStyle:
    // const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    // shape: RoundedRectangleBorder(
    // borderRadius: BorderRadius.circular(30),
    // ))));
  );
}
