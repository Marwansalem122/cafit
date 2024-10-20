import 'package:cafit/common/helper/navigate_extension.dart';
import 'package:cafit/core/route/routes.dart';
import 'package:flutter/material.dart';

class Step2Controller {
  void previousPage(BuildContext context) {
  context.pop();
}
void navigateToStep3Page(BuildContext context){
  context.pushNamed(Routes.step3Page);
}
}