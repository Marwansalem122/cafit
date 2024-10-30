
import 'package:cafit/common/helper/color_extension.dart';
import 'package:cafit/core/config/size_config.dart';
import 'package:cafit/core/resourses/string_manager.dart';
import 'package:flutter/material.dart';


class SettingSliderRow extends StatelessWidget {
  final Map tObj;
  final Function(double)? onChanged;
  const SettingSliderRow(
      {super.key, required this.tObj, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                tObj["name"],
                style: TextStyle(
                    color: AppColor.secondaryText,
                    fontSize:  SizeConfig.getResponsiveFontSize(18),
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),

        

          Row(
            
            children: [
              Text(
                StringsManager.s1,
                style: TextStyle(
                    color: AppColor.secondaryText.withOpacity(0.5),
                    fontSize:  SizeConfig.getResponsiveFontSize(14),
                    fontWeight: FontWeight.w700),
              ),
              Expanded(
                child: Slider(
                    activeColor: AppColor.primary,
                    max: 100.0,
                    min: 1.0,
                    value: double.tryParse(tObj["value"]) ?? 1,
                    onChanged: onChanged),
              ),
              Text(
               StringsManager.s100,
                style: TextStyle(
                    color: AppColor.secondaryText.withOpacity(0.5),
                    fontSize:  SizeConfig.getResponsiveFontSize(14),
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
