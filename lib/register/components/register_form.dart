import 'package:flutter/material.dart';
import '../../resources/assets_manager.dart';
import '../../resources/color_manager.dart';
import '../../resources/routes_manager.dart';
import '../../resources/size_config.dart';
import '../../resources/strings_manager.dart';
import '../../widgets/custom_surfix_icon.dart';
import '../../widgets/default_button.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
                label: const Text(AppStrings.email),
                labelStyle: TextStyle(
                    color: ColorManager.grey1, fontWeight: FontWeight.w600),
                hintText: AppStrings.enterEmail,
                suffixIcon:
                    const CustomSurffixIcon(svgIcon: ImageAssets.emailIcon)),
            cursorColor: ColorManager.grey1,
          ),

       SizedBox(height: SizeConfig.screenHeight * 0.02),

       TextFormField(
            decoration: InputDecoration(
                label: const Text(AppStrings.registerPassword),
                labelStyle: TextStyle(
                    color: ColorManager.grey1, fontWeight: FontWeight.w600),
                hintText: AppStrings.registerPasswordTextField,
                suffixIcon:
                    const CustomSurffixIcon(svgIcon: ImageAssets.lockIcon)),
            cursorColor: ColorManager.grey1,
          ),

       SizedBox(height: SizeConfig.screenHeight * 0.02),

        TextFormField(
            decoration: InputDecoration(
                label: const Text(AppStrings.registerRepassword),
                labelStyle: TextStyle(
                    color: ColorManager.grey1, fontWeight: FontWeight.w600),
                hintText: AppStrings.registerRePasswordTextField,
                suffixIcon:
                    const CustomSurffixIcon(svgIcon: ImageAssets.lockIcon)),
            cursorColor: ColorManager.grey1,
          ),

          SizedBox(height: SizeConfig.screenHeight * 0.06),


          DefaultButton(
                      text: AppStrings.continueText,
                      press: () {
              Navigator.pushReplacementNamed(context, Routes.signUpRoute);

                      },
                   ),

        ],
      ),
    );
  }
}