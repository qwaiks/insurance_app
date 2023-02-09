import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker_theme.dart';
import 'package:flutter_holo_date_picker/widget/date_picker_widget.dart';
import 'package:insurance_app/config/theme.dart';

class UserLicenseDatePage extends StatelessWidget {
  const UserLicenseDatePage({super.key});

  @override
  Widget build(BuildContext context) {
    final header = RichText(
      text: TextSpan(
        text: 'The date I passed my ',
        children: const [
          TextSpan(
            text: ' B lincense',
            style: TextStyle(
              color: Colors.green,
            ),
          )
        ],
        style: AppTextThemes.h1.copyWith(color: Colors.black, fontSize: 34),
      ),
    );

    final datePicker = DatePickerWidget(
      looping: false,
      firstDate: DateTime(1950),
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
          height: 20,
        ),
        datePicker,
        const SizedBox(
          height: 8,
        ),
        Text(
          'You dont have an European driving license?',
          style: AppTextThemes.caption
              .copyWith(color: Colors.green, fontWeight: FontWeight.w700),
        )
      ],
    );
  }
}
