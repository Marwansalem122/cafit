
import 'package:cafit/common/helper/color_extension.dart';
import 'package:cafit/core/config/size_config.dart';
import 'package:cafit/core/resourses/assets_manager.dart';
import 'package:cafit/core/resourses/height_size_manager.dart';
import 'package:cafit/core/resourses/string_manager.dart';
import 'package:cafit/core/resourses/width_size_manager.dart';
import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';


class RunningLengthView extends StatefulWidget {
  final double height;
  const RunningLengthView({super.key, required this.height});

  @override
  State<RunningLengthView> createState() => _RunningLengthViewState();
}

class _RunningLengthViewState extends State<RunningLengthView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    StringsManager.length,
                    style: TextStyle(
                        color: AppColor.secondaryText,
                        fontSize: SizeConfig.getResponsiveFontSize(18),
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Stack(alignment: Alignment.center, children: [
                  Column(
                    children: [
                      Text(
                        StringsManager.s250f5,
                        style: TextStyle(
                            color: AppColor.secondaryText,
                            fontSize: SizeConfig.getResponsiveFontSize(59),
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                       StringsManager.km,
                        style: TextStyle(
                            color: AppColor.secondaryText, fontSize: SizeConfig.getResponsiveFontSize(27)),
                      ),
                    ],
                  ),
                  SimpleCircularProgressBar(
                    size: SizeConfig.screenWidth!*WidthSizeManager.w292f5,
                    mergeMode: true,
                    animationDuration: 1,
                    backColor: const Color(0xffE6E6E6),
                    progressColors: [AppColor.primary],
                    progressStrokeWidth: 15,
                    backStrokeWidth: 15,
                    startAngle: 0,
                    valueNotifier: ValueNotifier(100),
                  ),
                ]),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        StringsManager.min50,
                        style: TextStyle(
                            color: AppColor.secondaryText,
                            fontSize: SizeConfig.getResponsiveFontSize(16),
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        StringsManager.max150,
                        style: TextStyle(
                            color: AppColor.secondaryText,
                            fontSize: SizeConfig.getResponsiveFontSize(16),
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: SizeConfig.screenHeight!*HeightSizeManager.h80,
            child: Column(
              children: [
                Container(
                  width: double.maxFinite,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: SizeConfig.screenWidth!*WidthSizeManager.w283f5),
                  child: Image.asset(
                    AssetsManager.rLocationImage,
                    width: SizeConfig.screenWidth!*WidthSizeManager.w25,
                    height: SizeConfig.screenHeight!*HeightSizeManager.h25,
                  ),
                ),
                Container(
                  height: 1,
                  color: AppColor.white2,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
