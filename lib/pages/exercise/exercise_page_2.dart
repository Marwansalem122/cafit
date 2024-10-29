import 'package:cafit/common/helper/color_extension.dart';
import 'package:cafit/common/widgets/buttons/tab_button.dart';
import 'package:cafit/controllers/exercise_2_controller.dart';
import 'package:cafit/core/config/size_config.dart';
import 'package:cafit/core/resourses/assets_manager.dart';
import 'package:cafit/core/resourses/height_size_manager.dart';
import 'package:cafit/core/resourses/string_manager.dart';
import 'package:cafit/core/resourses/width_size_manager.dart';
import 'package:flutter/material.dart';

class ExercisePage2 extends StatefulWidget {
  const ExercisePage2({super.key});

  @override
  State<ExercisePage2> createState() => _ExercisePage2State();
}

class _ExercisePage2State extends State<ExercisePage2> {
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
              Exercise2Controller().navigateToBack(context);
            },
            icon: Image.asset(
              AssetsManager.blackWhiteImage,
              width: SizeConfig.screenWidth! * WidthSizeManager.w25,
              height: SizeConfig.screenHeight! * HeightSizeManager.h25,
            )),
        title: Text(
          StringsManager.exercises,
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
                flex: 3,
                child: TabButton2(
                  title: StringsManager.fullBody,
                  isActive: isActiveTab == 0,
                  onPressed: () {
                    setState(() {
                      isActiveTab = 0;
                    });
                  },
                ),
              ),
              Expanded(
                flex: 2,
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
              Expanded(
                flex: 2,
                child: TabButton2(
                  title: StringsManager.arm,
                  isActive: isActiveTab == 2,
                  onPressed: () {
                    setState(() {
                      isActiveTab = 2;
                    });
                  },
                ),
              ),
              Expanded(
                flex: 2,
                child: TabButton2(
                  title: StringsManager.body,
                  isActive: isActiveTab == 3,
                  onPressed: () {
                    setState(() {
                      isActiveTab = 3;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: Exercise2Controller.workArr.length,
              itemBuilder: (context, index) {
                var wObj = Exercise2Controller.workArr[index] as Map? ?? {};
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
                            height: SizeConfig.screenHeight! *
                                HeightSizeManager.h440,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            width: SizeConfig.screenWidth,
                            height: SizeConfig.screenHeight! *
                                HeightSizeManager.h440,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.5)),
                          ),
                          Image.asset(
                            AssetsManager.playImage,
                            width:
                                SizeConfig.screenWidth! * WidthSizeManager.w60,
                            height: SizeConfig.screenHeight! *
                                HeightSizeManager.h60,
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
                                  fontSize:
                                      SizeConfig.getResponsiveFontSize(20),
                                  fontWeight: FontWeight.w700),
                            ),
                            IconButton(
                                onPressed: () {
                                  Exercise2Controller()
                                      .navigateToWorkoutDetail(context);
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
