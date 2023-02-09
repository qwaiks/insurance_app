import 'package:flutter/material.dart';
import 'package:insurance_app/config/theme.dart';

class InsuranceClaimPage extends StatelessWidget {
  const InsuranceClaimPage({super.key});

  @override
  Widget build(BuildContext context) {
    final header = RichText(
      text: TextSpan(
        text: 'My ',
        children: const [
          TextSpan(
            text: ' birth date',
            style: TextStyle(
              color: Colors.green,
            ),
          )
        ],
        style: AppTextThemes.h1.copyWith(color: Colors.black, fontSize: 34),
      ),
    );

    final optionYes = ElevatedButton(
      onPressed: () => {},
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        backgroundColor: Colors.grey[200],
        elevation: 0,
        minimumSize: const Size.fromHeight(50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
      ),
      child: const Text(
        'Yes',
        style: AppTextThemes.h3,
        textAlign: TextAlign.left,
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        header,
        const SizedBox(
          height: 20,
        ),
        const Text(
          'All claims, whether they are liable ot not',
          style: AppTextThemes.body,
        ),
        const SizedBox(
          height: 40,
        ),
        optionYes,
        const SizedBox(
          height: 20,
        ),
        optionYes
      ],
    );
  }
}
