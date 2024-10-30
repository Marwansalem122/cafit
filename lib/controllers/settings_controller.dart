import 'package:cafit/common/helper/navigate_extension.dart';
import 'package:cafit/core/resourses/string_manager.dart';
import 'package:cafit/core/route/routes.dart';
import 'package:flutter/material.dart';

class SettingsController {
  void navigateToBack(BuildContext context) {
    context.pop();
  }

  void navigateToLanguagePage(BuildContext context, dynamic Function(Map<dynamic, dynamic>)fun) {
    context.pushNamed(Routes.slectLanguagePage,arguments: fun);
  }


void navigateToConnectPage(BuildContext context, dynamic Function(Map<dynamic, dynamic>)fun) {
  context.pushNamed(Routes.connectPage,arguments: fun);
}
  static List settingArr = [
    {
      StringsManager.name: StringsManager.reminders,
      StringsManager.type: StringsManager.sSwitch,
      StringsManager.value: StringsManager.sFalse
    },
    {
      StringsManager.name: StringsManager.language,
      StringsManager.type: StringsManager.sSelect,
      StringsManager.value: StringsManager.english
    },
    {
      StringsManager.name: StringsManager.connected,
      StringsManager.type: StringsManager.sSelect,
      StringsManager.value: StringsManager.facebook
    },
    {
      StringsManager.name: StringsManager.appleHealth,
      StringsManager.type: StringsManager.sSwitch,
      StringsManager.value: StringsManager.sTrue
    },
    {
      StringsManager.name: StringsManager.warmUp,
      StringsManager.type: StringsManager.sSwitch,
      StringsManager.value: StringsManager.sFalse
    },
    {
      StringsManager.name: StringsManager.cooldown,
      StringsManager.type: StringsManager.sSwitch,
      StringsManager.value: StringsManager.sFalse
    },
    {
      StringsManager.name: StringsManager.autoPush,
      StringsManager.type: StringsManager.sSwitch,
      StringsManager.value: StringsManager.sFalse
    },
    {
      StringsManager.name: StringsManager.pauseForRunning,
      StringsManager.type: StringsManager.sSwitch,
      StringsManager.value: StringsManager.sFalse
    }
  ];
  static List langArr = [
    {
      "name": StringsManager.english1,
    },
    {
      "name": StringsManager.spanish,
    },
    {
      "name": StringsManager.hindi,
    },
    {
      "name": StringsManager.arabic,
    },
    {
      "name": StringsManager.portuguese,
    },
    {
      "name": StringsManager.bengali,
    },
    {
      "name": StringsManager.russian,
    },
    {
      "name": StringsManager.vietnamese,
    }
  ];
}
