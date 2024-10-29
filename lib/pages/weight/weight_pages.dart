import 'package:cafit/common/helper/color_extension.dart';
import 'package:cafit/common/widgets/border_button.dart';
import 'package:cafit/controllers/wight_controller.dart';
import 'package:cafit/core/config/size_config.dart';
import 'package:cafit/core/resourses/assets_manager.dart';
import 'package:cafit/core/resourses/height_size_manager.dart';
import 'package:cafit/core/resourses/string_manager.dart';
import 'package:cafit/core/resourses/width_size_manager.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class WeightPage extends StatefulWidget {
  const WeightPage({super.key});

  @override
  State<WeightPage> createState() => _WeightPageState();
}

class _WeightPageState extends State<WeightPage> {
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
          StringsManager.checkYourProcess,
          style: TextStyle(
              color: AppColor.white,
              fontSize: SizeConfig.getResponsiveFontSize(20),
              fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.screenHeight! * HeightSizeManager.h8,
                    horizontal: SizeConfig.screenWidth! * WidthSizeManager.w20),
                child: Row(
                  children: [
                    Expanded(
                      child: BorderButton(
                        title: StringsManager.checkProcess,
                        type: BorderButtonType.inactive,
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      width: SizeConfig.screenWidth! * WidthSizeManager.w15,
                    ),
                    Expanded(
                      child: BorderButton(
                        title: StringsManager.myWeigth,
                        onPressed: () {},
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.screenHeight! * HeightSizeManager.h8,
                  horizontal: SizeConfig.screenWidth! * WidthSizeManager.w20),
              child: Text(
                StringsManager.addMorePhoto,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColor.secondaryText,
                    fontSize: SizeConfig.getResponsiveFontSize(14)),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.screenHeight! * HeightSizeManager.h8),
              child: SizedBox(
                width: SizeConfig.screenWidth,
                height: SizeConfig.screenHeight! * HeightSizeManager.h400,
                child: CarouselSlider.builder(
                  options: CarouselOptions(
                      autoPlay: false,
                      aspectRatio: 0.5,
                      enlargeCenterPage: true,
                      enableInfiniteScroll: false,
                      viewportFraction: 0.65,
                      enlargeFactor: 0.4,
                      enlargeStrategy: CenterPageEnlargeStrategy.zoom),
                  itemCount: WeightController.myWeightArr.length,
                  itemBuilder:
                      (BuildContext context, int itemIndex, int index) {
                    var dObj =
                        WeightController.myWeightArr[index] as Map? ?? {};
                    return Container(
                      margin: EdgeInsets.symmetric(
                          vertical:
                              SizeConfig.screenHeight! * HeightSizeManager.h10,
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
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(dObj["image"].toString(),
                            width: double.maxFinite,
                            height: 350,
                            fit: BoxFit.cover),
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.screenHeight! * HeightSizeManager.h8,
                  horizontal: SizeConfig.screenWidth! * WidthSizeManager.w20),
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
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.screenHeight! * HeightSizeManager.h8),
              width: 160,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: AppColor.gray.withOpacity(0.5), width: 1),
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                StringsManager.k74g,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColor.primary,
                    fontSize: SizeConfig.getResponsiveFontSize(24),
                    fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.screenHeight! * HeightSizeManager.h8,
                  horizontal: SizeConfig.screenWidth! * WidthSizeManager.w20),
              child: Text(
                StringsManager.loremText2,
                style: TextStyle(color: AppColor.secondaryText, fontSize: 16),
              ),
            ),
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
