import 'package:cafit/common/helper/navigate_extension.dart';
import 'package:cafit/core/resourses/assets_manager.dart';
import 'package:cafit/core/resourses/string_manager.dart';
import 'package:cafit/core/route/routes.dart';
import 'package:flutter/material.dart';

class OnBoardingController {
  static final List<Map<String, String>> listPagesDetails = [
    {
      "title": StringsManager.title1OnBoarding,
      "subTitle": StringsManager.subTitle1OnBoarding,
      "image": AssetsManager.imageOnoarding1
    },
    {
      "title": StringsManager.title2OnBoarding,
      "subTitle": StringsManager.subTitle2OnBoarding,
      "image": AssetsManager.imageOnoarding2
    },
    {
      "title": StringsManager.title3OnBoarding,
      "subTitle": StringsManager.subTitle3OnBoarding,
      "image": AssetsManager.imageOnoarding3
    },
  ];
  void navigateToStep1Page(BuildContext context) {
    context.pushNamedAndRemoveUntil(Routes.step1Page);
  }
}
