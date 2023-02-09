import 'package:flutter/material.dart';
import 'package:insurance_app/config/images.dart';
import 'package:insurance_app/widgets/custom_button.dart';

import '../../../config/theme.dart';

class ClaimCompletionPage extends StatefulWidget {
  const ClaimCompletionPage({super.key});

  @override
  State<ClaimCompletionPage> createState() => _ClaimCompletionPageState();
}

class _ClaimCompletionPageState extends State<ClaimCompletionPage> {
  bool isTermsAgreed = false;

  @override
  Widget build(BuildContext context) {
    final header = Align(
      alignment: Alignment.centerLeft,
      child: RichText(
        text: TextSpan(
          text: 'My history with ',
          children: const [
            TextSpan(
              text: 'the road and insurance',
              style: TextStyle(
                color: Colors.green,
              ),
            )
          ],
          style: AppTextThemes.h1.copyWith(color: Colors.black, fontSize: 34),
        ),
      ),
    );

    final insuranceCancellation = Row(
      children: [
        Image.asset(
          AppImages.carLoan,
          width: 40,
        ),
        const SizedBox(
          width: 20,
        ),
        Flexible(
          child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text:
                      'Your insurance policy has never been cancelled or terminated ',
                  style: AppTextThemes.title,
                ),
                TextSpan(
                  text: 'by a previous insurer, for any reason',
                  style: AppTextThemes.body,
                )
              ],
            ),
          ),
        )
      ],
    );

    final licenseCancellation = Row(
      children: [
        Image.asset(
          AppImages.carLoan,
          width: 40,
        ),
        const SizedBox(
          width: 20,
        ),
        Flexible(
          child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text:
                      'Your driving license has never been cancelled or suspended ',
                  style: AppTextThemes.title,
                ),
                TextSpan(
                  text: 'for more than 30 days',
                  style: AppTextThemes.body,
                )
              ],
            ),
          ),
        )
      ],
    );

    final convictionPrompt = Row(
      children: [
        Image.asset(
          AppImages.carLoan,
          width: 40,
        ),
        const SizedBox(
          width: 20,
        ),
        Flexible(
          child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'You have never been convicted ',
                  style: AppTextThemes.title,
                ),
                TextSpan(
                  text: 'of DUI, drugs, hit-and-run or refusal to cooperate',
                  style: AppTextThemes.body,
                )
              ],
            ),
          ),
        )
      ],
    );

    
    

    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        header,
        const SizedBox(
          height: 50,
        ),
        const Text(
          'For the last 5 years, you have declared that :',
          style: AppTextThemes.title,
        ),
        const SizedBox(
          height: 20,
        ),
        insuranceCancellation,
        const SizedBox(
          height: 16,
        ),
        licenseCancellation,
        const SizedBox(
          height: 16,
        ),
        convictionPrompt,
      ],
    );
  }
}
