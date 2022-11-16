import 'package:flutter/material.dart';
import 'package:pasal/sign_up/components/sign_up_body.dart';

import '../resources/strings_manager.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text(AppStrings.signUp),
      ),
      body: const SignUpBody(),
    );
  }
}