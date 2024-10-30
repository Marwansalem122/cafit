import 'package:cafit/common/helper/color_extension.dart';
import 'package:cafit/core/config/size_config.dart';
import 'package:cafit/core/resourses/assets_manager.dart';
import 'package:cafit/core/resourses/height_size_manager.dart';
import 'package:cafit/core/resourses/width_size_manager.dart';
import 'package:flutter/material.dart';

class ConnectRow extends StatelessWidget {
  final Map tObj;
  final VoidCallback onPressed;
  final bool isActive;
  const ConnectRow(
      {super.key,
      required this.tObj,
      required this.isActive,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin:   EdgeInsets.symmetric(vertical: SizeConfig.screenHeight!*HeightSizeManager.h14),
        padding:  EdgeInsets.symmetric(vertical: SizeConfig.screenHeight!*HeightSizeManager.h14, horizontal: SizeConfig.screenWidth!*WidthSizeManager.w15),
        decoration: BoxDecoration(
          color: tObj["color"],
          borderRadius: BorderRadius.circular(5)

        ),
        child: Row(
          children: [
            Image.asset(tObj["icon"], width: SizeConfig.screenWidth!*WidthSizeManager.w30, height: SizeConfig.screenHeight!*HeightSizeManager.h30),

             SizedBox(width: SizeConfig.screenWidth!*WidthSizeManager.w15),
            Expanded(
              child: Text(
                tObj["name"],
                style: TextStyle(
                    color: AppColor.white,
                    fontSize: SizeConfig.getResponsiveFontSize(18),
                    fontWeight: FontWeight.w700),
              ),
            ),
             SizedBox(
              width: SizeConfig.screenWidth!*WidthSizeManager.w15,
            ),
            Image.asset(
             AssetsManager.tickImage,
              width: SizeConfig.screenWidth!*WidthSizeManager.w30,
              height: SizeConfig.screenHeight!*HeightSizeManager.h30,
              color: isActive ? Colors.green : Colors.white,
            )
          ],
        ),
      ),
    );
  }
}