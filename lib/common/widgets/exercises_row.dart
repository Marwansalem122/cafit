
import 'package:cafit/common/helper/color_extension.dart';
import 'package:cafit/core/config/size_config.dart';
import 'package:cafit/core/resourses/assets_manager.dart';
import 'package:cafit/core/resourses/height_size_manager.dart';
import 'package:cafit/core/resourses/width_size_manager.dart';
import 'package:flutter/material.dart';


class ExercisesRow extends StatelessWidget {
  final String number;
  final String title;
  final String time;
  final bool isActive;
  final bool isLast;
  final VoidCallback onPressed;
  const ExercisesRow(
      {super.key,
      required this.number,
      required this.title,
      required this.time,
      this.isActive = false,
      this.isLast = false,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: SizeConfig.screenHeight!*HeightSizeManager.h16),
        child: Row(
          children: [
            Container(
              width: SizeConfig.screenWidth!*WidthSizeManager.w30,
              height: SizeConfig.screenHeight!*HeightSizeManager.h30,
              decoration: BoxDecoration(
                color: isActive
                    ? AppColor.primary.withOpacity(0.3)
                    : AppColor.gray.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15),
              ),
              alignment: Alignment.center,
              child: Container(
                width: 
SizeConfig.screenWidth!*WidthSizeManager.w25,
                height: SizeConfig.screenHeight!*HeightSizeManager.h25,
                decoration: BoxDecoration(
                  color: isActive ? AppColor.primary : AppColor.gray,
                  borderRadius: BorderRadius.circular(12.5),
                ),
                alignment: Alignment.center,
                child: isLast
                    ? Image.asset(
                        AssetsManager.starImage,
                        width: SizeConfig.screenWidth!*WidthSizeManager.w15,
                        height: SizeConfig.screenHeight!*HeightSizeManager.h16,
                      )
                    : Text(
                        number,
                        style: TextStyle(
                            color: AppColor.white,
                            fontSize: SizeConfig.getResponsiveFontSize(16),
                            fontWeight: FontWeight.w700),
                      ),
              ),
            ),
            Expanded(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth!*WidthSizeManager.w8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          color: AppColor.secondaryText,
                          fontSize: SizeConfig.getResponsiveFontSize(18),
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      time,
                      style: TextStyle(
                          color: AppColor.secondaryText.withOpacity(0.8),
                          fontSize: SizeConfig.getResponsiveFontSize(14),
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ),
            Image.asset(
              AssetsManager.informationIcon,
              width: SizeConfig.screenWidth!*WidthSizeManager.w20,
              height: SizeConfig.screenHeight!*HeightSizeManager.h20,
            )
          ],
        ),
      ),
    );
  }
}
