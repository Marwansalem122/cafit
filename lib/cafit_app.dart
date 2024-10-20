import 'package:cafit/core/route/app_router.dart';
import 'package:cafit/core/route/routes.dart';
import 'package:cafit/core/theme/theme_app.dart';
import 'package:flutter/material.dart';

class CafitApp extends StatelessWidget {
  const CafitApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cafit App',
      debugShowCheckedModeBanner: false,
    theme:AppTheme.lightTheme ,
    
    
    
       initialRoute: Routes.splashPage,
            onGenerateRoute: AppRouter().generateRoute,
    );
  }
}

