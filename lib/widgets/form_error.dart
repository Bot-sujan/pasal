import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pasal/resources/assets_manager.dart';
import 'package:pasal/resources/size_config.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key? key,
    required this.errors,
    }) : super(key: key);

    final List<dynamic> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        errors.length, (index) => formErrorText(error: errors[index]!)),
      
    );
  }
}

Row formErrorText({required String error}) {
  return Row(
    children: [
      SvgPicture.asset(
        ImageAssets.errorIcon,
        height: getProportionateScreenWidth(14),
        width: getProportionateScreenWidth(14),
      ),
      SizedBox(
        width: getProportionateScreenWidth(10),
      ),
      Text(error),
    ],
  );
}