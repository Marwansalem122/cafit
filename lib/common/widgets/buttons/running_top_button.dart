
import 'package:cafit/common/helper/color_extension.dart';
import 'package:cafit/core/config/size_config.dart';
import 'package:cafit/core/resourses/height_size_manager.dart';
import 'package:cafit/core/resourses/width_size_manager.dart';
import 'package:flutter/material.dart';

class RunningTopButton extends StatelessWidget {
  final String icon;
  final bool isActive;
  final VoidCallback onPressed;
  const RunningTopButton({super.key, required this.icon , required this.isActive , required this.onPressed });

  @override
  Widget build(BuildContext context) {
    return Expanded(
                      child: InkWell(
                        onTap: onPressed,
                        child: Image.asset(
                          icon,
                          width: SizeConfig.screenWidth!*WidthSizeManager.w25,
                          height: SizeConfig.screenHeight!*HeightSizeManager.h25,
                          color: isActive ? AppColor.primaryText : AppColor.gray.withOpacity(0.5) ,
                        ),
                      ),
                    );
  }
}
