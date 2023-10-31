import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioCircular extends StatelessWidget {
  final String label;
  final bool isSelected;
  final Function(bool) onChanged;

  RadioCircular({
    required this.label,
    required this.isSelected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(!isSelected);
      },
      child: Row(
        children: <Widget>[
          Container(
            width: 20.0,
            height: 20.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: isSelected ? Colors.cyan : Colors.grey,
              ),
            ),
            child: isSelected
                ? Center(
              child: Container(
                width: 10.0,
                height: 10.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.cyan,
                ),
              ),
            )
                : null,
          ),
          SizedBox(width: 8),
          Text(label),
        ],
      ),
    );
  }
}