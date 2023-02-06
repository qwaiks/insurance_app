import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:insurance_app/config/images.dart';
import 'package:insurance_app/config/theme.dart';

class UserBirthdayPage extends StatelessWidget {
  const UserBirthdayPage({super.key});

  @override
  Widget build(BuildContext context) {
    final header = Align(
        alignment: Alignment.centerLeft,
        child: RichText(
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
        ));

    final datePicker = DatePickerWidget(
      looping: false,
      firstDate: DateTime(1950),
      initialDate: DateTime(1999, 5, 20),
      lastDate: DateTime.now(),
      dateFormat: "dd/MMM/yyyy",
      onChange: (DateTime newDate, _) {},
      pickerTheme: DateTimePickerTheme(
        backgroundColor: Colors.transparent,
        itemTextStyle: const TextStyle(color: Colors.black, fontSize: 19),
        dividerColor: Colors.grey[200],
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        header,
        const SizedBox(
          height: 50,
        ),
        Image.asset(
          AppImages.cake,
          height: 100,
        ),
        const SizedBox(
          height: 50,
        ),
        datePicker,
      ],
    );
  }
}
