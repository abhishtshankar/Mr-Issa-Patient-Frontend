import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCheckBox extends StatefulWidget {
  final String label;
  bool isChecked;
  final ValueChanged<bool> onChanged;

  CustomCheckBox({
    required this.label,
    required this.isChecked,
    required this.onChanged,
  });

  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.44 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
      height: 0.1 * MediaQuery.of(context).size.height, // Set height as a fraction of the screen height
      margin: EdgeInsets.only(top: 0.05 * MediaQuery.of(context).size.height), // Set margin as a fraction of the screen height
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(
          color: Colors.grey,
          width: 2.0,
        ),
      ),
      child: Row(
        children: [
          Transform.scale(
            scale: 1.2 * (MediaQuery.of(context).textScaleFactor), // Adjust the scale based on text scaling factor
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
          Text(
            widget.label,
            style: GoogleFonts.poppins(
              fontSize: 0.038 * MediaQuery.of(context).textScaleFactor * MediaQuery.of(context).size.width, // Set font size based on screen width and text scaling factor
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
