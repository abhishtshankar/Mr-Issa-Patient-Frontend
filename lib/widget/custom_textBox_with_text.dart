import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:patient/widget/app_widgets.dart';

class CustomTextBoxWithText extends StatelessWidget {
  final String title;

  CustomTextBoxWithText({required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 14, // Set font size based on screen width and text scaling factor
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ),
        buildVSpacer(10),
        Padding(
          padding: EdgeInsets.only(left: 0.06 * MediaQuery.of(context).size.width), // Set padding as a fraction of the screen width
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 0.12 * MediaQuery.of(context).size.height, // Set height as a fraction of the screen height
              width: 0.4 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
              child: TextFormField(
                keyboardType: TextInputType.name,
                style: GoogleFonts.poppins(fontSize: 0.05 * MediaQuery.of(context).textScaleFactor * MediaQuery.of(context).size.width, color: Colors.black), // Set font size based on screen width and text scaling factor
                decoration: InputDecoration(
                  fillColor: Colors.blueGrey.shade200.withOpacity(0.2),
                  hintStyle: GoogleFonts.poppins(fontSize: 0.05 * MediaQuery.of(context).textScaleFactor * MediaQuery.of(context).size.width, color: Colors.black87), // Set font size based on screen width and text scaling factor
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black26, width: 2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black26, width: 3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
