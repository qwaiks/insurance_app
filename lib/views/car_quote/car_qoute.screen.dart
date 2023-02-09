import 'package:flutter/material.dart';
import 'package:insurance_app/config/images.dart';
import 'package:insurance_app/config/theme.dart';
import 'package:insurance_app/views/car_quote/pages/claim_completion.page.dart';
import 'package:insurance_app/views/car_quote/pages/insurance_claims.page.dart';
import 'package:insurance_app/views/car_quote/pages/insurance_type.page.dart';
import 'package:insurance_app/views/car_quote/pages/search_car.page.dart';
import 'package:insurance_app/views/car_quote/pages/user_birthday.page.dart';
import 'package:insurance_app/views/car_quote/pages/user_license_date.page.dart';
import 'package:insurance_app/views/car_quote/pages/vehicle_address.page.dart';
import 'package:insurance_app/views/car_quote/pages/vehicle_use.page.dart';
import 'package:insurance_app/widgets/custom_button.dart';
import 'package:insurance_app/widgets/custom_icon_button.dart';

class CarQuoteScreen extends StatefulWidget {
  const CarQuoteScreen({super.key});
  @override
  State<CarQuoteScreen> createState() => _CarQuoteScreenState();
}

class _CarQuoteScreenState extends State<CarQuoteScreen> {
  bool isTermsAgreed = false;
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final actions = Row(
      children: [
        Visibility(
          visible: (pageIndex != 3),
          child: CustomIconButton(
            onTap: () => {},
            isSvg: true,
            svgIcon: AppImages.questionMark,
            iconColor: Colors.green.shade900,
            iconSize: 12,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Visibility(
          visible: (pageIndex != 1),
          child: Flexible(
            child: CustomButton(
              title: 'Next',
              fullWidth: true,
              onTap: () => setState(() {
                pageIndex++;
              }),
            ),
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
      InsuranceTypePage(),
      VehicleAddressPage(),
      ClaimCompletionPage()
    ];

    final termsAgreement = InkWell(
      onTap: () => setState(() {
        isTermsAgreed = !isTermsAgreed;
      }),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        decoration: BoxDecoration(
            color: Colors.green[50], borderRadius: BorderRadius.circular(13)),
        child: Row(children: [
          Container(
            color: Colors.white,
            width: 18,
            height: 18,
            child: Checkbox(
              side: BorderSide(color: Colors.blueGrey.shade100, width: 2),
              value: isTermsAgreed,
              // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              onChanged: (value) => setState(() {
                isTermsAgreed = value!;
              }),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Flexible(
            child: RichText(
              text: TextSpan(
                text: 'I hereby declare that ',
                children: [
                  TextSpan(
                    text: 'the information provided is true and correct',
                    style: AppTextThemes.title.copyWith(fontSize: 14),
                  )
                ],
                style: AppTextThemes.body.copyWith(fontSize: 14),
              ),
            ),
          )
        ]),
      ),
    );

    final button = Row(
      children: [
        CustomButton(
          title: 'No',
          textColor: Colors.black,
          backgroundColor: Colors.grey.shade100,
          fullWidth: false,
          onTap: () {},
        ),
        const SizedBox(
          width: 16,
        ),
        Flexible(
          child: CustomButton(
            title: 'I confirm',
            fullWidth: true,
            onTap: isTermsAgreed ? () {} : null,
          ),
        )
      ],
    );

    final completionButtons = Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        children: [
          termsAgreement,
          const SizedBox(height: 20),
          button,
          const SizedBox(height: 20),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        leading: CustomIconButton(
          icon: Icons.chevron_left_rounded,
          onTap: () {
            if (pageIndex > 0) {
              setState(() {
                pageIndex--;
              });
            } else {
              Navigator.pop(context);
            }
          },
        ),
        title: const Text('My car qoute'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LinearProgressIndicator(
              value: pageIndex / pages.length,
            ),
            const SizedBox(
              height: 20,
            ),
            pages[pageIndex],
            const Spacer(),
            (pageIndex != 7) ? actions : completionButtons,
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
