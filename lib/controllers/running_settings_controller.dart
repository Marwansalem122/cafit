import 'package:cafit/core/resourses/string_manager.dart';

class RunningSettingsController {
  static List settingArr = [
  {"name":StringsManager.gps, "type": StringsManager.sSwitch, "value": StringsManager.sFalse},
  {"name": StringsManager.autoPush, "type": StringsManager.sSwitch, "value": StringsManager.sFalse},
  {"name":StringsManager.pauseRunForCalls, "type": StringsManager.sSwitch, "value": StringsManager.sFalse},
  {"name": StringsManager.audioFeedback, "type": StringsManager.slider, "value": StringsManager.s50},
  {"name": StringsManager.time, "type": StringsManager.slider, "value": StringsManager.s50},
  {"name": StringsManager.distance, "type": StringsManager.slider, "value": StringsManager.s50},
  {"name": StringsManager.voiceVolumn, "type": StringsManager.sSwitch, "value": StringsManager.sTrue},
  {"name": StringsManager.time, "type": StringsManager.sSwitch, "value": StringsManager.sFalse},
  {"name": StringsManager.distance, "type": StringsManager.sSwitch, "value": StringsManager.sFalse},
  {"name": StringsManager.pace, "type": StringsManager.sSwitch, "value": StringsManager.sFalse},
  {"name": StringsManager.speed, "type": StringsManager.sSwitch, "value": StringsManager.sFalse},
  {"name": StringsManager.calories, "type": StringsManager.sSwitch, "value": StringsManager.sFalse},
];
}