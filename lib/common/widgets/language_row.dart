import 'package:cafit/common/helper/color_extension.dart';
import 'package:cafit/core/config/size_config.dart';
import 'package:cafit/core/resourses/assets_manager.dart';
import 'package:cafit/core/resourses/height_size_manager.dart';
import 'package:cafit/core/resourses/width_size_manager.dart';
import 'package:flutter/material.dart';


class LanguageRow extends StatelessWidget {
  final Map tObj;
  final VoidCallback onPressed;
  final bool isActive;
  const LanguageRow(
      {super.key,
      required this.tObj,
      required this.isActive,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: SizeConfig.screenWidth! * WidthSizeManager.w20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              tObj["name"],
              style: TextStyle(
                  color: isActive ? AppColor.primary : AppColor.secondaryText,
                  fontSize: SizeConfig.getResponsiveFontSize(18),
                  fontWeight: FontWeight.w700),
            ),

            if(isActive)
            Image.asset(
              AssetsManager.tickImage,
              width: SizeConfig.screenWidth! * WidthSizeManager.w30,
              height: SizeConfig.screenHeight! * HeightSizeManager.h30
            )
          ],
        ),
      ),
    );
  }
}