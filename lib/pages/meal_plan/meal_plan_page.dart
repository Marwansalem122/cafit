import 'package:cafit/common/helper/color_extension.dart';
import 'package:cafit/common/widgets/buttons/round_button.dart';
import 'package:cafit/common/widgets/buttons/tab_button.dart';
import 'package:cafit/controllers/meal_plan_controller.dart';
import 'package:cafit/core/config/size_config.dart';
import 'package:cafit/core/resourses/assets_manager.dart';
import 'package:cafit/core/resourses/height_size_manager.dart';
import 'package:cafit/core/resourses/string_manager.dart';
import 'package:cafit/core/resourses/width_size_manager.dart';
import 'package:flutter/material.dart';

class MealPlanPage extends StatefulWidget {
  const MealPlanPage({super.key});

  @override
  State<MealPlanPage> createState() => _MealPlanPageState();
}

class _MealPlanPageState extends State<MealPlanPage> {
  int isActiveTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.white,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              MealPlanController().navigateToBack(context);
            },
            icon: Image.asset(
              AssetsManager.backIcon,
              width: SizeConfig.screenWidth! * WidthSizeManager.w25,
              height: SizeConfig.screenHeight! * HeightSizeManager.h25,
            )),
        title: Text(
          StringsManager.mealPlan,
          style: TextStyle(
              color: AppColor.primaryText,
              fontSize: SizeConfig.getResponsiveFontSize(20),
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: AppColor.white, boxShadow: const [
              BoxShadow(
                  color: Colors.black26, blurRadius: 4, offset: Offset(0, 2))
            ]),
            child: Row(
              children: [
                Expanded(
                  child: TabButton(
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
                  child: TabButton(
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
                    horizontal:
                        SizeConfig.screenWidth! * WidthSizeManager.w20),
                itemCount: MealPlanController.planArr.length,
                itemBuilder: (context, index) {
                  var wObj = MealPlanController.planArr[index] as Map? ?? {};
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: SizeConfig.screenHeight! * HeightSizeManager.h400,
                    decoration: BoxDecoration(
                        color: AppColor.gray,
                        borderRadius: BorderRadius.circular(10)),
                    clipBehavior: Clip.antiAlias,
                    child: Stack(
                      children: [
                        Image.asset(
                          wObj["image"].toString(),
                          width: SizeConfig.screenWidth,
                          height:
                              SizeConfig.screenHeight! * HeightSizeManager.h400,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          width: SizeConfig.screenWidth,
                          height:
                              SizeConfig.screenHeight! * HeightSizeManager.h400,
                          decoration: BoxDecoration(
                            color: index % 2 == 0
                                ? Colors.black.withOpacity(0.7)
                                : AppColor.gray.withOpacity(0.35),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: SizeConfig.screenHeight! *
                                  HeightSizeManager.h25,
                              horizontal: SizeConfig.screenWidth! *
                                  WidthSizeManager.w20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                wObj["title"],
                                style: TextStyle(
                                    color: AppColor.primary,
                                    fontSize:
                                        SizeConfig.getResponsiveFontSize(14),
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                wObj["name"],
                                style: TextStyle(
                                    color: AppColor.white,
                                    fontSize:
                                        SizeConfig.getResponsiveFontSize(20),
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                wObj["subtitle"],
                                style: TextStyle(
                                    color: AppColor.white,
                                    fontSize:
                                        SizeConfig.getResponsiveFontSize(14),
                                    fontWeight: FontWeight.w500),
                              ),
                              const Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(
                                      width: SizeConfig.screenWidth! *
                                          WidthSizeManager.w100,
                                      height: SizeConfig.screenHeight! *
                                          HeightSizeManager.h25,
                                      child: RoundButton(
                                        title: StringsManager.seeMore,
                                        fontSize:
                                            SizeConfig.getResponsiveFontSize(
                                                14),
                                        fontWeight: FontWeight.w500,
                                        onPressed: () {
                                          // Navigator.push(
                                          // context,
                                          // MaterialPageRoute(
                                          // builder: (context) =>
                                          // const WorkoutDetailView()));
                                        },
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
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
