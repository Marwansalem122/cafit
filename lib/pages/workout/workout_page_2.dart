import 'package:cafit/common/helper/color_extension.dart';
import 'package:cafit/controllers/workout_2_controller.dart';
import 'package:cafit/core/config/size_config.dart';
import 'package:cafit/core/resourses/assets_manager.dart';
import 'package:cafit/core/resourses/height_size_manager.dart';
import 'package:cafit/core/resourses/string_manager.dart';
import 'package:cafit/core/resourses/width_size_manager.dart';
import 'package:flutter/material.dart';

class WorkoutPage2 extends StatefulWidget {
  const WorkoutPage2({super.key});

  @override
  State<WorkoutPage2> createState() => _WorkoutPage2State();
}

class _WorkoutPage2State extends State<WorkoutPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        centerTitle: true,
        elevation: 0.1,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset(
              AssetsManager.blackWhiteImage,
              width: SizeConfig.screenWidth! * WidthSizeManager.w25,
              height: SizeConfig.screenHeight! * HeightSizeManager.h25,
            )),
        title: Text(
          StringsManager.workOut,
          style: TextStyle(
              color: AppColor.white, fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
      body: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: WorkOut2Controller.workArr.length,
          itemBuilder: (context, index) {
            var wObj = WorkOut2Controller.workArr[index] as Map? ?? {};
            return Container(
              decoration: BoxDecoration(color: AppColor.white),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        wObj["image"].toString(),
                        width: SizeConfig.screenWidth,
                        height:
                            SizeConfig.screenHeight! * HeightSizeManager.h440,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        width: SizeConfig.screenWidth,
                        height:
                            SizeConfig.screenHeight! * HeightSizeManager.h440,
                        decoration:
                            BoxDecoration(color: Colors.black.withOpacity(0.5)),
                      ),
                      Image.asset(
                        AssetsManager.playImage,
                        width: SizeConfig.screenWidth! * WidthSizeManager.w60,
                        height:
                            SizeConfig.screenHeight! * HeightSizeManager.h60,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical:
                            SizeConfig.screenHeight! * HeightSizeManager.h4,
                        horizontal:
                            SizeConfig.screenWidth! * WidthSizeManager.w20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          wObj["name"],
                          style: TextStyle(
                              color: AppColor.secondaryText,
                              fontSize: SizeConfig.getResponsiveFontSize(20),
                              fontWeight: FontWeight.w700),
                        ),
                        IconButton(
                            onPressed: () {
                              WorkOut2Controller()
                                  .navigateToWorkoutDetailsPage(context);
                            },
                            icon: Image.asset(AssetsManager.moreImage,
                                width: SizeConfig.screenWidth! *
                                    WidthSizeManager.w25,
                                height: SizeConfig.screenHeight! *
                                    HeightSizeManager.h25))
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
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
