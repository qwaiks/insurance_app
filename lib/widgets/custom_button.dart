import 'package:flutter/material.dart';
import 'package:insurance_app/config/colors.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  final Color backgroundColor;
  final Color textColor;
  final bool fullWidth;

  const CustomButton({
    super.key,
    required this.title,
    this.fullWidth = false,
    this.onTap,
    this.backgroundColor = AppColors.primary,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: fullWidth ? const Size(double.infinity, 50) : null,
        padding: fullWidth
            ? const EdgeInsets.symmetric(horizontal: 50, vertical: 10)
            : const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        backgroundColor: backgroundColor,
        disabledBackgroundColor: Colors.grey.shade100,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      onPressed: onTap,
      child: Text(
        title,
        style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: (onTap != null) ? textColor : Colors.black.withOpacity(0.1)),
      ),
    );
  }
}
