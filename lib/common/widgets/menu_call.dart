
import 'package:cafit/common/helper/color_extension.dart';
import 'package:cafit/core/config/size_config.dart';
import 'package:cafit/core/resourses/height_size_manager.dart';
import 'package:cafit/core/resourses/width_size_manager.dart';
import 'package:flutter/material.dart';


class MenuCell extends StatelessWidget {
  final Map mObj;
  final VoidCallback onPressed;

  const MenuCell({super.key, required this.mObj, required this.onPressed });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, 2)
            ),
          ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Image.asset( mObj["image"].toString() , width: SizeConfig.screenHeight!*WidthSizeManager.w35, height: SizeConfig.screenHeight!*HeightSizeManager.h35, fit: BoxFit.contain),

             SizedBox(height: SizeConfig.screenHeight!*HeightSizeManager.h10,),

            Text(mObj["name"],
                style: TextStyle(
                    fontSize: 14,
                    color: AppColor.secondaryText,
                    fontWeight: FontWeight.w700))

          ],
        ),
      ),
    );
  }
}