import 'package:cafit/common/helper/navigate_extension.dart';
import 'package:cafit/core/resourses/assets_manager.dart';
import 'package:cafit/core/resourses/string_manager.dart';
import 'package:cafit/core/route/routes.dart';
import 'package:flutter/material.dart';

class MealPlan2Controller {
  void navigateToBlack(BuildContext context) {
    context.pop();
  }
   void navigateToWorkoutDetail(BuildContext context) {
   context.pushNamed(Routes.workoutDetailPage);
 }

  static List workArr = [
    {
      "name": StringsManager.breafast,
      "title": StringsManager.vegetableSandwich,
      "image": AssetsManager.f1Icon
    },
    {
      "name": StringsManager.snack,
      "title": StringsManager.boatNutButter,
      "image": AssetsManager.f2Icon
    },
    {
      "name": StringsManager.breafast,
      "title": StringsManager.vegetableSandwich,
      "image": AssetsManager.f3Icon
    },
    {
      "name": StringsManager.snack,
      "title": StringsManager.boatNutButter,
      "image": AssetsManager.f4Icon
    },
  ];
}
