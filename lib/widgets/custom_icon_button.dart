import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final void Function()? onTap;
  final double elevation;
  final Alignment alignment;
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;

  const CustomIconButton(
      {super.key,
      this.onTap,
      this.elevation = 0.0,
      this.icon = Icons.chevron_left_rounded,
      this.alignment = Alignment.centerLeft,
      this.iconColor = Colors.black,
      this.backgroundColor = Colors.grey});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          fixedSize: const Size.square(44),
          shape: const CircleBorder(),
          backgroundColor: backgroundColor,
          elevation: elevation,
        ),
        child: Icon(
          Icons.chevron_left_rounded,
          color: iconColor,
          size: 30,
        ),
      ),
    );
  }
}
