import 'package:cafit/common/helper/navigate_extension.dart';
import 'package:cafit/core/resourses/string_manager.dart';
import 'package:cafit/core/route/routes.dart';
import 'package:flutter/material.dart';

class TipsController{
  static  List tipsArr = [
   {"name": StringsManager.aboutTraining},
   {"name": StringsManager.howToWeightLoss},
   {"name": StringsManager.introducingAboutMeal},
   {"name": StringsManager.waterAndFood},
   {"name": StringsManager.drinkWater},
   {"name":StringsManager.howManyTimesAday},
   {"name": StringsManager.becomeStronger},
   {"name": StringsManager.shoesToTraining},
   {"name": StringsManager.appealTips}
 ];
 void navigateToBack(BuildContext context) {
  context.pop();
}
void navigateToTipsDetailePage(BuildContext context,Map obj){
  context.pushNamed(Routes.tipsDetailsPage,arguments: obj);
}
}