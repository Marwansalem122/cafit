import 'package:cafit/common/helper/color_extension.dart';
import 'package:cafit/common/widgets/buttons/round_button.dart';
import 'package:cafit/common/widgets/exercises_row.dart';
import 'package:cafit/controllers/home_controller.dart';
import 'package:cafit/core/config/size_config.dart';
import 'package:cafit/core/resourses/assets_manager.dart';
import 'package:cafit/core/resourses/height_size_manager.dart';
import 'package:cafit/core/resourses/string_manager.dart';
import 'package:cafit/core/resourses/width_size_manager.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: kToolbarHeight + 25,
        backgroundColor: AppColor.primary,
        centerTitle: true,
        elevation: 0.1,
        leading: IconButton(
            onPressed: () {
              HomeController().navigateToBack(context);
            },
            icon: Image.asset(
              AssetsManager.blackWhiteImage,
              width: SizeConfig.screenWidth! * WidthSizeManager.w25,
              height: SizeConfig.screenHeight! * HeightSizeManager.h25,
            )),
        title: Text(
          StringsManager.fitnessApplication,
          style: TextStyle(
              color: AppColor.white,
              fontSize: SizeConfig.getResponsiveFontSize(20),
              fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.screenHeight! * HeightSizeManager.h14),
              child: SizedBox(
                width: SizeConfig.screenWidth!,
                height: SizeConfig.screenHeight! * HeightSizeManager.h200,
                child: CarouselSlider.builder(
                  options: CarouselOptions(
                      autoPlay: false,
                      aspectRatio: 0.5,
                      enlargeCenterPage: true,
                      enableInfiniteScroll: false,
                      viewportFraction: 0.65,
                      enlargeFactor: 0.4,
                      enlargeStrategy: CenterPageEnlargeStrategy.zoom),
                  itemCount: HomeController.dataArr.length,
                  itemBuilder:
                      (BuildContext context, int itemIndex, int index) {
                    var dObj = HomeController.dataArr[index] as Map? ?? {};
                    return Container(
                      margin: EdgeInsets.symmetric(
                          // vertical:
                          // SizeConfig.screenHeight! * HeightSizeManager.h10,
                          horizontal:
                              SizeConfig.screenWidth! * WidthSizeManager.w10),
                      decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 4,
                                offset: Offset(0, 2)),
                          ]),
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(dObj["image"].toString(),
                                width: 300, height: 150, fit: BoxFit.cover),
                          ),
                          Padding(
                            padding: EdgeInsets.all(SizeConfig.screenHeight! *
                                HeightSizeManager.h10),
                            child: Text(
                              dObj["name"].toString(),
                              style: TextStyle(
                                  color: AppColor.white,
                                  fontSize:
                                      SizeConfig.getResponsiveFontSize(16),
                                  fontWeight: FontWeight.w700),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.screenHeight! * HeightSizeManager.h8),
              child: SizedBox(
                width: SizeConfig.screenWidth,
                height: SizeConfig.screenHeight! * HeightSizeManager.h450,
                child: CarouselSlider.builder(
                  options: CarouselOptions(
                      autoPlay: false,
                      aspectRatio: 0.6,
                      enlargeCenterPage: true,
                      viewportFraction: 0.85,
                      enableInfiniteScroll: false,
                      enlargeFactor: 0.4,
                      enlargeStrategy: CenterPageEnlargeStrategy.zoom),
                  itemCount: HomeController.trainingDayArr.length,
                  itemBuilder:
                      (BuildContext context, int itemIndex, int index) {
                    var tObj =
                        HomeController.trainingDayArr[index] as Map? ?? {};
                    return Container(
                      height: SizeConfig.screenHeight! * HeightSizeManager.h400,
                      margin: EdgeInsets.symmetric(
                          vertical:
                              SizeConfig.screenHeight! * HeightSizeManager.h8,
                          horizontal:
                              SizeConfig.screenWidth! * WidthSizeManager.w10),
                      padding: EdgeInsets.symmetric(
                          vertical:
                              SizeConfig.screenHeight! * HeightSizeManager.h16,
                          horizontal:
                              SizeConfig.screenWidth! * WidthSizeManager.w20),
                      decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 4,
                                offset: Offset(0, 2)),
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            tObj["name"].toString(),
                            style: TextStyle(
                                color: AppColor.secondaryText,
                                fontSize: SizeConfig.getResponsiveFontSize(24),
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height:
                                SizeConfig.screenHeight! * HeightSizeManager.h8,
                          ),
                          Text(
                            StringsManager.week1,
                            style: TextStyle(
                                color: AppColor.secondaryText.withOpacity(0.8),
                                fontSize: SizeConfig.getResponsiveFontSize(16),
                                fontWeight: FontWeight.w700),
                          ),
                          // const Spacer(),
                          SizedBox(
                            height:
                                SizeConfig.screenHeight! * HeightSizeManager.h8,
                          ),
                          ExercisesRow(
                              number: StringsManager.number1,
                              title: StringsManager.exercises1,
                              time: StringsManager.minute7,
                              isActive: true,
                              onPressed: () {}),
                          ExercisesRow(
                              number: StringsManager.number2,
                              title: StringsManager.exercises2,
                              time: StringsManager.minute15,
                              onPressed: () {}),
                          ExercisesRow(
                              number: StringsManager.number3,
                              title: StringsManager.finish,
                              time: StringsManager.minute5,
                              isLast: true,
                              onPressed: () {}),
                          // const Spacer(),
                          SizedBox(
                            height:
                                SizeConfig.screenHeight! * HeightSizeManager.h4,
                          ),
                          SizedBox(
                            width:
                                SizeConfig.screenWidth! * WidthSizeManager.w170,
                            height: SizeConfig.screenHeight! *
                                HeightSizeManager.h40,
                            child: RoundButton(
                                title: StringsManager.start,
                                onPressed: () {
                                  if (index % 2 == 0) {
                                    HomeController()
                                        .navigateToWorkoutPage(context);
                                  } else {
                                    HomeController()
                                        .navigateToWorkoutPage2(context);
                                  }
                                }),
                          ),
                          // SizedBox(
                          // height: SizeConfig.screenHeight! *
                          // HeightSizeManager.h20,
                          // )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
