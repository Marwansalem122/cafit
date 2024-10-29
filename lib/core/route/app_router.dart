import 'package:cafit/core/route/routes.dart';
import 'package:cafit/pages/exercise/exercise_page.dart';
import 'package:cafit/pages/exercise/exercise_page_2.dart';
import 'package:cafit/pages/home/home_page.dart';
import 'package:cafit/pages/meal_plan/meal_plan_page.dart';
import 'package:cafit/pages/meal_plan/meal_plan_page_2.dart';
import 'package:cafit/pages/menu/menu_page.dart';
import 'package:cafit/pages/menu/yoga_page.dart';
import 'package:cafit/pages/onboarding/on_boarding.dart';
import 'package:cafit/pages/onboarding/step1_page.dart';
import 'package:cafit/pages/onboarding/step2_page.dart';
import 'package:cafit/pages/onboarding/step3_page.dart';
import 'package:cafit/pages/running/running_page.dart';
import 'package:cafit/pages/schedule/schedule_page.dart';
import 'package:cafit/pages/splash/splash.dart';
import 'package:cafit/pages/weight/weight_pages.dart';
import 'package:cafit/pages/workout/workout_details_page.dart';
import 'package:cafit/pages/workout/workout_page.dart';
import 'package:cafit/pages/workout/workout_page_2.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //  this arguments to be passed in any screen  like this (arguments & className)
    final argument = settings.arguments;

    switch (settings.name) {
      case Routes.splashPage:
        return materialPageBuilder(const SplashPage());
      case Routes.onBoardingPage:
        return materialPageBuilder(const OnBoardingPage());
      case Routes.step1Page:
        return createRoute(const Step1Page());
      case Routes.step2Page:
        return createRoute(const Step2Page());
      case Routes.step3Page:
        return createRoute(const Step3Page());
      case Routes.menuPage:
        return createRoute(const MenuPage());
      case Routes.homePage:
        return createRoute(const HomePage());
      case Routes.workOutPage:
        return createRoute(const WorkoutPage());
      case Routes.workOutPage2:
        return createRoute(const WorkoutPage2());
      case Routes.workoutDetailPage:
        return createRoute(const WorkoutDetailPage());
      case Routes.yogaPage:
        return createRoute(const YogaPage());
      case Routes.weightPage:
        return createRoute(const WeightPage());
      case Routes.shedulePage:
        return createRoute(const SchedulePage());
      case Routes.mealPlanPage:
        return createRoute(const MealPlanPage());
      case Routes.mealPlanPage2:
        return createRoute(const MealPlanPage2());
      case Routes.exercisePage:
        return createRoute(const ExercisePage());
      case Routes.exercisePage2:
        return createRoute(const ExercisePage2());
       case Routes.runningPage:
   return createRoute(const RunningPage());
      default:
        return materialPageBuilder(const ErrorPage());
    }
  }
}

dynamic materialPageBuilder(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Error"),
      ),
      body: const Center(
        child: Text("Error"),
      ),
    );
  }
}

Route createRoute(var page) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
    transitionDuration:
        const Duration(seconds: 1), // Control the forward transition duration
    reverseTransitionDuration:
        const Duration(seconds: 1), // Control the reverse transition duration
  );
}
