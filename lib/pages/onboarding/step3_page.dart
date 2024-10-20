import 'package:cafit/common/helper/color_extension.dart';
import 'package:cafit/common/widgets/buttons/round_button.dart';
import 'package:cafit/common/widgets/select_date_time.dart';
import 'package:cafit/common/widgets/select_picker.dart';
import 'package:cafit/controllers/step3_controller.dart';
import 'package:cafit/core/config/size_config.dart';
import 'package:cafit/core/resourses/assets_manager.dart';
import 'package:cafit/core/resourses/height_size_manager.dart';
import 'package:cafit/core/resourses/string_manager.dart';
import 'package:cafit/core/resourses/width_size_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Step3Page extends StatefulWidget {
  const Step3Page({super.key});

  @override
  State<Step3Page> createState() => _Step3PageState();
}

class _Step3PageState extends State<Step3Page> {
  bool isAppleHealth = true;
  DateTime? selectDate;
  String? selectHeight;
  String? selectWeight;
  bool isMale = true;

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
              icon: Image.asset(AssetsManager.backIcon,
                  width: SizeConfig.screenWidth! * WidthSizeManager.w25,
                  height: SizeConfig.screenHeight! * HeightSizeManager.h25)),
          title: Text(
            StringsManager.step3of3,
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
                    vertical: SizeConfig.screenHeight! * HeightSizeManager.h10),
                child: Text(
                  StringsManager.personalDetails,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColor.secondaryText,
                      fontSize: SizeConfig.getResponsiveFontSize(24),
                      fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.screenWidth! * WidthSizeManager.w25),
                child: Text(
                  StringsManager.subTitleStep3of3,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColor.secondaryText,
                      fontSize: SizeConfig.getResponsiveFontSize(16)),
                ),
              ),
              SizedBox(
                  height: SizeConfig.screenHeight! * HeightSizeManager.h20),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.screenWidth! * WidthSizeManager.w25),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                StringsManager.appleHealth,
                                style: TextStyle(
                                    color: AppColor.secondaryText,
                                    fontSize:
                                        SizeConfig.getResponsiveFontSize(20),
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                  height: SizeConfig.screenHeight! *
                                      HeightSizeManager.h10),
                              Text(
                                StringsManager.subTitle2Step3of3,
                                style: TextStyle(
                                    color: AppColor.secondaryText,
                                    fontSize:
                                        SizeConfig.getResponsiveFontSize(16)),
                              ),
                            ],
                          ),
                        ),
                        CupertinoSwitch(
                            activeColor: AppColor.primary,
                            value: isAppleHealth,
                            onChanged: (newVal) {
                              setState(() {
                                isAppleHealth = isAppleHealth;
                              });
                            })
                      ],
                    ),
                    SizedBox(
                        height:
                            SizeConfig.screenHeight! * HeightSizeManager.h20),
                    Divider(color: AppColor.divider, height: 1),
                    SelectDateTime(
                      title: StringsManager.birthday,
                      didChange: (newDate) {
                        setState(() {
                          selectDate = newDate;
                        });
                      },
                      selectDate: selectDate,
                    ),
                    Divider(color: AppColor.divider, height: 1),
                    SelectPicker(
                      allVal: Step3Controller.heigths,
                      selectVal: selectHeight,
                      title: StringsManager.height,
                      didChange: (newVal) {
                        setState(() {
                          selectHeight = newVal;
                        });
                      },
                    ),
                    Divider(color: AppColor.divider, height: 1),
                    SelectPicker(
                      allVal: Step3Controller.widths,
                      selectVal: selectWeight,
                      title: StringsManager.weight,
                      didChange: (newVal) {
                        setState(() {
                          selectWeight = newVal;
                        });
                      },
                    ),
                    Divider(color: AppColor.divider, height: 1),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical:
                              SizeConfig.screenHeight! * HeightSizeManager.h30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            StringsManager.gender,
                            style: TextStyle(
                                color: AppColor.secondaryText,
                                fontSize: SizeConfig.getResponsiveFontSize(20),
                                fontWeight: FontWeight.w700),
                          ),
                          CupertinoSegmentedControl(
                            groupValue: isMale,
                            selectedColor: AppColor.primary,
                            unselectedColor: AppColor.white,
                            borderColor: AppColor.primary,
                            children: {
                              true: Text(StringsManager.male,
                                  style: TextStyle(
                                      fontSize:
                                          SizeConfig.getResponsiveFontSize(
                                              18))),
                              false: Text(StringsManager.female,
                                  style: TextStyle(
                                      fontSize:
                                          SizeConfig.getResponsiveFontSize(18)))
                            },
                            onValueChanged: (isMaleVal) {
                              setState(() {
                                isMale = isMaleVal;
                              });
                            },
                            padding: EdgeInsets.zero,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.screenHeight! * HeightSizeManager.h20,
                    horizontal: SizeConfig.screenWidth! * WidthSizeManager.w25),
                child: RoundButton(
                  title: StringsManager.start,
                  onPressed: () {
                    Step3Controller().navigateToMenuPage(context);
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
                        color: 3 == pObj
                            ? AppColor.primary
                            : AppColor.gray.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(6)),
                  );
                }).toList(),
              ),
              SizedBox(height: SizeConfig.screenHeight! * HeightSizeManager.h10)
            ],
          ),
        ));
  }
}
