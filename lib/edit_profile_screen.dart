

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:patient/widget/app_colors.dart';
import 'package:patient/widget/custom_text_box.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar : AppBar(
            backgroundColor: Colors.white,
            leading: BackButton(color: Color(0xFF1A9FB2)),
            title: Text(
              'EDIT PROFILE',
              style: GoogleFonts.poppins(color: Color(0xFF0C5C75)),
            ),
            elevation: 0.0, // Set elevation to 0.0 to remove the underline
          ),
          body: SingleChildScrollView(
            child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 48.0),
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppColors.kTextColor1,
                      ),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/profile.png',),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40,),
              CustomTextBox(title: 'Full Name',),
              SizedBox(height: 6,),
              CustomTextBox(title: 'Gender',),
              SizedBox(height: 6,),
              CustomTextBox(title: 'Contact Number',),
              SizedBox(height: 6,),
              CustomTextBox(title: 'Email ID',),
              SizedBox(height: 6,),
              CustomTextBox(title: 'Address',),
              SizedBox(height: 6,),
              CustomTextBox(title: 'Status',),
              SizedBox(height: 20), // Add some spacing between input fields and the button
              ElevatedButton(
                onPressed: () {
                  // Add your save functionality here
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal, // Background color
                  minimumSize: Size(200, 45),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // Adjust the radius as needed
                  ),// Width and height
                ),
                child: Text(
                  'Save',
                  style: GoogleFonts.poppins(color: Colors.white), // Text color
                ),
              )
            ],
        ),
          ),
      ),
    );
  }
}
