import 'package:cafit/common/helper/navigate_extension.dart';
import 'package:flutter/material.dart';

class ScheduleController {
  void navigateToBack(BuildContext context) {
    context.pop();
  }

  static List notArr = [
    {
      "day": "2",
      "detail":
          " You exercise 40 minutes a day and five days a week at a certain time, you practice on a regular schedule. Changing the schedule will result in diminished results, resulting in fatigue."
    },
    {
      "day": "14",
      "detail":
          "Tips for weight loss work towards functional exercises, proven strength and balance, and reduced risk of injury when muscle groups are active at the same time."
    }
  ];
  static List dateArr = [
    DateTime(2023, 7, 2),
    DateTime(2023, 7, 14),
  ];
}
