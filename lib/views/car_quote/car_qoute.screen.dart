import 'package:flutter/material.dart';
import 'package:insurance_app/config/colors.dart';
import 'package:insurance_app/config/theme.dart';
import 'package:insurance_app/views/car_quote/pages/insurance_claims.dart';
import 'package:insurance_app/views/car_quote/pages/insurance_type.dart';
import 'package:insurance_app/views/car_quote/pages/search_car.dart';
import 'package:insurance_app/views/car_quote/pages/user_birthday.dart';
import 'package:insurance_app/views/car_quote/pages/user_license_date.dart';
import 'package:insurance_app/views/car_quote/pages/vehicle_use.dart';
import 'package:insurance_app/widgets/custom_button.dart';
import 'package:insurance_app/widgets/custom_dropdown.dart';
import 'package:insurance_app/widgets/custom_icon_button.dart';
import 'package:insurance_app/widgets/custom_textfield.dart';

class CarQuoteScreen extends StatelessWidget {
  const CarQuoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final actions = Row(
      children: [
        CustomIconButton(
          onTap: () => {},
        ),
        const SizedBox(
          width: 20,
        ),
        Flexible(
          child: CustomButton(
            title: 'Next',
            fullWidth: true,
            onTap: () {},
          ),
        )
      ],
    );

    const pages = [
      SearchCarPage(),
      VehichleUsePage(),
      UserLicenseDatePage(),
      UserBirthdayPage(),
      InsuranceClaimPage(),
      InsuranceTypePage()
    ];

    return Scaffold(
      appBar: AppBar(
        leading: CustomIconButton(
          icon: Icons.chevron_left_rounded,
          onTap: () => Navigator.pop(context),
        ),
        title: const Text('My car qoute'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LinearProgressIndicator(),
            const SizedBox(
              height: 20,
            ),
            pages[5],
            const Spacer(),
            actions,
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
