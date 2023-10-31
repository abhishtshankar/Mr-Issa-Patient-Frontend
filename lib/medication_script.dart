import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:patient/widget/app_widgets.dart';

import '../widget/custom_text_checkBox.dart';

class MedicationScriptScreen extends StatefulWidget {
  const MedicationScriptScreen({super.key});

  @override
  State<MedicationScriptScreen> createState() => _MedicationScriptScreenState();
}

class _MedicationScriptScreenState extends State<MedicationScriptScreen> {
  bool isCheckboxChecked = false; // Add this variable to manage the checkbox state

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              // Handle the back button tap action here
            },
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300]
                ,
              ),
              child: Icon(
                Icons.arrow_back,
                color: Color(0xff1A9FB2),
              ),
            ),
          ),
        ),
        title: Text(
          "Medication Script Upload",
          style: GoogleFonts.poppins(fontSize: 18, color: Color(0xff0C5C75)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildVSpacer(30),
            Padding(
              padding: EdgeInsets.only(left: 10),
              // Adjust as needed
              child: Row(
                children: [
                  Text(
                    "Upload Medication Script",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                height: 230,
                child: Container(
                  width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: Column(
                      children: [
                        SizedBox(height: 40),
                        Container(
                          height: 80,
                          width: 80,
                          color: Colors.white,
                          child: Image.asset(
                            "assets/images/file.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(height: 30),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "upload Your Medication Script",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xfff1A9FB2),),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    );

  }
}