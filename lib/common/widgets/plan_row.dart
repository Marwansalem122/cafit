import 'package:cafit/common/helper/color_extension.dart';
import 'package:cafit/core/config/size_config.dart';
import 'package:cafit/core/resourses/assets_manager.dart';
import 'package:cafit/core/resourses/height_size_manager.dart';
import 'package:cafit/core/resourses/width_size_manager.dart';
import 'package:flutter/material.dart';


class PlanRow extends StatelessWidget {
  final Map mObj;
  final bool isSelect;
  final VoidCallback onPressed;
  const PlanRow({super.key, required this.mObj, this.isSelect = false, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: SizeConfig.screenHeight!*HeightSizeManager.h20),
        child: Row(
          children: [
            Image.asset(
              isSelect ? AssetsManager.activeImage : mObj["icon"],
              width:  SizeConfig.screenHeight!*WidthSizeManager.w35,
              height:  SizeConfig.screenHeight!*HeightSizeManager.h35,
            ),
             SizedBox(
              width:  SizeConfig.screenHeight!*WidthSizeManager.w20,
            ),
            Expanded(
              child: Text(
                mObj["name"],
                style: TextStyle(
                    color: isSelect  ? AppColor.primary : AppColor.secondaryText,
                    fontSize: SizeConfig.getResponsiveFontSize(18),
                    fontWeight: FontWeight.w700),
              ),
            ),
      
            if(mObj["right_icon"] != "" )
             Padding(
               padding:  EdgeInsets.symmetric(horizontal:  SizeConfig.screenHeight!*WidthSizeManager.w25),
               child: Image.asset(
                mObj["right_icon"],
                width:  SizeConfig.screenHeight!*WidthSizeManager.w25,
                height:  SizeConfig.screenHeight!*HeightSizeManager.h25,
                     ),
             ),
      
          ],
        ),
      ),
    );
  }
}