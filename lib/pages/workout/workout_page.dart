import 'package:cafit/common/helper/color_extension.dart';
import 'package:cafit/common/widgets/buttons/round_button.dart';
import 'package:cafit/controllers/workout_controller.dart';
import 'package:cafit/core/config/size_config.dart';
import 'package:cafit/core/resourses/assets_manager.dart';
import 'package:cafit/core/resourses/height_size_manager.dart';
import 'package:cafit/core/resourses/string_manager.dart';
import 'package:cafit/core/resourses/width_size_manager.dart';
import 'package:flutter/material.dart';

class WorkoutPage extends StatefulWidget {
  const WorkoutPage({super.key});

  @override
  State<WorkoutPage> createState() => _WorkoutPageState();
}

class _WorkoutPageState extends State<WorkoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.white,
        centerTitle: true,
        elevation: 0.1,
        leading: IconButton(
            onPressed: () {
              WorkoutController().navigateBack(context);
            },
            icon: Image.asset(
              AssetsManager.backIcon,
              width: SizeConfig.screenWidth! * WidthSizeManager.w25,
              height: SizeConfig.screenHeight! * HeightSizeManager.h25,
            )),
        title: Text(
          StringsManager.workOut,
          style: TextStyle(
              color: AppColor.primaryText,
              fontSize: SizeConfig.getResponsiveFontSize(20),
              fontWeight: FontWeight.w700),
        ),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          itemCount: WorkoutController.workArr.length,
          itemBuilder: (context, index) {
            var wObj = WorkoutController.workArr[index] as Map? ?? {};
            return Container(
              margin: EdgeInsets.symmetric(
                  vertical: SizeConfig.screenHeight! * HeightSizeManager.h10),
              height: SizeConfig.screenWidth! * WidthSizeManager.w225,
              decoration: BoxDecoration(
                  color: AppColor.gray,
                  borderRadius: BorderRadius.circular(10)),
              clipBehavior: Clip.antiAlias,
              child: Stack(
                children: [
                  Image.asset(
                    wObj["image"].toString(),
                    width: SizeConfig.screenWidth,
                    height: SizeConfig.screenHeight! * HeightSizeManager.h400,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    width: SizeConfig.screenWidth,
                    height: SizeConfig.screenHeight! * HeightSizeManager.h400,
                    decoration: BoxDecoration(
                      color: index % 2 == 0
                          ? Colors.black.withOpacity(0.7)
                          : AppColor.gray.withOpacity(0.35),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical:
                            SizeConfig.screenHeight! * HeightSizeManager.h25,
                        horizontal:
                            SizeConfig.screenWidth! * WidthSizeManager.w20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          wObj["title"],
                          style: TextStyle(
                              color: AppColor.primary,
                              fontSize: SizeConfig.getResponsiveFontSize(14),
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          wObj["name"],
                          style: TextStyle(
                              color: AppColor.white,
                              fontSize: SizeConfig.getResponsiveFontSize(20),
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          wObj["subtitle"],
                          style: TextStyle(
                              color: AppColor.white,
                              fontSize: SizeConfig.getResponsiveFontSize(14),
                              fontWeight: FontWeight.w500),
                        ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                                width: SizeConfig.screenWidth! *
                                    WidthSizeManager.w110,
                                height: SizeConfig.screenHeight! *
                                    HeightSizeManager.h25,
                                child: RoundButton(
                                  title: StringsManager.seeMore,
                                  fontSize:
                                      SizeConfig.getResponsiveFontSize(12),
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
                child: Image.asset(AssetsManager.menuRunningIcon,
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
