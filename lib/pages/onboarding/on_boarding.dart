import 'dart:developer';

import 'package:cafit/common/helper/color_extension.dart';
import 'package:cafit/common/widgets/buttons/round_button.dart';
import 'package:cafit/controllers/on_boarding_controller.dart';
import 'package:cafit/core/config/size_config.dart';
import 'package:cafit/core/resourses/assets_manager.dart';
import 'package:cafit/core/resourses/fonts_size_manager.dart';
import 'package:cafit/core/resourses/height_size_manager.dart';
import 'package:cafit/core/resourses/string_manager.dart';
import 'package:cafit/core/resourses/width_size_manager.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final PageController _pageController = PageController();
  int selectedPage = 0;
  @override
  void initState() {
    _pageController.addListener(() {
      selectedPage = _pageController.page?.round() ?? 0;
      if (mounted) {
        setState(() {});
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.primary,
        body: SafeArea(
          child: Stack(children: [
            Image.asset(
              AssetsManager.onBoardingBackgroundImage,
              width: double.infinity,
              height: SizeConfig.screenHeight! * 0.9,
              fit: BoxFit.cover,
            ),
            PageView.builder(
                controller: _pageController,
                itemCount: OnBoardingController.listPagesDetails.length,
                itemBuilder: (context, index) {
                  var pobj =
                      OnBoardingController.listPagesDetails[index] as Map;

                  return Column(
                    children: [
                      SizedBox(
                          height:
                              SizeConfig.screenHeight! * HeightSizeManager.h40),
                      Text(pobj["title"],
                          style: TextStyle(
                              fontSize: SizeConfig.getResponsiveFontSize(
                                  FontsSizeManager.s24),
                              fontWeight: FontWeight.w700,
                              color: AppColor.primary)),
                      SizedBox(
                          height:
                              SizeConfig.screenHeight! * HeightSizeManager.h24),
                      Image.asset(
                        pobj["image"],
                        height:
                            SizeConfig.screenHeight! * HeightSizeManager.h290,
                        width: SizeConfig.screenWidth! * WidthSizeManager.w360,
                      ),
                      SizedBox(height: SizeConfig.screenHeight! * 0.18),
                      Text(pobj["subTitle"],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: SizeConfig.getResponsiveFontSize(
                                  FontsSizeManager.s14),
                              fontWeight: FontWeight.w700,
                              color: AppColor.white)),
                    ],
                  );
                }),
            Column(
              children: [
                // const Spacer(),
                SizedBox(
                    height: SizeConfig.screenHeight! * HeightSizeManager.h650),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: OnBoardingController.listPagesDetails.map((pObj) {
                    var index =
                        OnBoardingController.listPagesDetails.indexOf(pObj);
                    log(index.toString());
                    return Container(
                      margin: EdgeInsets.symmetric(
                          horizontal:
                              SizeConfig.screenWidth! * WidthSizeManager.w10),
                      width: SizeConfig.screenWidth! * WidthSizeManager.w10,
                      height: SizeConfig.screenWidth! * HeightSizeManager.h16,
                      decoration: BoxDecoration(
                          color: selectedPage == index
                              ? AppColor.white
                              : AppColor.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(6)),
                    );
                  }).toList(),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical:
                          SizeConfig.screenHeight! * HeightSizeManager.h20,
                      horizontal:
                          SizeConfig.screenWidth! * WidthSizeManager.w25),
                  child: RoundButton(
                    title: StringsManager.start,
                    type: RoundButtonType.primaryText,
                    onPressed: () {
                      OnBoardingController().navigateToStep1Page(context);
                    },
                  ),
                ),
              ],
            ),
          ]),
        ));
  }
}
