import 'package:flutter/material.dart';
import 'package:insurance_app/config/images.dart';

import '../../../config/theme.dart';

class VehiclePossesionPage extends StatelessWidget {
  const VehiclePossesionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final header = RichText(
      text: TextSpan(
        text: 'How did I buy',
        children: const [
          TextSpan(
            text: ' my vehicle',
            style: TextStyle(
              color: Colors.black,
            ),
          )
        ],
        style: AppTextThemes.h1.copyWith(color: Colors.green, fontSize: 34),
      ),
    );

    final ownerWidget = optionsWidget(title: 'Owner', image: AppImages.key);

    final leasingWidget =
        optionsWidget(title: 'Leasing', image: AppImages.stopwatch);

    final options = Row(
      children: [
        Flexible(child: ownerWidget),
        Flexible(child: leasingWidget),
      ],
    );

    return Column(
      children: [
        header,
        const SizedBox(
          width: 16,
        ),
        options
      ],
    );
  }

  Widget optionsWidget({
    required String title,
    required String image,
    String? subtitle,
  }) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(13),
      ),
      child: Column(
        children: [
          Image.asset(image),
          const SizedBox(
            height: 16,
          ),
          Text(title),
          SizedBox(
            height: subtitle != null ? 16 : 0,
          ),
          subtitle != null ? Text(subtitle) : const SizedBox(),
        ],
      ),
    );
  }
}
