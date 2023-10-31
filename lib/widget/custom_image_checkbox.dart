import 'package:flutter/material.dart';

class CustomImageCheckBox extends StatefulWidget {
  final Image image;
  bool isChecked;
  final ValueChanged<bool> onChanged;

  CustomImageCheckBox({
    required this.image,
    required this.isChecked,
    required this.onChanged,
  });

  @override
  _CustomImageCheckBoxState createState() => _CustomImageCheckBoxState();
}

class _CustomImageCheckBoxState extends State<CustomImageCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.45 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
      height: 0.3 * MediaQuery.of(context).size.height, // Set height as a fraction of the screen height
      margin: EdgeInsets.only(top: 0.05 * MediaQuery.of(context).size.height), // Set margin as a fraction of the screen height
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(
          color: Colors.teal,
          width: 2.0,
        ),
      ),
      child: Row(
        children: [
          Transform.scale(
            scale: 1.5 * (MediaQuery.of(context).textScaleFactor), // Adjust the scale based on text scaling factor
            child: Checkbox(
              value: widget.isChecked,
              activeColor: Colors.teal,
              onChanged: (newBool) {
                setState(() {
                  widget.isChecked = newBool!;
                  widget.onChanged(widget.isChecked);
                });
              },
            ),
          ),
          SizedBox(width: 0.02 * MediaQuery.of(context).size.width), // Set spacing as a fraction of the screen width
          Padding(
            padding: EdgeInsets.all(0.001 * MediaQuery.of(context).size.width), // Set padding as a fraction of the screen width
            child: widget.image,
          ),
        ],
      ),
    );
  }
}
