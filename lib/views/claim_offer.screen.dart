import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:insurance_app/config/colors.dart';
import 'package:insurance_app/config/theme.dart';
import 'package:insurance_app/widgets/custom_button.dart';
import 'package:insurance_app/widgets/custom_icon_button.dart';
import 'package:insurance_app/widgets/insurance_offer.dart';
import 'package:insurance_app/widgets/offer_banner.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../config/images.dart';

class ClaimOfferScreen extends StatefulWidget {
  const ClaimOfferScreen({super.key});

  @override
  State<ClaimOfferScreen> createState() => _ClaimOfferScreenState();
}

class _ClaimOfferScreenState extends State<ClaimOfferScreen> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  @override
  Widget build(BuildContext context) {
    final appBar = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIconButton(
          onTap: () => Navigator.pop(context),
        ),
        Text(
          'My offers',
          style: AppTextThemes.h2.copyWith(color: Colors.green.shade800),
        ),
        const CustomIconButton(
          icon: Icons.close,
          iconSize: 20,
        ),
      ],
    );
    final header = Container(
      height: 350,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              AppImages.starterBackground,
            ),
            fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 70,
          ),
          appBar,
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 150,
            child: PageView.builder(
              pageSnapping: true,
              controller: controller,
              itemBuilder: (_, index) {
                return OfferBanner(
                    title: 'title',
                    pricePerMonth: 54.12,
                    pricePerYear: 321.45,
                    selected: index == 3);
              },
              itemCount: 4,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SmoothPageIndicator(
            controller: controller,
            count: 4,
            effect: const WormEffect(dotHeight: 9, dotWidth: 9),
          )
        ],
      ),
    );

    final content = SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 360,
            ),
            const Text(
              'My warranties',
              style: AppTextThemes.h1,
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(8)),
              child: Text.rich(TextSpan(children: [
                TextSpan(
                    text: 'Third party ',
                    style: AppTextThemes.title.copyWith(color: Colors.white)),
                TextSpan(
                    text: 'offer warranties with:',
                    style: AppTextThemes.body.copyWith(color: Colors.white))
              ])),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppImages.car,
                  width: 20,
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  'Theft, fire, explosion and storm',
                  style: AppTextThemes.title,
                )
              ],
            ),
            ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 16),
              itemBuilder: (_, index) {
                return const InsuranceOffer(
                  title: 'Customizable deductibles',
                  content: 'Glass Breakage',
                  price: '\$600',
                );
              },
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 8,
              shrinkWrap: true,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              title: 'See my offer details',
              backgroundColor: Colors.grey.shade200,
              fullWidth: true,
              textColor: Colors.black,
              onTap: () {},
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'My extra drivers',
              style: AppTextThemes.h1,
            ),
            const SizedBox(
              height: 16,
            ),
            DottedBorder(
              color: Colors.grey.shade300,
              dashPattern: const [10, 3],
              radius: const Radius.circular(30),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.green.shade600, shape: BoxShape.circle),
                    child: const Center(
                      child: Icon(Icons.add),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    'Add a driver',
                    style: AppTextThemes.h3,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
    final body = Stack(
      children: [
        content,
        header,
      ],
    );

    final lowerButtons = Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 100,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomIconButton(
              icon: Icons.message,
              iconSize: 25,
              onTap: () {},
            ),
            const SizedBox(
              width: 20,
            ),
            Flexible(
                child: CustomButton(
              title: 'Continue',
              fullWidth: true,
              onTap: () {},
            ))
          ],
        ),
      ),
    );

    final cont = Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        height: 100,
        child: lowerButtons,
      ),
    );

    return Scaffold(
        body: Stack(
      children: [
        body,
        lowerButtons,
      ],
    ));
  }
}
