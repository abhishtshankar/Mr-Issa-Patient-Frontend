import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextRadioButtonWidget extends StatelessWidget {
  final String text1;
  final String text2;
  final bool isSelected;
  final ValueChanged<bool?>? onChanged; // Notice the 'bool?' here

  TextRadioButtonWidget({
    required this.text1,
    required this.text2,
    required this.isSelected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Radio(
          value: isSelected,
          groupValue: true,
          onChanged: onChanged,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text1,
              style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            Text(text2,
              style: GoogleFonts.poppins(fontSize: 14),
            ),
          ],
        ),

      ],
    );
  }
}
