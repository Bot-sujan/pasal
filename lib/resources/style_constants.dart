import 'package:flutter/material.dart';
import 'package:pasal/resources/size_config.dart';
import 'color_manager.dart';

final headingStyle = TextStyle(
  fontSize: getProportionateScreenHeight(28),
   fontWeight: FontWeight.bold,
   color: Colors.black,
   height: 1.5,
);

final otpInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);


OutlineInputBorder outlineInputBorder() {
   return  OutlineInputBorder(
      borderRadius: BorderRadius.circular(getProportionateScreenHeight(15)),
      borderSide:   BorderSide(color: ColorManager.kTextColor),
   ); 
}
