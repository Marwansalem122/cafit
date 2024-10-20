import 'package:cafit/common/helper/color_extension.dart';
import 'package:cafit/common/helper/extension.dart';
import 'package:cafit/controllers/step3_controller.dart';
import 'package:cafit/core/config/size_config.dart';
import 'package:cafit/core/resourses/height_size_manager.dart';
import 'package:cafit/core/resourses/string_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectDateTime extends StatelessWidget {
  final DateTime? selectDate;
  final String title;
  final Function(DateTime) didChange;
  const SelectDateTime(
      {super.key,
      required this.title,
      required this.didChange,
      this.selectDate});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showCupertinoModalPopup(
            context: context,
            builder: (context) {
              return Container(
                height: SizeConfig.screenHeight! * HeightSizeManager.h250,
                color: AppColor.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {
                              Step3Controller().previousPage(context);
                            },
                            child: Text(
                              StringsManager.done,
                              style: TextStyle(
                                  color: AppColor.secondaryText,
                                  fontSize:
                                      SizeConfig.getResponsiveFontSize(16),
                                  fontWeight: FontWeight.w700),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight! * HeightSizeManager.h200,
                      child: CupertinoDatePicker(
                          initialDateTime: selectDate,
                          dateOrder: DatePickerDateOrder.ymd,
                          mode: CupertinoDatePickerMode.date,
                          onDateTimeChanged: didChange),
                    )
                  ],
                ),
              );
            });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: SizeConfig.screenHeight! * HeightSizeManager.h25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: AppColor.secondaryText,
                  fontSize: SizeConfig.getResponsiveFontSize(20),
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: SizeConfig.screenHeight! * HeightSizeManager.h10,
            ),
            Text(
              selectDate == null
                  ? StringsManager.selectDate
                  : selectDate!.stringFormat(format: "MMM dd, yyyy"),
              style: TextStyle(
                  color: AppColor.primary,
                  fontSize: SizeConfig.getResponsiveFontSize(18)),
            ),
          ],
        ),
      ),
    );
  }
}
