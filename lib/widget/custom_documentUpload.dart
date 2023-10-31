import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:patient/widget/app_widgets.dart';

class CustomInfoContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    void _showDraftDialog() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          final dialogWidth = screenWidth * 0.8; // Adjust the width as needed
          final dialogHeight = screenWidth * 0.3; // Adjust the height as needed

          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            backgroundColor: Color(0xFF1A9FB2), // Teal background color
            content: Container(
              width: dialogWidth,
              height: dialogHeight,
              child: Center(
                child: Text(
                  'Saved And Edit Later On',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          );
        },
      );
    }


    void _showSignedDialog() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          final dialogWidth = screenWidth * 0.8; // Adjust the width as needed
          final dialogHeight = screenWidth * 0.3; // Adjust the height as needed

          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            backgroundColor: Color(0xFF1A9FB2), // Teal background color
            content: Container(
              width: dialogWidth,
              height: dialogHeight,
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'Digitally Signed by employee name',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    buildVSpacer(10),
                    Container(
                      width: 0.9 * MediaQuery.of(context).size.width,
                      height: 60,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Your ipsum",
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white), // White border when focused
                            borderRadius: BorderRadius.circular(8),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white), // White border when not focused
                            borderRadius: BorderRadius.circular(8),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                          hintStyle: TextStyle(color: Colors.white), // Hint text color (optional)
                        ),
                        onChanged: (comment) {
                          // Handle text field changes here
                        },
                      ),
                    )
                  ],
                ),

              ),
            ),
          );
        },
      );
    }

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          height: 170,
          width: screenWidth * 0.95,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.cyan.shade50,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  print("Image clicked");
                },
                child: Padding(
                  padding: EdgeInsets.only(top: 20, left: screenWidth * 0.1),
                  child: Image.asset(
                    'assets/images/image 99.png',
                    width: screenWidth * 0.26,
                    height: 100,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 45, left: screenWidth * 0.08),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: _showDraftDialog,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.cyan.shade900, width: 1),
                        ),
                        child: Text(
                          'SAVED AS DRAFT',
                          style: GoogleFonts.poppins(fontSize: 10, color: Colors.cyan.shade900),
                        ),
                      ),
                    ),
                    SizedBox(height: screenWidth * 0.04),
                    GestureDetector(
                      onTap: _showSignedDialog,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        color: Color(0xFF0C5C75),
                        child: Text(
                          'SAVED AND SIGNED',
                          style: GoogleFonts.poppins(fontSize: 10, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
