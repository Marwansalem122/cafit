import 'package:cafit/common/helper/navigate_extension.dart';
import 'package:cafit/core/resourses/assets_manager.dart';
import 'package:cafit/core/resourses/string_manager.dart';
import 'package:cafit/core/route/routes.dart';
import 'package:flutter/material.dart';

class WorkOut2Controller {
  void navigateToWorkoutDetailsPage(BuildContext context) {
    context.pushNamed(Routes.workoutDetailPage);
  }

  static List workArr = [
    {"name": StringsManager.pushUp, "image": AssetsManager.firstImage},
    {"name": StringsManager.legExtension, "image": AssetsManager.secondImage},
    {
      "name": StringsManager.pushUp,
      "image": AssetsManager.fiveImage,
    },
    {
      "name": StringsManager.climber,
      "image": AssetsManager.thirdImage,
    },
  ];
}
