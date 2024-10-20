import 'package:cafit/common/helper/navigate_extension.dart';
import 'package:cafit/core/route/routes.dart';
import 'package:flutter/material.dart';

class Step1Controller {
  void navigateToStep2Page(BuildContext context) {
   context.pushNamed(Routes.step2Page);
      // Navigator.push(context,MaterialPageRoute(builder: (context)=>const Step2Page(),) );
                
  }
}
