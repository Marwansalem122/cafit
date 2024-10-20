import 'package:cafit/common/helper/navigate_extension.dart';
import 'package:cafit/core/resourses/assets_manager.dart';
import 'package:cafit/core/resourses/string_manager.dart';
import 'package:flutter/material.dart';

class HomeController {


  void navigateToBack(BuildContext context){
    context.pop();
  }
 static List dataArr = [
  {
    "name": StringsManager.running,
    "image": AssetsManager.secondImage,
  },
  {
    "name": StringsManager.pushUp,
    "image": AssetsManager.thirdImage,
  },
  {
    "name": StringsManager.legExtension,
    "image": AssetsManager.fiveImage,
  }
];
static List trainingDayArr = [
  {
    "name":StringsManager.trainingDay1,
  },
  {
    "name": StringsManager.trainingDay2,
  },
  {
    "name": StringsManager.trainingDay3,
  }
];
}