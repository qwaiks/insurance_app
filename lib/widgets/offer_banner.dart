import 'package:flutter/material.dart';
import 'package:insurance_app/config/theme.dart';

class OfferBanner extends StatelessWidget {
  final String title;
  final double pricePerMonth;
  final double pricePerYear;
  final void Function()? onTap;

  const OfferBanner({
    super.key,
    required this.title,
    required this.pricePerMonth,
    required this.pricePerYear,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final titleWidget = Text(title);

    final monthWidget = Text.rich(
      TextSpan(
        text: '$pricePerMonth',
        children: const [
          TextSpan(text: ' per month'),
        ],
      ),
    );
    final yearWidget = Text.rich(
      TextSpan(
        text: '$pricePerYear',
        children: const  [
          TextSpan(text: ' per month',style:  AppTextThemes.caption),
        ],
      ),
    );

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      child: Row(
        children: [
          Image.asset('name'),
          const SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              titleWidget,
              const SizedBox(
                height: 16,
              ),
              monthWidget,
              const SizedBox(
                height: 16,
              ),
              yearWidget
            ],
          )
        ],
      ),
    );
  }
}
