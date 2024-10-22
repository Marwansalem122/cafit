
import 'package:cafit/common/helper/color_extension.dart';
import 'package:cafit/core/config/size_config.dart';
import 'package:cafit/core/resourses/height_size_manager.dart';
import 'package:cafit/core/resourses/width_size_manager.dart';
import 'package:flutter/material.dart';

class ResponsesRow extends StatelessWidget {
  final Map rObj;
  const ResponsesRow({super.key, required this.rObj});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom:  SizeConfig.screenHeight!*HeightSizeManager.h25),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(
              rObj["image"],
              width:  SizeConfig.screenWidth!*WidthSizeManager.w25,
              height:  SizeConfig.screenHeight!*HeightSizeManager.h40,
              fit: BoxFit.cover,
            ),
          ),
           SizedBox(
            width: SizeConfig.screenWidth!*WidthSizeManager.w15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(rObj["name"],
                    style: TextStyle(
                        fontSize: SizeConfig.getResponsiveFontSize(14),
                        color: AppColor.secondaryText,
                        fontWeight: FontWeight.w700)),
                Text(rObj["time"],
                    style: TextStyle(
                        fontSize: SizeConfig.getResponsiveFontSize(12),
                        color: AppColor.secondaryText,
                        fontWeight: FontWeight.w300)),
                 SizedBox(
                  height:  SizeConfig.screenHeight!*HeightSizeManager.h4,
                ),
                Text(rObj["message"],
                    style: TextStyle(
                        fontSize: SizeConfig.getResponsiveFontSize(16),
                        color: AppColor.secondaryText))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
