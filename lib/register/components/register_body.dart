import 'package:flutter/material.dart';

import 'register_form.dart';

import '../../resources/assets_manager.dart';
import '../../resources/size_config.dart';
import '../../resources/strings_manager.dart';
import '../../widgets/social_card.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
            SizedBox(height: SizeConfig.screenHeight * 0.04),

         Center(
           child: Text(
                    AppStrings.registerAccount,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(28),
                      fontWeight: FontWeight.bold,
                    ),
           ),
         ),
         Text(
                    AppStrings.registerPageText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: getProportionateScreenWidth(12),
                      fontWeight: FontWeight.bold,
                    ),
           ),

           SizedBox(height: SizeConfig.screenHeight * 0.04),
  
          const RegisterForm(),

          SizedBox(height: SizeConfig.screenHeight * 0.04),

           Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: ImageAssets.googleIcon,
                      press: () {},
                    ),
                    SocialCard(
                      icon: ImageAssets.facebookIcon,
                      press: () {},
                    ),
                    SocialCard(
                      icon: ImageAssets.twitterIcon,
                      press: () {},
                    ),
                  ],
                ),

           Text(
                    AppStrings.termsAndCondition,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: getProportionateScreenWidth(12),
                      fontWeight: FontWeight.bold,
                    ),
           ),
        ],
    );
  }
}