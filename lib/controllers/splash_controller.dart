import 'package:cafit/common/helper/navigate_extension.dart';
import 'package:cafit/core/route/routes.dart';
import 'package:flutter/material.dart';

class SplashController {
  void navigateToOnboardingPage(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      context.pushReplacementNamed(Routes.onBoardingPage);
    });
  }
}
