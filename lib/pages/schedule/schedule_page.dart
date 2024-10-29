import 'package:cafit/common/helper/color_extension.dart';
import 'package:cafit/controllers/schedule_controller.dart';
import 'package:cafit/core/config/size_config.dart';
import 'package:cafit/core/resourses/assets_manager.dart';
import 'package:cafit/core/resourses/height_size_manager.dart';
import 'package:cafit/core/resourses/string_manager.dart';
import 'package:cafit/core/resourses/width_size_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:intl/intl.dart' show DateFormat;

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  DateTime nowTime = DateTime.now();
  DateTime targetDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        centerTitle: true,
        elevation: 0.1,
        leading: IconButton(
            onPressed: () {
              ScheduleController().navigateToBack(context);
            },
            icon: Image.asset(
              AssetsManager.blackWhiteImage,
              width: SizeConfig.screenWidth! * WidthSizeManager.w25,
              height: SizeConfig.screenHeight! * HeightSizeManager.h25,
            )),
        title: Text(
          StringsManager.schedule,
          style: TextStyle(
              color: AppColor.white,
              fontSize: SizeConfig.getResponsiveFontSize(20),
              fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.screenHeight! * HeightSizeManager.h8,
                    horizontal: SizeConfig.screenWidth! * WidthSizeManager.w20),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            DateFormat.MMMM().format(targetDate).toUpperCase(),
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: AppColor.secondaryText,
                                fontSize: SizeConfig.getResponsiveFontSize(20),
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            DateFormat.y().format(targetDate),
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: AppColor.secondaryText,
                              fontSize: SizeConfig.getResponsiveFontSize(16),
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          targetDate =
                              DateTime(targetDate.year, targetDate.month - 1);
                        });
                      },
                      icon: Image.asset(
                        AssetsManager.blackFoImage,
                        width: SizeConfig.screenWidth! * WidthSizeManager.w15,
                        height:
                            SizeConfig.screenHeight! * HeightSizeManager.h14,
                        color: AppColor.secondaryText.withOpacity(0.7),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          targetDate =
                              DateTime(targetDate.year, targetDate.month + 1);
                        });
                      },
                      icon: Image.asset(
                        AssetsManager.nextGoImage,
                        width: SizeConfig.screenWidth! * WidthSizeManager.w15,
                        height:
                            SizeConfig.screenHeight! * HeightSizeManager.h14,
                        color: AppColor.secondaryText.withOpacity(0.7),
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.screenHeight! * HeightSizeManager.h8,
                  horizontal: SizeConfig.screenWidth! * WidthSizeManager.w15),
              child: Stack(
                children: [
                  CalendarCarousel(
                    todayButtonColor: AppColor.primary,
                    todayBorderColor: AppColor.primary,
                    selectedDayButtonColor: AppColor.primary,
                    selectedDayBorderColor: AppColor.primary,
                    onDayPressed: (DateTime date, List events) {
                      // this.setState(() => nowTime = date);
                    },
                    onCalendarChanged: (date) {
                      setState(() {
                        targetDate = date;
                      });
                    },
                    selectedDayTextStyle: TextStyle(
                        color: AppColor.white,
                        fontSize: SizeConfig.getResponsiveFontSize(16),
                        fontWeight: FontWeight.w700),
                    daysTextStyle: TextStyle(
                        color: AppColor.primaryText,
                        fontSize: SizeConfig.getResponsiveFontSize(16),
                        fontWeight: FontWeight.w700),
                    weekDayFormat: WeekdayFormat.narrow,
                    weekdayTextStyle: TextStyle(
                        color: AppColor.gray,
                        fontSize: SizeConfig.getResponsiveFontSize(20)),
                    weekendTextStyle: TextStyle(
                        color: AppColor.primaryText,
                        fontSize: SizeConfig.getResponsiveFontSize(16),
                        fontWeight: FontWeight.w700),

                    thisMonthDayBorderColor: Colors.transparent,
                    showHeader: false,
                    customDayBuilder: (
                      /// you can provide your own build function to make custom day containers
                      bool isSelectable,
                      int index,
                      bool isSelectedDay,
                      bool isToday,
                      bool isPrevMonthDay,
                      TextStyle textStyle,
                      bool isNextMonthDay,
                      bool isThisMonthDay,
                      DateTime day,
                    ) {
                      var selectObj = ScheduleController.dateArr.firstWhere(
                          (eDate) =>
                              day.day == eDate.day &&
                              day.month == eDate.month &&
                              day.year == eDate.year,
                          orElse: () => null);

                      if (selectObj != null) {
                        return Container(
                          width: SizeConfig.screenWidth! * WidthSizeManager.w35,
                          height:
                              SizeConfig.screenHeight! * HeightSizeManager.h35,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20)),
                          alignment: Alignment.center,
                          child: Text(
                            day.day.toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColor.white,
                                fontSize: SizeConfig.getResponsiveFontSize(18),
                                fontWeight: FontWeight.w700),
                          ),
                        );
                      }
                    },
                    weekFormat: false,

                    height: SizeConfig.screenHeight! * HeightSizeManager.h425,
                    selectedDateTime: nowTime,
                    targetDateTime: targetDate,
                    daysHaveCircularBorder: true,

                    /// null for not rendering any border, true for circular border, false for rectangular border
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: SizeConfig.screenHeight! * HeightSizeManager.h30),
                    child: const Divider(
                      color: Colors.black26,
                      height: 1,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.screenHeight! * HeightSizeManager.h8,
                  horizontal: SizeConfig.screenWidth! * WidthSizeManager.w20),
              child: Text(
                StringsManager.note,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColor.secondaryText,
                    fontSize: SizeConfig.getResponsiveFontSize(24),
                    fontWeight: FontWeight.w700),
              ),
            ),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.screenWidth! * WidthSizeManager.w25),
                shrinkWrap: true,
                itemCount: ScheduleController.notArr.length,
                itemBuilder: (context, index) {
                  var iObj = ScheduleController.notArr[index] as Map? ?? {};

                  return Container(
                    padding: EdgeInsets.only(
                        bottom:
                            SizeConfig.screenHeight! * HeightSizeManager.h14,
                        left: SizeConfig.screenWidth! * WidthSizeManager.w8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: SizeConfig.screenWidth! * WidthSizeManager.w35,
                          height:
                              SizeConfig.screenHeight! * HeightSizeManager.h35,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20)),
                          alignment: Alignment.center,
                          child: Text(
                            iObj["day"],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColor.white,
                                fontSize: SizeConfig.getResponsiveFontSize(18),
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        SizedBox(
                          width: SizeConfig.screenWidth! * WidthSizeManager.w15,
                        ),
                        Expanded(
                            child: Text(
                          iObj["detail"],
                          style: TextStyle(
                              color: AppColor.secondaryText,
                              fontSize: SizeConfig.getResponsiveFontSize(16)),
                        ))
                      ],
                    ),
                  );
                })
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
