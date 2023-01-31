import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  final String? title;
  final String? labelText;
  final String? hintText;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final bool enabled;
  final List<TextInputFormatter>? inputFormatters;
  final String Function(String?)? validator;
  final Function(String)? onChanged;
  final Color? borderColor;

  const CustomTextField({
    super.key,
    this.title,
    this.labelText,
    this.hintText,
    this.keyboardType = TextInputType.text,
    this.controller,
    this.enabled = true,
    this.inputFormatters,
    this.validator,
    this.onChanged,
    this.borderColor,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    final outlineBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(
        color: Colors.grey.withOpacity(0.4),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTitle(),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          validator: widget.validator,
          decoration: InputDecoration(
            isDense: false,
            hintStyle:
                const TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
            labelText: widget.labelText,
            labelStyle: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.grey.withOpacity(0.5),
            ),
            hintText: widget.hintText,
            enabledBorder: outlineBorder,
            border: outlineBorder,
          ),
          keyboardType: widget.keyboardType,
          cursorColor: Theme.of(context).primaryColor,
          controller: widget.controller,
          enabled: widget.enabled,
          inputFormatters: widget.inputFormatters,
          onChanged: widget.onChanged,
        ),
      ],
    );
  }

  Widget _buildTitle() {
    return widget.title == null
        ? const SizedBox()
        : Text(
            widget.title!,
            style: const TextStyle(color: Colors.black, fontSize: 16.0),
          );
  }
}
