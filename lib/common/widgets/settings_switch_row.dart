import 'package:cafit/common/helper/color_extension.dart';
import 'package:cafit/core/config/size_config.dart';
import 'package:cafit/core/resourses/height_size_manager.dart';
import 'package:flutter/cupertino.dart';


class SettingSwitchRow extends StatelessWidget {
  final Map tObj;
  final Function(bool)? onChanged;
  const SettingSwitchRow(
      {super.key,
      required this.tObj,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding:  EdgeInsets.symmetric(vertical: SizeConfig.screenHeight!*HeightSizeManager.h20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              tObj["name"],
              style: TextStyle(
                  color:  AppColor.secondaryText,
                  fontSize:  SizeConfig.getResponsiveFontSize(18),
                  fontWeight: FontWeight.w700),
            ),
            CupertinoSwitch(
              activeColor: AppColor.primary,
              value: tObj["value"] == "true" , onChanged: onChanged)
          ],
        ),
      
    );
  }
}