

import 'package:cafit/common/helper/color_extension.dart';
import 'package:cafit/core/config/size_config.dart';
import 'package:cafit/core/resourses/height_size_manager.dart';
import 'package:flutter/material.dart';


enum BorderButtonType { active, inactive }

class BorderButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final BorderButtonType type;
  const BorderButton({super.key, required this.title,this.type = BorderButtonType.active  , required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding:  EdgeInsets.symmetric(vertical: SizeConfig.screenHeight! * HeightSizeManager.h4),
        decoration: BoxDecoration(
            border: Border.all(color: type ==  BorderButtonType.active ? AppColor.primary : AppColor.gray.withOpacity(0.5), width: 1),
            borderRadius: BorderRadius.circular(5)),
        child: Text(
         title,
          textAlign: TextAlign.center,
          style: TextStyle(color: type == BorderButtonType.active ? AppColor.primary : AppColor.secondaryText, fontSize: SizeConfig.getResponsiveFontSize(20), fontWeight: type == BorderButtonType.active ? FontWeight.w700 : FontWeight.w400 ),
        ),
      ),
    );
  }
}
