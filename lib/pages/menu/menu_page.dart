import 'dart:ui';
import 'package:cafit/common/helper/color_extension.dart';
import 'package:cafit/common/widgets/menu_call.dart';
import 'package:cafit/common/widgets/plan_row.dart';
import 'package:cafit/core/config/size_config.dart';
import 'package:cafit/core/resourses/assets_manager.dart';
import 'package:cafit/core/resourses/height_size_manager.dart';
import 'package:cafit/core/resourses/string_manager.dart';
import 'package:cafit/core/resourses/width_size_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cafit/controllers/menu_controller.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          width: SizeConfig.screenWidth,
          backgroundColor: Colors.transparent,
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 5.0,
              sigmaY: 5,
            ),
            child: Stack(
              children: [
                Container(
                  width: SizeConfig.screenWidth! * WidthSizeManager.w351,
                  decoration: BoxDecoration(color: AppColor.white),
                  child: SafeArea(
                      child: Padding(
                    padding: EdgeInsets.only(
                        left: SizeConfig.screenHeight! * WidthSizeManager.w25),
                    child: Column(
                      children: [
                        SizedBox(
                          height:
                              SizeConfig.screenHeight! * HeightSizeManager.h35,
                        ),
                        SizedBox(
                          height: kTextTabBarHeight,
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(AssetsManager.u1Image,
                                    width: SizeConfig.screenHeight! *
                                        WidthSizeManager.w30,
                                    height: SizeConfig.screenHeight! *
                                        HeightSizeManager.h45,
                                    fit: BoxFit.cover),
                              ),
                              SizedBox(
                                width: SizeConfig.screenHeight! *
                                    WidthSizeManager.w20,
                              ),
                              Expanded(
                                child: Text(
                                  StringsManager.trainingPlan,
                                  style: TextStyle(
                                      fontSize:
                                          SizeConfig.getResponsiveFontSize(20),
                                      color: AppColor.secondaryText,
                                      fontWeight: FontWeight.w700),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height:
                              SizeConfig.screenHeight! * HeightSizeManager.h14,
                        ),
                        const Divider(
                          color: Colors.black26,
                          height: 1,
                        ),
                        Expanded(
                            child: ListView.builder(
                                shrinkWrap: true,
                                padding: EdgeInsets.symmetric(
                                    vertical: SizeConfig.screenHeight! *
                                        HeightSizeManager.h50),
                                itemCount: MenuPageController.planArr.length,
                                itemBuilder: (context, index) {
                                  var itemObj = MenuPageController
                                          .planArr[index] as Map? ??
                                      {};

                                  return PlanRow(
                                    mObj: itemObj,
                                    onPressed: () {
                                      MenuPageController()
                                          .navigateBack(context);
                                      if (index == 1) {
                                        MenuPageController()
                                            .navigateToYogaPage(context);
                                      }
                                    },
                                  );
                                })),
                        const Divider(
                          color: Colors.black26,
                          height: 1,
                        ),
                        SizedBox(
                          height:
                              SizeConfig.screenHeight! * HeightSizeManager.h14,
                        ),
                        SizedBox(
                          height: kTextTabBarHeight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                StringsManager.switchAccount,
                                style: TextStyle(
                                    fontSize:
                                        SizeConfig.getResponsiveFontSize(18),
                                    color: AppColor.secondaryText,
                                    fontWeight: FontWeight.w700),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    right: SizeConfig.screenHeight! *
                                        WidthSizeManager.w20),
                                child: Image.asset(AssetsManager.nextImage,
                                    width: SizeConfig.screenHeight! *
                                        WidthSizeManager.w20,
                                    height: SizeConfig.screenHeight! *
                                        HeightSizeManager.h16),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: kToolbarHeight - 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              right: SizeConfig.screenWidth! *
                                  WidthSizeManager.w15),
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Image.asset(
                                AssetsManager.menuCloseImage,
                                width: SizeConfig.screenHeight! *
                                    WidthSizeManager.w25,
                                height: SizeConfig.screenHeight! *
                                    HeightSizeManager.h25,
                              )),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )),
      body: NestedScrollView(
        // scrollDirection: Axis.,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Colors.black,
              expandedHeight: SizeConfig.screenWidth! * WidthSizeManager.w270,
              collapsedHeight: kToolbarHeight + 20,
              flexibleSpace: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Image.asset(
                    AssetsManager.firstImage,
                    width: SizeConfig.screenWidth,
                    height: SizeConfig.screenHeight! * HeightSizeManager.h640,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    width: SizeConfig.screenWidth,
                    height: SizeConfig.screenHeight! * HeightSizeManager.h640,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.transparent, Colors.black],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal:
                            SizeConfig.screenHeight! * WidthSizeManager.w25,
                        vertical:
                            SizeConfig.screenHeight! * HeightSizeManager.h25),
                    child: Row(
                      children: [
                        Container(
                          width:
                              SizeConfig.screenHeight! * WidthSizeManager.w54,
                          height:
                              SizeConfig.screenHeight! * HeightSizeManager.h45,
                          decoration: BoxDecoration(
                              color: AppColor.white,
                              borderRadius: BorderRadius.circular(27)),
                          alignment: Alignment.center,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Image.asset(
                                AssetsManager.u1Image,
                                width: SizeConfig.screenHeight! *
                                    WidthSizeManager.w50,
                                height: SizeConfig.screenHeight! *
                                    HeightSizeManager.h50,
                                fit: BoxFit.cover,
                              )),
                        ),
                        SizedBox(
                          width:
                              SizeConfig.screenHeight! * WidthSizeManager.w15,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(StringsManager.codeForAny,
                                  style: TextStyle(
                                      fontSize:
                                          SizeConfig.getResponsiveFontSize(20),
                                      color: AppColor.white,
                                      fontWeight: FontWeight.w700)),
                              SizedBox(
                                height: SizeConfig.screenHeight! *
                                    HeightSizeManager.h4,
                              ),
                              Text(StringsManager.profile,
                                  style: TextStyle(
                                      fontSize:
                                          SizeConfig.getResponsiveFontSize(15),
                                      color: AppColor.white,
                                      fontWeight: FontWeight.w500))
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ];
        },
        body: GridView.builder(
          padding: EdgeInsets.symmetric(
              vertical: SizeConfig.screenHeight! * HeightSizeManager.h16,
              horizontal: SizeConfig.screenHeight! * WidthSizeManager.w15),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              childAspectRatio: 1),
          itemCount: MenuPageController.menuArr.length,
          itemBuilder: ((context, index) {
            var mObj = MenuPageController.menuArr[index] as Map? ?? {};
            return MenuCell(
              mObj: mObj,
              onPressed: () {
                switch (mObj["tag"].toString()) {
                  case "1":
                    MenuPageController().navigateToHomePage(context);
                    break;
                  case "2":
                    MenuPageController().navigateToWeightPage(context);

                    break;
                  case "3":
                    Scaffold.of(context).openDrawer();
                    break;
                  case "5":
                    MenuPageController().navigateToMealPlanPage2(context);

                    break;
                  case "6":
                    MenuPageController().navigateToSchedulePage(context);

                    break;
                  case "7":
                    MenuPageController().navigateToRunningPage(context);

                    // MenuPageController().navigateToMealPlanPage2(context);
                    break;
                  case "8":
                    MenuPageController().navigateToExercise2Page(context);

                    break;
                  case "9":
                    // Navigator.push(
                    // context,
                    // MaterialPageRoute(
                    // builder: (context) => const TipsView()));
                    MenuPageController().navigateToExercisePage(context);
                    break;
                  case "10":
                    // Navigator.push(
                    // context,
                    // MaterialPageRoute(
                    // builder: (context) => const SettingsView()));
                    break;
                  default:
                }
              },
            );
          }),
        ),
      ),
    );
  }
}
