import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextform extends StatelessWidget {
  final String title;

  CustomTextform({required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [


        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 18.0,right:18),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 80,
              width: 390,
              child: TextFormField(
                keyboardType: TextInputType.number,
                style: GoogleFonts.poppins(fontSize: 20, color: Colors.black),
                decoration: InputDecoration(
                  hintText: title,
                  fillColor: Colors.blueGrey.shade200.withOpacity(0.2),
                  hintStyle: GoogleFonts.poppins(fontSize: 20, color: Colors.black87),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
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