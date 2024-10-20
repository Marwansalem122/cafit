import 'package:cafit/common/helper/color_extension.dart';
import 'package:cafit/common/widgets/buttons/round_button.dart';
import 'package:cafit/controllers/step1_controller.dart';
import 'package:cafit/core/config/size_config.dart';
import 'package:cafit/core/resourses/assets_manager.dart';
import 'package:cafit/core/resourses/height_size_manager.dart';
import 'package:cafit/core/resourses/string_manager.dart';
import 'package:cafit/core/resourses/width_size_manager.dart';
import 'package:flutter/material.dart';

class Step1Page extends StatelessWidget {
  const Step1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.white,
          centerTitle: true,
          title: Text(
            StringsManager.step1of3,
            style: TextStyle(
                color: AppColor.primary,
                fontSize: SizeConfig.getResponsiveFontSize(20),
                fontWeight: FontWeight.w700),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              const Spacer(),
              Image.asset(
                AssetsManager.step1Image,
                width: SizeConfig.screenWidth! * WidthSizeManager.w270,
                height: SizeConfig.screenHeight! * HeightSizeManager.h240,
                fit: BoxFit.contain,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.screenWidth! * WidthSizeManager.w30),
                child: Text(
                  StringsManager.welcome,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColor.secondaryText,
                      fontSize: SizeConfig.getResponsiveFontSize(24),
                      fontWeight: FontWeight.w700),
                ),
              ),
              Text(
                StringsManager.subSummary,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColor.secondaryText,
                    fontSize: SizeConfig.getResponsiveFontSize(16),
                    fontWeight: FontWeight.w300),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.screenHeight! * HeightSizeManager.h30,
                    horizontal: SizeConfig.screenWidth! * WidthSizeManager.w25),
                child: RoundButton(
                  title: StringsManager.getStarted,
                  onPressed: () {
                    Step1Controller().navigateToStep2Page(context);
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => const Step2View() ));
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [1, 2, 3].map((pObj) {
                  return Container(
                    margin: EdgeInsets.symmetric(
                        horizontal:
                            SizeConfig.screenWidth! * WidthSizeManager.w10),
                    width: SizeConfig.screenWidth! * WidthSizeManager.w10,
                    height: SizeConfig.screenWidth! * HeightSizeManager.h16,
                    decoration: BoxDecoration(
                        color: 1 == pObj
                            ? AppColor.primary
                            : AppColor.gray.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(6)),
                  );
                }).toList(),
              ),
              SizedBox(
                height: SizeConfig.screenHeight! * HeightSizeManager.h14,
              )
            ],
          ),
        ));
  }
}
