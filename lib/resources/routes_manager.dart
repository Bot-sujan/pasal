import 'package:flutter/material.dart';
import 'package:pasal/presentation/intro_screen.dart';

import 'package:pasal/presentation/sign_in/sign_in_screen.dart';
import 'package:pasal/resources/strings_manager.dart';

import '../homePage/homepage_body.dart';
import '../register/register_screen.dart';
import '../sign_up/sign_up_screen.dart';


class Routes {
  static const String initialScreenRoute = '/';
  static const String signInRoute = 'signIn';
  static const String signUpRoute = 'signUp';
  static const String registerRoute = 'Register';
  static const String homePageRoute = 'Homepage';
}

class RouteGenetrator {
  static Route<dynamic> getRoute(
     RouteSettings routeSettings,
  ) {
    switch (routeSettings.name) {
      case Routes.initialScreenRoute:
      return MaterialPageRoute(builder: (_) => const IntroScreen());
      case Routes.signInRoute:
      return MaterialPageRoute(builder: (_) => const SignInScreen());
      case Routes.signUpRoute:
      return MaterialPageRoute(builder: (_) => const SignUpScreen());
       case Routes.registerRoute:
      return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case Routes.homePageRoute:
      return MaterialPageRoute(builder: (_) => const HomePage());
      default:
      return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(builder: (_) => Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.noRouteFound),
      ),
      body: const Center(child: Text(AppStrings.noRouteFound),)
    ));
  }
}