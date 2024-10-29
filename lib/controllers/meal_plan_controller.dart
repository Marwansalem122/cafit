import 'package:cafit/common/helper/navigate_extension.dart';
import 'package:cafit/core/resourses/assets_manager.dart';
import 'package:cafit/core/resourses/string_manager.dart';
import 'package:cafit/core/route/routes.dart';
import 'package:flutter/material.dart';

class MealPlanController {
  void navigateToBack(BuildContext context) {
    context.pop();
  }
   void navigateToWorkoutDetail(BuildContext context) {
   context.pushNamed(Routes.workoutDetailPage);
 }

  static List planArr = [
    {
      "name": StringsManager.breafast,
      "image": AssetsManager.f1Icon,
      "title": StringsManager.mealPlan,
      "subtitle": StringsManager.mealSubTitle
    },
    {
      "name": StringsManager.snack,
      "image": AssetsManager.f2Icon,
      "title": StringsManager.mealPlan,
      "subtitle": StringsManager.mealSubTitle
    },
    {
      "name": StringsManager.breafast,
      "image": AssetsManager.f3Icon,
      "title": StringsManager.mealPlan,
      "subtitle": StringsManager.mealSubTitle
    },
    {
      "name": StringsManager.snack,
      "image": AssetsManager.f4Icon,
      "title": StringsManager.mealPlan,
      "subtitle": StringsManager.mealSubTitle
    },
  ];
}
