import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final void Function()? onTap;
  final double elevation;
  final Alignment alignment;
  final IconData icon;

  const CustomIconButton({
    super.key,
    this.onTap,
    this.elevation = 0.0,
    this.icon = Icons.chevron_left_rounded,
    this.alignment = Alignment.centerLeft,
  });

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
          backgroundColor: Colors.grey,
          elevation: elevation,
        ),
        child: const Icon(
          Icons.chevron_left_rounded,
          color: Colors.black,
          size: 30,
        ),
      ),
    );
  }
}
