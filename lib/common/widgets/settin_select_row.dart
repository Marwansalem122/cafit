import 'package:cafit/common/helper/color_extension.dart';
import 'package:cafit/core/config/size_config.dart';
import 'package:cafit/core/resourses/height_size_manager.dart';
import 'package:cafit/core/resourses/width_size_manager.dart';
import 'package:flutter/material.dart';


class SettingSelectRow extends StatelessWidget {
  final Map tObj;
  final VoidCallback onPressed;
  const SettingSelectRow(
      {super.key, required this.tObj, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: SizeConfig.screenHeight! * HeightSizeManager.h20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              tObj["name"],
              style: TextStyle(
                  color: AppColor.secondaryText,
                  fontSize: SizeConfig.getResponsiveFontSize(18),
                  fontWeight: FontWeight.w700),
            ),
            Container(
              padding:  EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth! * WidthSizeManager.w10, vertical: SizeConfig.screenHeight! * HeightSizeManager.h4),
              decoration: BoxDecoration(
                  border: Border.all(color: AppColor.secondaryText.withOpacity(0.5), width: 1),
                  borderRadius: BorderRadius.circular(5)),
                  child: Text(
                tObj["value"],
                style: TextStyle(
                    color: AppColor.secondaryText,
                    fontSize: SizeConfig.getResponsiveFontSize(14),
                    fontWeight: FontWeight.w700),
              ),
            )
          ],
        ),
      ),
    );
  }
}