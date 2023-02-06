import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final void Function()? onTap;
  final double elevation;
  final Alignment alignment;
  final IconData icon;
  final Color? backgroundColor;
  final Color iconColor;
  final double iconSize;

  const CustomIconButton(
      {super.key,
      this.onTap,
      this.elevation = 0.0,
      this.icon = Icons.chevron_left_rounded,
      this.alignment = Alignment.centerLeft,
      this.iconColor = Colors.black,
      this.iconSize = 30,
      this.backgroundColor});

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
          backgroundColor: backgroundColor ?? Colors.grey.shade200,
          elevation: elevation,
        ),
        child: Icon(
          icon,
          color: iconColor,
          size: iconSize,
        ),
      ),
    );
  }
}
