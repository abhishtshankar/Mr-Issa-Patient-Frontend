import 'package:flutter/material.dart';

class CustomCheckBoxGroup extends StatefulWidget {
  const CustomCheckBoxGroup({super.key});

  @override
  State<CustomCheckBoxGroup> createState() => _CustomCheckBoxGroupState();
}

class _CustomCheckBoxGroupState extends State<CustomCheckBoxGroup> {
  bool is6MonthsSelected = false;
  bool isAnnualSelected = false;
  bool isOthersSelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CheckboxListTile(
          title: Text('6 Months'),
          controlAffinity: ListTileControlAffinity.leading,
          value: is6MonthsSelected,
          onChanged: (value) {
            setState(() {
              is6MonthsSelected = value!;
            });
          },
        ),
        CheckboxListTile(
          title: Text('Annual'),
          controlAffinity: ListTileControlAffinity.leading,
          value: isAnnualSelected,
          onChanged: (value) {
            setState(() {
              isAnnualSelected = value!;
            });
          },
        ),
        CheckboxListTile(
          title: Text('Others'),
          controlAffinity: ListTileControlAffinity.leading,
          value: isOthersSelected,
          onChanged: (value) {
            setState(() {
              isOthersSelected = value!;
            });
          },
        ),
      ],
    );
  }
}
