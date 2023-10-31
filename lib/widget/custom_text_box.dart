import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextBox extends StatelessWidget {
  final String title;

  CustomTextBox({required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 80,
          width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
          child: TextFormField(
            keyboardType: TextInputType.name,
            style: GoogleFonts.poppins(fontSize: 20, color: Colors.black),
            decoration: InputDecoration(
              hintText: title,
              fillColor: Colors.blueGrey.shade200.withOpacity(0.2),
              hintStyle: GoogleFonts.poppins(fontSize: 16, color: Colors.black87),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black26, width: 3),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}