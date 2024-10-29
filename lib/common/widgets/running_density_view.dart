import 'package:cafit/common/helper/color_extension.dart';
import 'package:cafit/common/widgets/clock_tik.dart';
import 'package:cafit/controllers/running_controller.dart';
import 'package:cafit/core/config/size_config.dart';
import 'package:cafit/core/resourses/height_size_manager.dart';
import 'package:cafit/core/resourses/string_manager.dart';
import 'package:cafit/core/resourses/width_size_manager.dart';
import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class RunningDensityView extends StatefulWidget {
  final double height;
  const RunningDensityView({super.key, required this.height});

  @override
  State<RunningDensityView> createState() => _RunningDensityViewState();
}

class _RunningDensityViewState extends State<RunningDensityView> {
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
                    StringsManager.density,
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
                        StringsManager.S250f2,
                        style: TextStyle(
                            color: AppColor.secondaryText,
                            fontSize: SizeConfig.getResponsiveFontSize(59),
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        StringsManager.kCal,
                        style: TextStyle(
                            color: AppColor.secondaryText,
                            fontSize: SizeConfig.getResponsiveFontSize(27)),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: SizeConfig.screenWidth! * WidthSizeManager.w247f5,
                    height: SizeConfig.screenHeight! * HeightSizeManager.h310,
                    child: CustomPaint(
                      painter: ClockTick(isAnti: true),
                    ),
                  ),
                  SimpleCircularProgressBar(
                    size: SizeConfig.screenWidth! * WidthSizeManager.w292f5,
                    mergeMode: true,
                    animationDuration: 1,
                    backColor: const Color(0xffE6E6E6),
                    progressColors: [AppColor.primary],
                    progressStrokeWidth: 15,
                    backStrokeWidth: 15,
                    startAngle: 270,
                    valueNotifier: ValueNotifier(25),
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
                        StringsManager.max156,
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
            height: SizeConfig.screenHeight! * HeightSizeManager.h80,
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: RunningController.listFrom1To20.map((valObj) {
                      return Container(
                        margin: EdgeInsets.symmetric(
                            horizontal:
                                SizeConfig.screenWidth! * WidthSizeManager.w4),
                        width: SizeConfig.screenWidth! * WidthSizeManager.w8,
                        height:
                            SizeConfig.screenHeight! * HeightSizeManager.h40,
                        decoration: BoxDecoration(
                            color: valObj > 10
                                ? const Color(0xffE6E6E6)
                                : AppColor.primary,
                            borderRadius: BorderRadius.circular(4)),
                      );
                    }).toList()),
              ],
            ),
          )
        ],
      ),
    );
  }
}
