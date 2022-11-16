import 'package:flutter/material.dart';

import 'package:pasal/sign_up/components/sign_up_form.dart';

import '../../resources/size_config.dart';
import '../../resources/strings_manager.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          Center(
            child: Text(
                    AppStrings.completeProfile,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(28),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
          ),
           Text(
                    AppStrings.signUpPageText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: getProportionateScreenWidth(10),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                  const SignUpForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.0000001),
            Text(
                    AppStrings.termsAndCondition,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: getProportionateScreenWidth(10),
                      fontWeight: FontWeight.bold,
                    ),
                  ),

      ],
    );
  }
}