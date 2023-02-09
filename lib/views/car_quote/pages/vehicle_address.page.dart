import 'package:flutter/material.dart';
import 'package:insurance_app/config/theme.dart';
import 'package:insurance_app/widgets/custom_textfield.dart';

class VehicleAddressPage extends StatelessWidget {
  const VehicleAddressPage({super.key});

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

    const textfield = CustomTextField(
      title: 'My city or zipcode',
      hintText: 'Enter city name or zipcode',
      enabled: false,
    );

    final map = Container(
      width: 400,
      height: 400,
      decoration: BoxDecoration(
        color: Colors.blueGrey[300],
        borderRadius: BorderRadius.circular(13),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        header,
        SizedBox(
          height: 16,
        ),
        textfield,
        SizedBox(
          height: 16,
        ),
        map
      ],
    );
  }
}
