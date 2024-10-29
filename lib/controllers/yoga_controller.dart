import 'package:cafit/core/resourses/assets_manager.dart';
import 'package:cafit/core/resourses/string_manager.dart';

class YogaController {
 static  List workArr = [
   {"name": StringsManager.running, "image": AssetsManager.firstImage},
   {"name": StringsManager.jumping, "image": AssetsManager.secondImage},
   {
     "name":  StringsManager.running,
     "image": AssetsManager.fiveImage,
   },
   {
     "name":  StringsManager.jumping,
     "image": AssetsManager.thirdImage,
   },
 ];
 static List responseArr = [
   {
     "name":  StringsManager.mikhailEduardovich,
     "time": StringsManager.nineDaysAgo,
     "image": AssetsManager.u2Image,
     "message": StringsManager.loremText
   },
   {
     "name":  StringsManager.mikhailEduardovich,
     "time":  StringsManager.elevenDaysAgo,
     "image": AssetsManager.u1Image,
     "message":  StringsManager.loremText
   },
   {
     "name": StringsManager.mikhailEduardovich,
     "time":  StringsManager.twelveDaysAgo,
     "image":AssetsManager.u2Image,
     "message": StringsManager.loremText
   },
   {
     "name": StringsManager.mikhailEduardovich,
     "time": StringsManager.thirteenDaysAgo,
     "image": AssetsManager.u1Image,
     "message": StringsManager.loremText
   }
 ];
}