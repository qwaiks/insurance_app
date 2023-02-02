import 'package:flutter/material.dart';
import 'package:insurance_app/config/theme.dart';

import '../config/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: generateRoute,
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: 'Satoshi',
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(
              centerTitle: true,
              backgroundColor: Colors.white,
              titleTextStyle:
                  AppTextThemes.h2.copyWith(color: Colors.blueGrey.shade700),
              elevation: 0),
          scaffoldBackgroundColor: Colors.white),
    );
  }
}
