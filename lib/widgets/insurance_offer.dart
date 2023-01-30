import 'package:flutter/material.dart';

class InsuranceOffer extends StatelessWidget {
  final String title;
  final String content;
  final String price;
  const InsuranceOffer(
      {super.key,
      required this.title,
      required this.content,
      required this.price});

  @override
  Widget build(BuildContext context) {
    final helpButton = SizedBox();

    final personalizeButton = SizedBox();

    final titleWidget = Text(
      title,
    );

    final contentWidget = Row(
      children: [
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(30)),
        ),
        const SizedBox(
          width: 16,
        ),
        Flexible(
          child: Text(content),
        ),
        const SizedBox(
          width: 16,
        ),
        Text(price)
      ],
    );

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(13)),
          color: Colors.grey),
      child: Column(
        children: [
          titleWidget,
          const SizedBox(
            height: 20,
          ),
          contentWidget,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [helpButton, personalizeButton],
          )
        ],
      ),
    );
  }
}
