import 'package:flutter/material.dart';
import 'package:insurance_app/config/theme.dart';
import 'package:insurance_app/widgets/custom_button.dart';

class InsuranceOffer extends StatelessWidget {
  final String title;
  final String content;
  final String price;
  const InsuranceOffer(
      {super.key,
      required this.title,
      required this.content,
      required this.price});

  @override
  Widget build(BuildContext context) {
    final helpButton = CustomButton(
      title: 'Need help?',
      backgroundColor: Colors.white,
      textColor: Colors.black,
      onTap: () {},
    );

    final personalizeButton = CustomButton(
      title: 'Personalize',
      onTap: () {},
    );

    final titleWidget = Text(
      title,
      style: AppTextThemes.h3,
    );

    final contentWidget = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            const SizedBox(
              width: 25,
            ),
            Text(
              content,
              style: AppTextThemes.title,
            ),
          ],
        ),
        const SizedBox(
          width: 16,
        ),
        Text(
          price,
          style: AppTextThemes.title,
        )
      ],
    );

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(13)),
          color: Colors.grey.shade200),
      child: Column(
        children: [
          titleWidget,
          const SizedBox(
            height: 20,
          ),
          contentWidget,
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              helpButton,
              personalizeButton,
            ],
          )
        ],
      ),
    );
  }
}
