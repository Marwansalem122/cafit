import 'package:cafit/common/helper/color_extension.dart';
import 'package:cafit/common/widgets/setting_slider_row.dart';
import 'package:cafit/common/widgets/setting_switch_row.dart';
import 'package:cafit/controllers/running_settings_controller.dart';
import 'package:cafit/core/config/size_config.dart';
import 'package:cafit/core/resourses/assets_manager.dart';
import 'package:cafit/core/resourses/height_size_manager.dart';
import 'package:cafit/core/resourses/string_manager.dart';
import 'package:cafit/core/resourses/width_size_manager.dart';
import 'package:flutter/material.dart';

class RunningSettingsPage extends StatefulWidget {
  const RunningSettingsPage({super.key});

  @override
  State<RunningSettingsPage> createState() => _RunningSettingsPageState();
}

class _RunningSettingsPageState extends State<RunningSettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        centerTitle: true,
        elevation: 0.1,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset(
              AssetsManager.blackWhiteImage,
              width: SizeConfig.screenWidth! * WidthSizeManager.w25,
              height: SizeConfig.screenHeight! * HeightSizeManager.h25,
            )),
        title: Text(
          StringsManager.setting,
          style: TextStyle(
              color: AppColor.white,
              fontSize: SizeConfig.getResponsiveFontSize(20),
              fontWeight: FontWeight.w700),
        ),
      ),
      body: ListView.separated(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.screenWidth! * WidthSizeManager.w20,
              vertical: SizeConfig.screenHeight! * HeightSizeManager.h10),
          itemBuilder: (context, index) {
            var tObj =
                RunningSettingsController.settingArr[index] as Map? ?? {};

            if (tObj["type"] == "switch") {
              return SettingSwitchRow(
                  tObj: tObj,
                  onChanged: (newVal) {
                    RunningSettingsController.settingArr[index]["value"] =
                        newVal ? "true" : "false";
                    setState(() {});
                  });
            } else if (tObj["type"] == "slider") {
              return SettingSliderRow(
                  tObj: tObj,
                  onChanged: (newVal) {
                    RunningSettingsController.settingArr[index]["value"] =
                        newVal.toString();
                    setState(() {});
                  });
            } else {
              return Container();
            }
          },
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.black26,
              height: 1,
            );
          },
          itemCount: RunningSettingsController.settingArr.length),
    );
  }
}
