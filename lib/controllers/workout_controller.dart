import 'package:cafit/common/helper/navigate_extension.dart';
import 'package:cafit/core/resourses/assets_manager.dart';
import 'package:cafit/core/resourses/string_manager.dart';
import 'package:flutter/material.dart';

class WorkoutController {
  void navigateBack(BuildContext context) {
    context.pop();
  }
  

  static List workArr = [
    {
      "name": StringsManager.climber,
      "image": AssetsManager.firstImage,
      "title": StringsManager.workout,
      "subtitle": StringsManager.subtitleWorkout
    },
    {
      "name": StringsManager.climber,
      "image": AssetsManager.secondImage,
      "title": StringsManager.workout,
      "subtitle": StringsManager.subtitleWorkout
    },
    {
      "name": StringsManager.climber,
      "image": AssetsManager.fiveImage,
      "title": StringsManager.workout,
      "subtitle": StringsManager.subtitleWorkout
    },
    {
      "name": StringsManager.climber,
      "image": AssetsManager.thirdImage,
      "title": StringsManager.workout,
      "subtitle": StringsManager.subtitleWorkout
    },
  ];
}
