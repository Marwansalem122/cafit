import 'package:cafit/common/helper/navigate_extension.dart';
import 'package:cafit/core/resourses/assets_manager.dart';
import 'package:cafit/core/resourses/string_manager.dart';
import 'package:cafit/core/route/routes.dart';
import 'package:flutter/material.dart';

class ExerciseController {
  void navigateToBack(BuildContext context) {
    context.pop();
  }

  void navigateToWorkoutDetail(BuildContext context) {
    context.pushNamed(Routes.workoutDetailPage);
  }

  static List workArr = [
    {
      "name": StringsManager.climber,
      "image": AssetsManager.firstImage,
      "title": StringsManager.workOut,
      "subtitle": StringsManager.subtitleWorkout
    },
    {
      "name": StringsManager.climber,
      "image": AssetsManager.secondImage,
      "title": StringsManager.workOut,
      "subtitle": StringsManager.subtitleWorkout
    },
    {
      "name": StringsManager.climber,
      "image": AssetsManager.fiveImage,
      "title": StringsManager.workOut,
      "subtitle": StringsManager.subtitleWorkout
    },
    {
      "name": StringsManager.climber,
      "image": AssetsManager.thirdImage,
      "title": StringsManager.workOut,
      "subtitle": StringsManager.subtitleWorkout
    },
  ];
}
