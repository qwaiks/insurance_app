import 'package:flutter/material.dart';
import 'package:insurance_app/widgets/custom_dropdown.dart';

import '../../../config/theme.dart';

class SearchCarPage extends StatelessWidget {
  const SearchCarPage({super.key});

  @override
  Widget build(BuildContext context) {
    final header = RichText(
      text: TextSpan(
        text: 'Manual search',
        children: const [
          TextSpan(
            text: ' of my vehicle',
            style: TextStyle(
              color: Colors.black,
            ),
          )
        ],
        style: AppTextThemes.h1.copyWith(color: Colors.green, fontSize: 34),
      ),
    );

    final brand = CustomDropdown(
      list: ['Kia', 'Totoya'],
      hint: 'Select car brand ',
      title: 'Brand',
      selectedValue: 'Kia',
      isEnabled: true,
      onChanged: (p0) {},
    );

    final model = CustomDropdown(
      list: ['Kia', 'Totoya'],
      hint: 'Select car model',
      title: 'Model',
      selectedValue: 'Kia',
      isEnabled: true,
      onChanged: (p0) {},
    );

    final version = CustomDropdown(
      list: ['Kia', 'Totoya'],
      hint: 'Select car version',
      title: 'Version',
      selectedValue: 'Kia',
      isEnabled: true,
      onChanged: (p0) {},
    );

    final year = CustomDropdown(
      list: ['Kia', 'Totoya'],
      hint: 'Select year model',
      title: 'Year',
      selectedValue: 'Kia',
      isEnabled: true,
      onChanged: (p0) {},
    );

    final form = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        brand,
        const SizedBox(
          height: 16,
        ),
        model,
        const SizedBox(
          height: 16,
        ),
        version,
        const SizedBox(
          height: 16,
        ),
        year
      ],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        header,
        const SizedBox(
          height: 20,
        ),
        form
      ],
    );
  }
}
