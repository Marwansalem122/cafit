import 'package:cafit/common/helper/color_extension.dart';
import 'package:cafit/common/widgets/response_row.dart';
import 'package:cafit/controllers/workout_details_controller.dart';
import 'package:cafit/core/config/size_config.dart';
import 'package:cafit/core/resourses/assets_manager.dart';
import 'package:cafit/core/resourses/height_size_manager.dart';
import 'package:cafit/core/resourses/string_manager.dart';
import 'package:cafit/core/resourses/width_size_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class WorkoutDetailPage extends StatefulWidget {
  const WorkoutDetailPage({super.key});

  @override
  State<WorkoutDetailPage> createState() => _WorkoutDetailPageState();
}

class _WorkoutDetailPageState extends State<WorkoutDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        centerTitle: true,
        elevation: 0.1,
        leading: IconButton(
            onPressed: () {
              WorkoutDetailsController().navigateToBack(context);
            },
            icon: Image.asset(
              AssetsManager.blackWhiteImage,
              width: SizeConfig.screenWidth! * WidthSizeManager.w25,
              height: SizeConfig.screenHeight! * HeightSizeManager.h25,
            )),
        title: Text(
          StringsManager.climber,
          style: TextStyle(
              color: AppColor.white,
              fontSize: SizeConfig.getResponsiveFontSize(20),
              fontWeight: FontWeight.w700),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Image.asset(
                AssetsManager.nodeMusicImage,
                width: SizeConfig.screenWidth! * WidthSizeManager.w25,
                height: SizeConfig.screenHeight! * HeightSizeManager.h25,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              AssetsManager.firstImage,
              width: SizeConfig.screenWidth,
              height: SizeConfig.screenHeight! * HeightSizeManager.h440,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.screenWidth! * WidthSizeManager.w20),
              child: Row(
                children: [
                  IgnorePointer(
                    ignoring: true,
                    child: RatingBar.builder(
                      initialRating: 4,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 25,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: AppColor.primary,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        AssetsManager.likeImage,
                        width: SizeConfig.screenWidth! * WidthSizeManager.w20,
                        height:
                            SizeConfig.screenHeight! * HeightSizeManager.h20,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        AssetsManager.shareImage,
                        width: SizeConfig.screenWidth! * WidthSizeManager.w20,
                        height:
                            SizeConfig.screenHeight! * HeightSizeManager.h20,
                      ))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.screenHeight! * HeightSizeManager.h8,
                  horizontal: SizeConfig.screenWidth! * WidthSizeManager.w20),
              child: Text(
                StringsManager.recommended,
                style: TextStyle(
                    color: AppColor.secondaryText,
                    fontSize: SizeConfig.getResponsiveFontSize(18),
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: SizeConfig.screenHeight! * HeightSizeManager.h208,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(
                      horizontal:
                          SizeConfig.screenWidth! * WidthSizeManager.w15),
                  itemCount: WorkoutDetailsController.workArr.length,
                  itemBuilder: (context, index) {
                    var wObj =
                        WorkoutDetailsController.workArr[index] as Map? ?? {};
                    return Container(
                      margin: EdgeInsets.symmetric(
                          vertical:
                              SizeConfig.screenHeight! * HeightSizeManager.h4,
                          horizontal: 8),
                      width: SizeConfig.screenWidth! * WidthSizeManager.w126,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset(
                                wObj["image"].toString(),
                                width: SizeConfig.screenWidth,
                                height: SizeConfig.screenHeight! *
                                    HeightSizeManager.h120,
                                fit: BoxFit.cover,
                              ),
                              Container(
                                width: SizeConfig.screenWidth,
                                height: SizeConfig.screenHeight! *
                                    HeightSizeManager.h120,
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.5)),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: SizeConfig.screenHeight! *
                                    HeightSizeManager.h4,
                                horizontal: 0),
                            child: Text(
                              wObj["name"],
                              style: TextStyle(
                                  color: AppColor.secondaryText,
                                  fontSize:
                                      SizeConfig.getResponsiveFontSize(14),
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.screenWidth! * WidthSizeManager.w20),
              child: Text(
                StringsManager.responses17,
                style: TextStyle(
                    color: AppColor.secondaryText,
                    fontSize: SizeConfig.getResponsiveFontSize(18),
                    fontWeight: FontWeight.w700),
              ),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.screenHeight! * HeightSizeManager.h20,
                  horizontal: SizeConfig.screenWidth! * WidthSizeManager.w20),
              shrinkWrap: true,
              itemCount: WorkoutDetailsController.responseArr.length,
              itemBuilder: ((context, index) {
                var rObj =
                    WorkoutDetailsController.responseArr[index] as Map? ?? {};
                return ResponsesRow(
                  rObj: rObj,
                );
              }),
            )
          ],
        ),
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
