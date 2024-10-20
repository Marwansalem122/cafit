import 'package:cafit/common/helper/color_extension.dart';
import 'package:cafit/controllers/splash_controller.dart';
import 'package:cafit/core/config/size_config.dart';
import 'package:cafit/core/resourses/assets_manager.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    SplashController().navigateToOnboardingPage(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: Center(
          child: Image.asset(AssetsManager.logo,
              width: SizeConfig.screenWidth! * 0.8)),
    );
  }
}
