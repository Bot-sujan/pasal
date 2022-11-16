import 'package:flutter/material.dart';
import 'components/register_body.dart';


import '../resources/strings_manager.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text(AppStrings.signUp),
      ),
      body: const RegisterBody(),
    );
  }
}