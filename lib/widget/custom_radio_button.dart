import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomRadioButton extends StatelessWidget {
  final int value;
  final int selectedOption;
  final ValueChanged<int?> onChanged;
  final String labelText;
  final Color activeColor;

  CustomRadioButton({
    required this.value,
    required this.selectedOption,
    required this.onChanged,
    required this.labelText,
    this.activeColor = Colors.cyan,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          value: value,
          groupValue: selectedOption,
          onChanged: (newValue) {

            onChanged(value);
          },
          activeColor: activeColor,
        ),
        Text(labelText),
      ],
    );
  }
}
