import 'package:flutter/material.dart';
import 'package:insurance_app/config/theme.dart';

class BuildingQouteScreen extends StatelessWidget {
  const BuildingQouteScreen({super.key});

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


    final vehicleDetails = Column(
      children: [

      ],
    );

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            header,
            const SizedBox(
              height: 50,
            ),
            const CircularProgressIndicator(),
            const SizedBox(
              height: 16,
            ),
            Text('Please wait a few seconds...'),
          ],
        ),
      ),
    );
  }
}
