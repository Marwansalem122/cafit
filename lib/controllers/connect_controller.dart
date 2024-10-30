import 'package:cafit/common/helper/navigate_extension.dart';
import 'package:cafit/core/resourses/assets_manager.dart';
import 'package:cafit/core/resourses/string_manager.dart';
import 'package:flutter/material.dart';

class ConnectController {
  void navigateToBack(BuildContext context) {
    context.pop();
  }

  static List connectArr = [
    {
      "name": StringsManager.facebook,
      "icon": AssetsManager.facebookImage,
      "color": const Color(0xff6F82FE),
    },
    {
      "name": StringsManager.connectToTwitter,
      "icon": AssetsManager.twitterImage,
      "color": const Color(0xff70C0FC),
    },
    {
      "name": StringsManager.connectToLinkedIn,
      "icon": AssetsManager.linkdinImage,
      "color": const Color(0xff68CCFF),
    },
    {
      "name": StringsManager.connectToPinterest,
      "icon": AssetsManager.pinterestImage,
      "color": const Color(0xffFF6475),
    },
    {
      "name": StringsManager.connectToReddit,
      "icon": AssetsManager.redditImage,
      "color": const Color(0xffFFBD5D),
    },
    {
      "name": StringsManager.connectToTumblr,
      "icon": AssetsManager.tumblrImage,
      "color": const Color(0xff64B5FF),
    }
  ];
}
