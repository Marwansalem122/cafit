import 'package:cafit/common/helper/color_extension.dart';
import 'package:cafit/core/config/size_config.dart';
import 'package:cafit/core/resourses/height_size_manager.dart';
import 'package:cafit/core/resourses/width_size_manager.dart';
import 'package:flutter/material.dart';


class TabButton extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback onPressed;
  const TabButton(
      {super.key,
      required this.title,
      required this.isActive,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(vertical: SizeConfig.screenHeight!*HeightSizeManager.h14),
            child: Text(
              title,
              style: TextStyle(
                  color: isActive ? AppColor.primary : AppColor.secondaryText,
                  fontSize: SizeConfig.getResponsiveFontSize(16),
                  fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            color: isActive ? AppColor.primary : Colors.transparent,
            height: 2,
          )
        ],
      ),
    );
  }
}

class TabButton2 extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback onPressed;
  const TabButton2(
      {super.key,
      required this.title,
      required this.isActive,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin:  EdgeInsets.symmetric(vertical: SizeConfig.screenHeight!*HeightSizeManager.h14, horizontal: SizeConfig.screenWidth!*WidthSizeManager.w8),
        decoration: BoxDecoration(
            color: isActive ? AppColor.primary : Colors.grey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding:  EdgeInsets.symmetric(vertical: SizeConfig.screenHeight!*HeightSizeManager.h8, horizontal:  SizeConfig.screenWidth!*WidthSizeManager.w8),
          child: Text(
            title,
            maxLines: 1,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: isActive ? AppColor.white : AppColor.secondaryText,
                fontSize: SizeConfig.getResponsiveFontSize(16),
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}