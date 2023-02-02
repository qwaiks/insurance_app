import 'package:flutter/material.dart';
import 'package:insurance_app/views/car_quote/car_qoute.screen.dart';
import 'package:insurance_app/views/starter.screen.dart';

class AppRoutes {
  static const starterScreen = '/starter';
  static const qouteScreen = '/qoute-screen';
}

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.starterScreen:
      return MaterialPageRoute(builder: (context) => const StarterScreen());
    case AppRoutes.qouteScreen:
      return MaterialPageRoute(builder: (context) => const CarQuoteScreen());
    default:
      return MaterialPageRoute(builder: (context) => const StarterScreen());
  }
}
