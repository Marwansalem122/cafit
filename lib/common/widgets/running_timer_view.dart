import 'package:cafit/common/helper/color_extension.dart';
import 'package:cafit/core/config/size_config.dart';
import 'package:cafit/core/resourses/height_size_manager.dart';
import 'package:cafit/core/resourses/string_manager.dart';
import 'package:cafit/core/resourses/width_size_manager.dart';
import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class RunningTimerView extends StatefulWidget {
  final double height;
  const RunningTimerView({super.key, required this.height});

  @override
  State<RunningTimerView> createState() => _RunningTimerViewState();
}

class _RunningTimerViewState extends State<RunningTimerView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: Column(
                  
                  children: [
                    Expanded(
                      child:  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                StringsManager.time,
                                style: TextStyle(
                                    color: AppColor.secondaryText,
                                    fontSize: SizeConfig.getResponsiveFontSize(18),
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                      
                                Text(
                                StringsManager.s1510,
                                style: TextStyle(
                                    color: AppColor.secondaryText,
                                    fontSize: SizeConfig.getResponsiveFontSize(65),
                                    fontWeight: FontWeight.w700),
                              ),
                              
                              SimpleCircularProgressBar(
                                size: SizeConfig.screenWidth!*WidthSizeManager.w292f5,
                                mergeMode: true,
                                animationDuration: 1,
                                backColor: const Color(0xffE6E6E6),
                                progressColors: [AppColor.primary],
                                progressStrokeWidth: 15,
                                backStrokeWidth: 15,
                                startAngle: 45,
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
                      child: Slider(
                        activeColor: AppColor.primary,
                        inactiveColor: AppColor.white2,
                        value: 0.5, onChanged: (newVal) {
                        setState(() {
                          
    
                        });
                      } )
                    )
                  ],
                ),
    );
  }
}