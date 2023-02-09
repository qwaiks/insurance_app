import 'package:flutter/material.dart';
import 'package:insurance_app/config/images.dart';
import 'package:insurance_app/config/routes.dart';
import 'package:insurance_app/config/theme.dart';
import 'package:insurance_app/widgets/custom_button.dart';

class StarterScreen extends StatelessWidget {
  const StarterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final header = Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      height: 300,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                AppImages.starterBackground,
              ),
              fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(AppImages.car),
            const SizedBox(
              width: 16,
            ),
            const Text(
              'The perks of Leocare',
              style: AppTextThemes.h1,
            )
          ],
        ),
      ),
    );

    final button = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: CustomButton(
        title: 'Next',
        fullWidth: true,
        onTap: () => Navigator.pushNamed(context, AppRoutes.claimOfferScreen),
      ),
    );

    return Scaffold(
      body: Column(
        children: [
          header,
          const SizedBox(
            height: 50,
          ),
          detailUpdate(
              image: AppImages.towTruck,
              title: '0 km assistance',
              description: 'Included in all of our plans'),
          const SizedBox(
            height: 20,
          ),
          detailUpdate(
              image: AppImages.driver,
              title: 'Secondary driver',
              description: 'And even as a young driver!'),
          const SizedBox(
            height: 20,
          ),
          detailUpdate(
              image: AppImages.carLoan,
              title: 'Loan vehicle',
              description:
                  'The loan of a vehicle is included in all of our plans'),
          const SizedBox(
            height: 20,
          ),
          detailUpdate(
              image: AppImages.drivingLicense,
              title: 'Earn back your license points',
              description: 'Road awareness course free of charge'),
          const Spacer(),
          button,
          const SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }

  Widget detailUpdate(
      {required String image,
      required String title,
      required String description}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: Row(
        children: [
          Image.asset(
            image,
            width: 45,
          ),
          const SizedBox(
            width: 16,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextThemes.title,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(description, style: AppTextThemes.body),
              ],
            ),
          )
        ],
      ),
    );
  }
}
