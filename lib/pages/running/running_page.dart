import 'package:cafit/common/helper/color_extension.dart';
import 'package:cafit/common/widgets/buttons/running_top_button.dart';
import 'package:cafit/common/widgets/running_density_view.dart';
import 'package:cafit/common/widgets/running_heart.dart';
import 'package:cafit/common/widgets/running_length_page.dart';
import 'package:cafit/common/widgets/running_speed_page.dart';
import 'package:cafit/common/widgets/running_timer_view.dart';
import 'package:cafit/controllers/running_controller.dart';
import 'package:cafit/core/config/size_config.dart';
import 'package:cafit/core/resourses/assets_manager.dart';
import 'package:cafit/core/resourses/height_size_manager.dart';
import 'package:cafit/core/resourses/string_manager.dart';
import 'package:cafit/core/resourses/width_size_manager.dart';
import 'package:flutter/material.dart';

class RunningPage extends StatefulWidget {
  const RunningPage({super.key});

  @override
  State<RunningPage> createState() => _RunningPageState();
}

class _RunningPageState extends State<RunningPage> {
  int selectTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.primary,
          centerTitle: true,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                RunningController().navigateToBack(context);
              },
              icon: Image.asset(
                AssetsManager.blackWhiteImage,
                width: SizeConfig.screenWidth! * WidthSizeManager.w25,
                height: SizeConfig.screenHeight! * HeightSizeManager.h25,
              )),
          title: Text(
            StringsManager.running,
            style: TextStyle(
                color: AppColor.white,
                fontSize: SizeConfig.getResponsiveFontSize(20),
                fontWeight: FontWeight.w700),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: SizeConfig.screenHeight! * HeightSizeManager.h70,
              color: AppColor.primary,
              alignment: Alignment.bottomCenter,
              child: Container(
                width: SizeConfig.screenWidth! * WidthSizeManager.w405,
                height: SizeConfig.screenHeight! * HeightSizeManager.h70,
                decoration: const BoxDecoration(
                  color: Color(0xffF8F6F9),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: Row(
                  children: [
                    RunningTopButton(
                      icon: AssetsManager.rdistanceImage,
                      isActive: selectTab == 0,
                      onPressed: () {
                        setState(() {
                          selectTab = 0;
                        });
                      },
                    ),
                    Container(
                        width: 1,
                        height:
                            SizeConfig.screenHeight! * HeightSizeManager.h40,
                        color: AppColor.gray),
                    RunningTopButton(
                      icon: AssetsManager.dashboardHalfImage,
                      isActive: selectTab == 1,
                      onPressed: () {
                        setState(() {
                          selectTab = 1;
                        });
                      },
                    ),
                    Container(
                        width: 1,
                        height:
                            SizeConfig.screenHeight! * HeightSizeManager.h40,
                        color: AppColor.gray),
                    RunningTopButton(
                      icon: AssetsManager.timeWallClockImage,
                      isActive: selectTab == 2,
                      onPressed: () {
                        setState(() {
                          selectTab = 2;
                        });
                      },
                    ),
                    Container(
                        width: 1,
                        height:
                            SizeConfig.screenHeight! * HeightSizeManager.h40,
                        color: AppColor.gray),
                    RunningTopButton(
                      icon: AssetsManager.rHeartbeatImage,
                      isActive: selectTab == 3,
                      onPressed: () {
                        setState(() {
                          selectTab = 3;
                        });
                      },
                    ),
                    Container(
                        width: 1,
                        height:
                            SizeConfig.screenHeight! * HeightSizeManager.h40,
                        color: AppColor.gray),
                    RunningTopButton(
                      icon: AssetsManager.graoup1309Image,
                      isActive: selectTab == 4,
                      onPressed: () {
                        setState(() {
                          selectTab = 4;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Container(
                width: SizeConfig.screenWidth! * WidthSizeManager.w405,
                height: SizeConfig.screenHeight! * HeightSizeManager.h520,
                decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 2,
                          offset: Offset(0, 1))
                    ]),
                child: Column(
                  children: [
                    if (selectTab == 0)
                      RunningLengthView(
                          height: SizeConfig.screenHeight! *
                              HeightSizeManager.h520),
                    if (selectTab == 1)
                      RunningSpeedView(
                          height: SizeConfig.screenHeight! *
                              HeightSizeManager.h520),
                    if (selectTab == 2)
                      RunningTimerView(
                          height: SizeConfig.screenHeight! *
                              HeightSizeManager.h520),
                    if (selectTab == 3)
                      RunningHeartView(
                          height: SizeConfig.screenHeight! *
                              HeightSizeManager.h520),
                    if (selectTab == 4)
                      RunningDensityView(
                          height: SizeConfig.screenHeight! *
                              HeightSizeManager.h520),
                  ],
                )),
            Padding(
              padding: EdgeInsets.only(
                  top: SizeConfig.screenHeight! * HeightSizeManager.h30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      RunningController().navigateToRunningPage(context);
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          AssetsManager.rLocationImage,
                          width: SizeConfig.screenWidth! * WidthSizeManager.w25,
                          height:
                              SizeConfig.screenHeight! * HeightSizeManager.h25,
                        ),
                        Text(
                          StringsManager.setting,
                          style: TextStyle(
                              fontSize: SizeConfig.getResponsiveFontSize(12),
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      RunningController().navigateToRunningSettings(context);
                    },
                    child: Container(
                      width: SizeConfig.screenWidth! * WidthSizeManager.w225,
                      height: SizeConfig.screenHeight! * HeightSizeManager.h40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: AppColor.primary,
                          borderRadius: BorderRadius.circular(20)),
                      child: Image.asset(
                        AssetsManager.rPauseImage,
                        width: SizeConfig.screenWidth! * WidthSizeManager.w20,
                        height:
                            SizeConfig.screenHeight! * HeightSizeManager.h20,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Image.asset(
                          AssetsManager.rLockImage,
                          width: SizeConfig.screenWidth! * WidthSizeManager.w25,
                          height:
                              SizeConfig.screenHeight! * HeightSizeManager.h25,
                        ),
                        Text(
                          StringsManager.unloack,
                          style: TextStyle(
                              fontSize: SizeConfig.getResponsiveFontSize(12),
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
