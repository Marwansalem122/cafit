import 'package:cafit/common/helper/color_extension.dart';
import 'package:cafit/core/config/size_config.dart';
import 'package:cafit/core/resourses/assets_manager.dart';
import 'package:cafit/core/resourses/height_size_manager.dart';
import 'package:cafit/core/resourses/width_size_manager.dart';
import 'package:flutter/material.dart';

class FitnessLevelSelector extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onPressed;
  final bool isSelect;

  const FitnessLevelSelector(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.isSelect,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.screenWidth! * WidthSizeManager.w25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColor.secondaryText,
                fontSize: SizeConfig.getResponsiveFontSize(20),
                fontWeight: FontWeight.w700),
          ),
          InkWell(
            onTap: onPressed,
            child: Padding(
              padding: EdgeInsets.only(
                  left: SizeConfig.screenWidth! * WidthSizeManager.w15,
                  top: SizeConfig.screenHeight! * HeightSizeManager.h25,
                  bottom: SizeConfig.screenHeight! * HeightSizeManager.h25),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      subtitle,
                      style: TextStyle(
                          color: isSelect
                              ? AppColor.primary
                              : AppColor.secondaryText,
                          fontSize: SizeConfig.getResponsiveFontSize(18),
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  if (isSelect)
                    Image.asset(
                      AssetsManager.tickImage,
                      width: SizeConfig.screenWidth! * WidthSizeManager.w20,
                      height: SizeConfig.screenHeight! * HeightSizeManager.h20,
                    )
                ],
              ),
            ),
          ),
          Divider(color: AppColor.divider, height: 1),
          SizedBox(height: SizeConfig.screenHeight! * HeightSizeManager.h20),
        ],
      ),
    );
  }
}
