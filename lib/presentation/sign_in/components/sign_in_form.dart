
import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pasal/app/constants/app_constants.dart';
import 'package:pasal/presentation/sign_in/sign_in_controller/sign_in_controller.dart';

import '../../../resources/assets_manager.dart';
import '../../../resources/color_manager.dart';
import '../../../resources/routes_manager.dart';
import '../../../resources/size_config.dart';
import '../../../resources/strings_manager.dart';
import '../../../widgets/custom_surfix_icon.dart';
import '../../../widgets/default_button.dart';
import '../../../widgets/form_error.dart';
import '../../helper/keyboard_util.dart';

class SignForm extends StatefulWidget {
  const SignForm({super.key});

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final SignInController _signInController = Get.put(SignInController());
  final _controller = ConfettiController(duration: const Duration(seconds: 4));
  bool isPlaying = false;



  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _signInController.formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
              Obx(
                () => Checkbox(
                  value: _signInController.remember!.value,
                  activeColor: ColorManager.kPrimaryColor,
                  onChanged: (value) {
                    _signInController.changeRememberValue(value!);
                  },
                ),
              ),
              const Text(AppStrings.rememberMe),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  //  Navigator.pushNamed(context, ForgotPasswordScreen.routeName);
                },
                child: const Text(
                  AppStrings.forgotPassword,
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          FormError(errors: _signInController.errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          ConfettiWidget(
            gravity: 0.05,
            numberOfParticles: 100,
            confettiController: _controller,
            blastDirection: -pi / 2,
          ),
          DefaultButton(
            text: AppStrings.continueText,
            press: () {
              if (isPlaying) {
                _controller.stop();
              } else {
                _controller.play();
              }
              if (_signInController.formKey.currentState!.validate()) {
                _signInController.formKey.currentState!.save();
                // if all are valid then go to success screen
                KeyboardUtil.hideKeyboard(context);
                         
                       Future.delayed( const Duration(seconds: 3), ()  {
                           Navigator.pushReplacementNamed(context, Routes.homePageRoute);
                       });
                      
                
              }
            },
          ),
        ],
      ),
    );
  }


 
  Obx buildPasswordFormField() {
    return 
         Obx(() => 
           TextFormField(
      obscureText: _signInController.isPasswordHidden.value,
      onSaved: (newValue) => _signInController.password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          _signInController.removeError(error: AppStrings.kPassNullError);
        } else if (value.length >= 8) {
          _signInController.removeError(error: AppStrings.kShortPassError);
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          _signInController.addError(error: AppStrings.kPassNullError);
          return AppStrings.kPassNullError;
        } else if (value.length < 8) {
          _signInController.addError(error: AppStrings.kShortPassError);
          return AppStrings.kShortPassError;
        }
        return null;
      },
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: AppStrings.password,
        hintText: AppStrings.enterPassword,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffix: InkWell(
          child: Icon(
              _signInController.isPasswordHidden.value
                  ? Icons.visibility
                  : Icons.visibility_off,
              color: Colors.grey,
              size: 20),
          onTap: () {
            _signInController.isPasswordHidden.value =
                !_signInController.isPasswordHidden.value;
          },
        ),
        suffixIcon: const CustomSurffixIcon(svgIcon: ImageAssets.lockIcon),
      ),
    ),
         );
  }
 

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => _signInController.email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          _signInController.removeError(error: AppStrings.kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          _signInController.removeError(error: AppStrings.kInvalidEmailError);
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          _signInController.addError(error: AppStrings.kEmailNullError);
          return AppStrings.kEmailNullError;
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          _signInController.addError(error: AppStrings.kInvalidEmailError);
          return AppStrings.kInvalidEmailError;
        }
        return null;
      },
      decoration: const InputDecoration(
       border: OutlineInputBorder(),
        labelText: AppStrings.email,
        hintText: AppStrings.enterEmail,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: ImageAssets.emailIcon),
      ),
    );
  }
}
