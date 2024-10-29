import 'package:cafit/common/helper/color_extension.dart';
import 'package:cafit/common/widgets/clock_tik.dart';
import 'package:cafit/controllers/running_controller.dart';
import 'package:cafit/core/config/size_config.dart';
import 'package:cafit/core/resourses/height_size_manager.dart';
import 'package:cafit/core/resourses/string_manager.dart';
import 'package:cafit/core/resourses/width_size_manager.dart';
import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class RunningHeartView extends StatefulWidget {
  final double height;
  const RunningHeartView({super.key, required this.height});

  @override
  State<RunningHeartView> createState() => _RunningHeartViewState();
}

class _RunningHeartViewState extends State<RunningHeartView> {
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
                    StringsManager.heart,
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
                        StringsManager.s1510,
                        style: TextStyle(
                            color: AppColor.secondaryText,
                            fontSize: SizeConfig.getResponsiveFontSize(59),
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        StringsManager.bpm,
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
                      painter: ClockTick(),
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
                    startAngle: 0,
                    valueNotifier: ValueNotifier(75),
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
            height: SizeConfig.screenHeight! * HeightSizeManager.h80,
            child: Column(
              children: [
                Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: RunningController.dataArr.map((valObj) {
                      var val = valObj["val"];
                      var index = valObj["no"];
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        width: 2,
                        height: (val * 70) / 150,
                        decoration: BoxDecoration(
                            color: index > 12 && index < 18
                                ? AppColor.primary
                                : const Color(0xffE6E6E6),
                            borderRadius: BorderRadius.circular(2)),
                      );
                    }).toList()),
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
