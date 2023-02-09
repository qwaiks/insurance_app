import 'package:flutter/material.dart';
import 'package:insurance_app/views/car_quote/car_qoute.screen.dart';
import 'package:insurance_app/views/claim_offer.screen.dart';
import 'package:insurance_app/views/starter.screen.dart';

class AppRoutes {
  static const starterScreen = '/starter';
  static const qouteScreen = '/qoute-screen';

  static const claimOfferScreen = '/claim-offer';
}

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.starterScreen:
      return MaterialPageRoute(builder: (context) => const StarterScreen());
    case AppRoutes.qouteScreen:
      return MaterialPageRoute(builder: (context) => const CarQuoteScreen());
    case AppRoutes.claimOfferScreen:
      return MaterialPageRoute(builder: (context) => const ClaimOfferScreen());
    default:
      return MaterialPageRoute(builder: (context) => const StarterScreen());
  }
}
