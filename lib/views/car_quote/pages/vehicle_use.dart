import 'package:flutter/material.dart';
import 'package:insurance_app/config/images.dart';
import 'package:insurance_app/config/theme.dart';

class VehichleUsePage extends StatelessWidget {
  const VehichleUsePage({super.key});

  @override
  Widget build(BuildContext context) {
    final header = RichText(
      text: TextSpan(
        text: 'Use',
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

    final privateUseWidget = useOptions(
      title: 'Private',
      image: AppImages.home,
    );

    final privateCommercial = useOptions(
      title: 'Private-\nWork commmute',
      image: AppImages.homeBusiness,
    );

    final businessWidget = useOptions(
      title: 'Business',
      image: AppImages.business,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        header,
        const SizedBox(
          height: 50,
        ),
        privateUseWidget,
        const SizedBox(
          height: 20,
        ),
        privateCommercial,
        const SizedBox(
          height: 20,
        ),
        businessWidget
      ],
    );
  }

  Widget useOptions({
    required String title,
    required String image,
    Function()? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(13),
        ),
        child: Row(
          children: [
            Image.asset(
              image,
              height: 50,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: AppTextThemes.h3,
            )
          ],
        ),
      ),
    );
  }
}
