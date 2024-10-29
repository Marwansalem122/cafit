import 'package:cafit/common/helper/navigate_extension.dart';
import 'package:cafit/core/resourses/int_manager.dart';
import 'package:cafit/core/route/routes.dart';
import 'package:flutter/material.dart';

class RunningController {
  void navigateToBack(BuildContext context) {
    context.pop();
  }

  void navigateToRunningPage(BuildContext context) {
    context.pushNamed(Routes.runningPage);
  }

  static const List dataArr = [
    {"no": IntManager.i1, "val": IntManager.i60},
    {"no": IntManager.i2, "val": IntManager.i70},
    {"no": IntManager.i3, "val": IntManager.i80},
    {"no": IntManager.i4, "val": IntManager.i90},
    {"no": IntManager.i5, "val": IntManager.i60},
    {"no": IntManager.i6, "val": IntManager.i70},
    {"no": IntManager.i7, "val": IntManager.i80},
    {"no": IntManager.i8, "val": IntManager.i90},
    {"no": IntManager.i9, "val": IntManager.i60},
    {"no": IntManager.i10, "val": IntManager.i70},
    {"no": IntManager.i11, "val": IntManager.i60},
    {"no": IntManager.i2, "val": IntManager.i70},
    {"no": IntManager.i13, "val": IntManager.i80},
    {"no": IntManager.i14, "val": IntManager.i90},
    {"no": IntManager.i15, "val": IntManager.i60},
    {"no": IntManager.i16, "val": IntManager.i70},
    {"no": IntManager.i17, "val": IntManager.i80},
    {"no": IntManager.i18, "val": IntManager.i90},
    {"no": IntManager.i19, "val": IntManager.i60},
    {"no": IntManager.i20, "val": IntManager.i70},
    {"no": IntManager.i21, "val": IntManager.i60},
    {"no": IntManager.i22, "val": IntManager.i70},
    {"no": IntManager.i23, "val": IntManager.i80},
    {"no": IntManager.i24, "val": IntManager.i90},
    {"no": IntManager.i25, "val": IntManager.i60},
    {"no": IntManager.i26, "val": IntManager.i70},
    {"no": IntManager.i27, "val": IntManager.i80},
    {"no": IntManager.i28, "val": IntManager.i90},
    {"no": IntManager.i29, "val": IntManager.i60},
    {"no": IntManager.i30, "val": IntManager.i70},
    {"no": IntManager.i31, "val": IntManager.i60},
    {"no": IntManager.i32, "val": IntManager.i70},
    {"no": IntManager.i33, "val": IntManager.i80},
    {"no": IntManager.i34, "val": IntManager.i90},
  ];
  static const List numberFrom1To24 = [
    IntManager.i1,
    IntManager.i2,
    IntManager.i3,
    IntManager.i4,
    IntManager.i5,
    IntManager.i6,
    IntManager.i7,
    IntManager.i8,
    IntManager.i9,
    IntManager.i10,
    IntManager.i11,
    IntManager.i12,
    IntManager.i13,
    IntManager.i14,
    IntManager.i15,
    IntManager.i16,
    IntManager.i17,
    IntManager.i18,
    IntManager.i19,
    IntManager.i20,
    IntManager.i21,
    IntManager.i22,
    IntManager.i23,
    IntManager.i24,
  ];
  static const List listFrom1To20 = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20
  ];
}
