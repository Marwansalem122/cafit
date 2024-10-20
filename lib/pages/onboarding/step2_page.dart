import 'package:cafit/common/helper/color_extension.dart';
import 'package:cafit/common/widgets/buttons/round_button.dart';
import 'package:cafit/common/widgets/fitness_level_selector.dart';
import 'package:cafit/controllers/step2_controller.dart';
import 'package:cafit/core/config/size_config.dart';
import 'package:cafit/core/resourses/assets_manager.dart';
import 'package:cafit/core/resourses/height_size_manager.dart';
import 'package:cafit/core/resourses/string_manager.dart';
import 'package:cafit/core/resourses/width_size_manager.dart';
import 'package:flutter/material.dart';

class Step2Page extends StatefulWidget {
  const Step2Page({super.key});

  @override
  State<Step2Page> createState() => _Step2ViewState();
}

class _Step2ViewState extends State<Step2Page> {
  var selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.white,
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Image.asset(
                AssetsManager.backIcon,
                width: SizeConfig.screenWidth! * WidthSizeManager.w25,
                height: SizeConfig.screenHeight! * HeightSizeManager.h25,
              )),
          title: Text(
            StringsManager.step2of3,
            style: TextStyle(
                color: AppColor.primary,
                fontSize: SizeConfig.getResponsiveFontSize(20),
                fontWeight: FontWeight.w700),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.screenHeight! * HeightSizeManager.h20),
                child: Text(
                  StringsManager.selectFitnessLevel,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColor.secondaryText,
                      fontSize: SizeConfig.getResponsiveFontSize(24),
                      fontWeight: FontWeight.w700),
                ),
              ),
              FitnessLevelSelector(
                title: StringsManager.beginer,
                subtitle: StringsManager.subTitleBeginer,
                isSelect: selectIndex == 0,
                onPressed: () {
                  setState(() {
                    selectIndex = 0;
                  });
                },
              ),
              FitnessLevelSelector(
                title: StringsManager.intermediate,
                subtitle: StringsManager.subTitleIntermediate,
                isSelect: selectIndex == 1,
                onPressed: () {
                  setState(() {
                    selectIndex = 1;
                  });
                },
              ),
              FitnessLevelSelector(
                title: StringsManager.advanced,
                subtitle: StringsManager.subTitleAdvanced,
                isSelect: selectIndex == 2,
                onPressed: () {
                  setState(() {
                    selectIndex = 2;
                  });
                },
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.screenHeight! * HeightSizeManager.h25,
                    horizontal: SizeConfig.screenWidth! * WidthSizeManager.w25),
                child: RoundButton(
                  title: StringsManager.next,
                  onPressed: () {
                    Step2Controller().navigateToStep3Page(context);
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
                    width: SizeConfig.screenWidth! * WidthSizeManager.w12,
                    height: SizeConfig.screenHeight! * HeightSizeManager.h12,
                    decoration: BoxDecoration(
                        color: 2 == pObj
                            ? AppColor.primary
                            : AppColor.gray.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(6)),
                  );
                }).toList(),
              ),
              SizedBox(
                height: SizeConfig.screenHeight! * HeightSizeManager.h12,
              )
            ],
          ),
        ));
  }
}
