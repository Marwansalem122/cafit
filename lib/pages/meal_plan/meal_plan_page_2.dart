import 'package:cafit/common/helper/color_extension.dart';
import 'package:cafit/common/widgets/buttons/tab_button.dart';
import 'package:cafit/controllers/meal_plan_2_controller.dart';
import 'package:cafit/core/config/size_config.dart';
import 'package:cafit/core/resourses/assets_manager.dart';
import 'package:cafit/core/resourses/height_size_manager.dart';
import 'package:cafit/core/resourses/string_manager.dart';
import 'package:cafit/core/resourses/width_size_manager.dart';
import 'package:flutter/material.dart';

class MealPlanPage2 extends StatefulWidget {
  const MealPlanPage2({super.key});

  @override
  State<MealPlanPage2> createState() => _MealPlanPage2State();
}

class _MealPlanPage2State extends State<MealPlanPage2> {
  int isActiveTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              MealPlan2Controller().navigateToBlack(context);
            },
            icon: Image.asset(
              AssetsManager.blackWhiteImage,
              width: SizeConfig.screenWidth! * WidthSizeManager.w25,
              height: SizeConfig.screenHeight! * HeightSizeManager.h25,
            )),
        title: Text(
          StringsManager.mealPlan,
          style: TextStyle(
              color: AppColor.white,
              fontSize: SizeConfig.getResponsiveFontSize(20),
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(children: [
        Container(
          decoration: BoxDecoration(color: AppColor.white, boxShadow: const [
            BoxShadow(
                color: Colors.black26, blurRadius: 4, offset: Offset(0, 2))
          ]),
          child: Row(
            children: [
              Expanded(
                child: TabButton2(
                  title: StringsManager.water,
                  isActive: isActiveTab == 0,
                  onPressed: () {
                    setState(() {
                      isActiveTab = 0;
                    });
                  },
                ),
              ),
              Expanded(
                child: TabButton2(
                  title: StringsManager.food,
                  isActive: isActiveTab == 1,
                  onPressed: () {
                    setState(() {
                      isActiveTab = 1;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.screenWidth! * WidthSizeManager.w20,
              vertical: SizeConfig.screenHeight! * HeightSizeManager.h10),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  AssetsManager.blackFoImage,
                  width: SizeConfig.screenWidth! * WidthSizeManager.w20,
                  height: SizeConfig.screenHeight! * HeightSizeManager.h20,
                ),
              ),
              Expanded(
                child: Text(
                  StringsManager.sundayAUG26,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColor.secondaryText,
                      fontSize: SizeConfig.getResponsiveFontSize(20),
                      fontWeight: FontWeight.w700),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  AssetsManager.nextGoImage,
                  width: SizeConfig.screenWidth! * WidthSizeManager.w20,
                  height: SizeConfig.screenHeight! * HeightSizeManager.h20,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.screenWidth! * WidthSizeManager.w25,
                  vertical: 0),
              itemCount: MealPlan2Controller.workArr.length,
              itemBuilder: (context, index) {
                var wObj = MealPlan2Controller.workArr[index] as Map? ?? {};
                return Container(
                  padding: EdgeInsets.symmetric(
                      vertical:
                          SizeConfig.screenHeight! * HeightSizeManager.h8),
                  decoration: BoxDecoration(color: AppColor.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          wObj["image"].toString(),
                          width: SizeConfig.screenHeight,
                          height:
                              SizeConfig.screenHeight! * HeightSizeManager.h440,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        wObj["name"],
                        style: TextStyle(
                            color: AppColor.secondaryText,
                            fontSize: SizeConfig.getResponsiveFontSize(20),
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        wObj["title"],
                        style: TextStyle(
                            color: AppColor.secondaryText,
                            fontSize: SizeConfig.getResponsiveFontSize(14)),
                      ),
                    ],
                  ),
                );
              }),
        ),
      ]),
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        child: Padding(
          padding: EdgeInsets.only(
              top: SizeConfig.screenHeight! * HeightSizeManager.h14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {},
                child: Image.asset(AssetsManager.menuRunningImage,
                    width: SizeConfig.screenWidth! * WidthSizeManager.w25,
                    height: SizeConfig.screenHeight! * HeightSizeManager.h25),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset(AssetsManager.menuMealPlanImage,
                    width: SizeConfig.screenWidth! * WidthSizeManager.w25,
                    height: SizeConfig.screenHeight! * HeightSizeManager.h25),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset(AssetsManager.menuHomeImage,
                    width: SizeConfig.screenWidth! * WidthSizeManager.w25,
                    height: SizeConfig.screenHeight! * HeightSizeManager.h25),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset(AssetsManager.menuWeightImage,
                    width: SizeConfig.screenWidth! * WidthSizeManager.w25,
                    height: SizeConfig.screenHeight! * HeightSizeManager.h25),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset(AssetsManager.moreImage,
                    width: SizeConfig.screenWidth! * WidthSizeManager.w25,
                    height: SizeConfig.screenHeight! * HeightSizeManager.h25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}