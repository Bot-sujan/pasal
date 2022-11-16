import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pasal/resources/color_manager.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Muli",
    appBarTheme: appBarTheme(),
    inputDecorationTheme: const InputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,

  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius:  BorderRadius.circular(28),
    borderSide: BorderSide(color: ColorManager.kTextColor),
    gapPadding: 10,
  );
 return InputDecorationTheme(
       floatingLabelBehavior: FloatingLabelBehavior.always,
       contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
       enabledBorder: outlineInputBorder,
       border: outlineInputBorder,
 );
}

 TextTheme textTheme() {
  return  TextTheme(
    bodyText1: TextStyle(color: ColorManager.kTextColor),
    bodyText2: TextStyle(color: ColorManager.kTextColor),
  );
 }

 AppBarTheme appBarTheme() {
  return   AppBarTheme(
    color: Colors.white,
    elevation: 0,
    iconTheme:  const IconThemeData(color: Colors.black),
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    toolbarTextStyle:   const TextTheme(
      headline6:  TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
    ).bodyText2,
    titleTextStyle: const TextTheme(
      headline6: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
    ).headline6,

  );
 }







