import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  final String? initalValue;
  final String selectedValue;
  final List<String> list;
  final String hint;
  final Function(String?)? onChanged;
  final String? title;
  final bool isEnabled;

  const CustomDropdown({
    super.key,
    this.initalValue,
    required this.list,
    required this.hint,
    this.isEnabled = true,
    this.onChanged,
    required this.selectedValue,
    this.title,
  });

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final top = Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Text(
        widget.title ?? "",
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16.0,
        ),
      ),
    );

    final dropdown = Container(
      padding: const EdgeInsets.only(left: 10.0, right: 10),
      height: 50.0,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(7.0),
        ),
        border: Border.all(color: Colors.grey.withOpacity(0.3)),
      ),
      child: DropdownButton(
        underline: Container(),
        isExpanded: true,
        hint: Text(widget.hint),
        value: widget.selectedValue,
        items: widget.list.map((item) {
          return DropdownMenuItem(
            value: item,
            child: Text(
              item,
            ),
          );
        }).toList(),
        onChanged: widget.isEnabled ? widget.onChanged : null,
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        widget.title == null ? const SizedBox() : top,
        dropdown,
      ],
    );
  }
}
