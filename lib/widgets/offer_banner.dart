import 'package:flutter/material.dart';
import 'package:insurance_app/config/images.dart';
import 'package:insurance_app/config/theme.dart';

class OfferBanner extends StatelessWidget {
  final String title;
  final double pricePerMonth;
  final double pricePerYear;
  final void Function()? onTap;
  final bool selected;

  const OfferBanner({
    super.key,
    required this.title,
    required this.pricePerMonth,
    required this.pricePerYear,
    this.onTap,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    final titleWidget = Text(
      title,
      style: AppTextThemes.h1.copyWith(color: Colors.white),
    );

    final monthWidget = Text.rich(
      TextSpan(
        children: [
          TextSpan(
              text: '\$$pricePerMonth',
              style: AppTextThemes.h2.copyWith(color: Colors.white)),
          TextSpan(
              text: ' per month',
              style: AppTextThemes.title.copyWith(color: Colors.white)),
        ],
      ),
    );
    final yearWidget = Text.rich(
      TextSpan(
        text: '\$$pricePerYear ',
        style: AppTextThemes.title.copyWith(color: Colors.white),
        children: [
          TextSpan(
              text: ' per month',
              style: AppTextThemes.caption.copyWith(color: Colors.white)),
        ],
      ),
    );

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
          color: Colors.indigo[700], borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Image.asset(
            AppImages.car,
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              titleWidget,
              const SizedBox(
                height: 8,
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
