import 'package:flutter/material.dart';
import 'package:insurance_app/widgets/custom_icon_button.dart';

import '../../../config/theme.dart';

class InsuranceTypePage extends StatefulWidget {
  const InsuranceTypePage({super.key});

  @override
  State<InsuranceTypePage> createState() => _InsuranceTypePageState();
}

class _InsuranceTypePageState extends State<InsuranceTypePage> {
  int glass = 0, theft = 0, injury = 0, accident = 0, other = 0;

  @override
  Widget build(BuildContext context) {
    final header = Align(
      alignment: Alignment.centerLeft,
      child: RichText(
        text: TextSpan(
          text: 'What type ',
          children: const [
            TextSpan(
              text: 'of claim?',
              style: TextStyle(
                color: Colors.black,
              ),
            )
          ],
          style: AppTextThemes.h1.copyWith(color: Colors.green, fontSize: 34),
        ),
      ),
    );

    final glassClaim = claimItem(
      title: 'Glass breakage',
      value: glass,
      onValueChange: (value) => {
        if (value >= 0) setState(() => {glass = value})
      },
    );

    final theftClaim = claimItem(
      title: 'Theft',
      value: theft,
      onValueChange: (value) => {
        if (value >= 0) setState(() => {theft = value})
      },
    );

    final personalInjuryClaim = claimItem(
      title: 'Personal injury',
      subtitle: 'Partially or fully liable',
      value: injury,
      onValueChange: (value) => {
        if (value >= 0) setState(() => {injury = value})
      },
    );

    final accidentClaim = claimItem(
      title: 'Damage-only accident',
      subtitle: 'Partially or fully liable',
      value: injury,
      onValueChange: (value) => {
        if (value >= 0) setState(() => {injury = value})
      },
    );

    final otherClaim = claimItem(
      title: 'Damage-only accident',
      subtitle: 'eg. non-liable bodily injury',
      value: other,
      onValueChange: (value) => {
        if (value >= 0) setState(() => {other = value})
      },
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        header,
        const SizedBox(
          height: 50,
        ),
        glassClaim,
        const SizedBox(
          height: 8,
        ),
        theftClaim,
        const SizedBox(
          height: 8,
        ),
        personalInjuryClaim,
        const SizedBox(
          height: 8,
        ),
        accidentClaim,
        const SizedBox(
          height: 8,
        ),
        otherClaim
      ],
    );
  }

  Widget claimItem({
    required String title,
    String? subtitle,
    required int value,
    required Function(int value) onValueChange,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextThemes.title,
                ),
                Visibility(
                    visible: subtitle != null,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          subtitle ?? '',
                          style: AppTextThemes.caption
                              .copyWith(fontWeight: FontWeight.bold),
                        )
                      ],
                    ))
              ],
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomIconButton(
                icon: Icons.remove,
                onTap: () => onValueChange(value - 1),
                backgroundColor: Colors.grey[100],
                iconSize: 18,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                '$value',
                style: AppTextThemes.h3,
              ),
              const SizedBox(
                width: 10,
              ),
              CustomIconButton(
                icon: Icons.add,
                onTap: () => onValueChange(value + 1),
                backgroundColor: Colors.grey[100],
                iconSize: 18,
              ),
            ],
          )
        ],
      ),
    );
  }
}
