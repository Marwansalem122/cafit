import 'package:cafit/common/helper/navigate_extension.dart';
import 'package:cafit/core/resourses/assets_manager.dart';
import 'package:cafit/core/resourses/string_manager.dart';
import 'package:cafit/core/route/routes.dart';
import 'package:flutter/material.dart';

class MenuPageController {
  void navigateToHomePage(BuildContext context) {
    context.pushNamed(Routes.homePage);
  }

 
 
 

  static List planArr = [
    {
      "name": StringsManager.running,
      "icon": AssetsManager.menuRunningIcon,
      "right_icon": "",
    },
    {
      "name": StringsManager.yoga,
      "icon": AssetsManager.yogaIcon,
      "right_icon": AssetsManager.informationIcon,
    },
    {
      "name": StringsManager.workOut,
      "icon": AssetsManager.workoutIcon,
      "right_icon": "",
    },
    {
      "name": StringsManager.walking,
      "icon": AssetsManager.walkingIcon,
      "right_icon": "",
    },
    {
      "name": StringsManager.fitness,
      "icon": AssetsManager.fitnessIcon,
      "right_icon": AssetsManager.informationIcon,
    },
    {
      "name": StringsManager.strength,
      "icon": AssetsManager.strengthIcon,
      "right_icon": "",
    }
  ];
  static List menuArr = [
    {
      "name": StringsManager.home,
      "image": AssetsManager.menuHomeImage,
      "tag": StringsManager.tag1
    },
    {
      "name": StringsManager.weight,
      "image": AssetsManager.menuWeightImage,
      "tag": StringsManager.tag2
    },
    {
      "name": StringsManager.trainingPlan,
      "image": AssetsManager.menuTrainingPlanImage,
      "tag": StringsManager.tag3
    },
    {
      "name": StringsManager.trainingStatus,
      "image": AssetsManager.menuTrainingStatusImage,
      "tag": StringsManager.tag4
    },
    {
      "name": StringsManager.mealPlan,
      "image": AssetsManager.menuMealPlanImage,
      "tag": StringsManager.tag5
    },
    {
      "name": StringsManager.schedule,
      "image": AssetsManager.menuScheduleImage,
      "tag": StringsManager.tag6
    },
    {
      "name": StringsManager.running,
      "image": AssetsManager.menuRunningImage,
      "tag": StringsManager.tag7
    },
    {
      "name": StringsManager.exercises,
      "image": AssetsManager.menuExercisesImage,
      "tag": StringsManager.tag8
    },
    {
      "name": StringsManager.tips,
      "image": AssetsManager.menuTipsImage,
      "tag": StringsManager.tag9
    },
    {
      "name": StringsManager.setting,
      "image": AssetsManager.menuSettingsImage,
      "tag": StringsManager.tag10
    },
    {
      "name": StringsManager.support,
      "image": AssetsManager.menuSupportImage,
      "tag": StringsManager.tag11
    },
  ];
}
