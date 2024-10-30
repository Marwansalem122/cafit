import 'package:cafit/common/helper/color_extension.dart';
import 'package:cafit/common/widgets/language_row.dart';
import 'package:cafit/controllers/settings_controller.dart';
import 'package:cafit/core/config/size_config.dart';
import 'package:cafit/core/resourses/assets_manager.dart';
import 'package:cafit/core/resourses/height_size_manager.dart';
import 'package:cafit/core/resourses/string_manager.dart';
import 'package:cafit/core/resourses/width_size_manager.dart';
import 'package:flutter/material.dart';

class SelectLanguagePage extends StatefulWidget {
  final Function(Map) didSelect;
  const SelectLanguagePage({super.key, required this.didSelect});

  @override
  State<SelectLanguagePage> createState() => _SelectLanguagePageState();
}

class _SelectLanguagePageState extends State<SelectLanguagePage> {
  int selectIndex = 0;

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
          StringsManager.language,
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
            var tObj = SettingsController.langArr[index] as Map? ?? {};

            return LanguageRow(
              tObj: tObj,
              isActive: selectIndex == index,
              onPressed: () {
                setState(() {
                  selectIndex = index;
                });
              },
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.black26,
              height: 1,
            );
          },
          itemCount: SettingsController.langArr.length),
    );
  }
}
