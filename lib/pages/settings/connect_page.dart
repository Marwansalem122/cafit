import 'package:cafit/common/helper/color_extension.dart';
import 'package:cafit/common/widgets/connect_row.dart';
import 'package:cafit/controllers/connect_controller.dart';
import 'package:cafit/core/config/size_config.dart';
import 'package:cafit/core/resourses/assets_manager.dart';
import 'package:cafit/core/resourses/height_size_manager.dart';
import 'package:cafit/core/resourses/string_manager.dart';
import 'package:cafit/core/resourses/width_size_manager.dart';
import 'package:flutter/material.dart';

class ConnectPage extends StatefulWidget {
  final Function(Map) didSelect;
  const ConnectPage({super.key, required this.didSelect});

  @override
  State<ConnectPage> createState() => _ConnectPageState();
}

class _ConnectPageState extends State<ConnectPage> {
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
              ConnectController().navigateToBack(context);
            },
            icon: Image.asset(
              AssetsManager.blackWhiteImage,
              width: SizeConfig.screenWidth! * WidthSizeManager.w25,
              height: SizeConfig.screenHeight! * HeightSizeManager.h25,
            )),
        title: Text(
          StringsManager.connected,
          style: TextStyle(
              color: AppColor.white,
              fontSize: SizeConfig.getResponsiveFontSize(20),
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.screenWidth! * WidthSizeManager.w20,
                vertical: SizeConfig.screenHeight! * HeightSizeManager.h14),
            child: Text(
              StringsManager.chooseToConnectSocialNetwork,
              style: TextStyle(
                  color: AppColor.secondaryText,
                  fontSize: SizeConfig.getResponsiveFontSize(16)),
            ),
          ),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.screenWidth! * WidthSizeManager.w20,
                    vertical: SizeConfig.screenHeight! * HeightSizeManager.h10),
                itemBuilder: (context, index) {
                  var tObj = ConnectController.connectArr[index] as Map? ?? {};

                  return ConnectRow(
                    tObj: tObj,
                    isActive: selectIndex == index,
                    onPressed: () {
                      setState(() {
                        selectIndex = index;
                      });
                    },
                  );
                },
                itemCount: ConnectController.connectArr.length),
          ),
        ],
      ),
    );
  }
}
