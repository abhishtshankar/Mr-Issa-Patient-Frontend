import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:patient/widget/app_buttons.dart';
import 'package:patient/widget/app_widgets.dart';
import 'package:patient/widget/custom_documentUpload.dart';
import 'package:patient/widget/custom_text.dart';
import 'package:patient/widget/dateInput_widget.dart';

import '../widget/custom_text_checkBox.dart';

class StaffingNoteScreen extends StatefulWidget {
  const StaffingNoteScreen({super.key});

  @override
  State<StaffingNoteScreen> createState() => _StaffingNoteScreenState();
}

class _StaffingNoteScreenState extends State<StaffingNoteScreen> {
  bool isCheckboxChecked = false; // Add this variable to manage the checkbox state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 75,
        decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppButtons.primaryButton(
              text: 'SUBMIT DETAILS',
              onPressed: () {
                Navigator.of(context).pop();

              },
            ),

          ],
        ),
      ),
      appBar: AppBar(

        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffEEEEEE)
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
          "Staffing Note/ Concurrent Review",
          style: GoogleFonts.poppins(fontSize: 18, color: Color(0xff0C5C75)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 8),
              child: Row(
                children: [
                  Text(
                    "Resident's Details",
                    style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            buildVSpacer(10),
            CustomText(title: "Resident’s Name:"),
            DateInputField(),
            SizedBox(height: 10,),
            CustomText(title: "Today's Date"),
            DateInputField(),
            SizedBox(height: 10,),
            CustomText(title: "Begin Time"),
            SizedBox(height: 5,),
            Container(
              width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
              height: 60,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter your Lorem Ipsum",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 45, horizontal: 15),
                ),
                onChanged: (comment) {
                  setState(() {});
                },
              ),
            ),
            SizedBox(height: 10,),
            CustomText(title: "End Time"),
            SizedBox(height: 5,),
            Container(
              width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
              height: 60,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter your Lorem Ipsum",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 45, horizontal: 15),
                ),
                onChanged: (comment) {
                  setState(() {});
                },
              ),
            ),
            SizedBox(height: 10,),
            CustomText(title: "Participants Present/Role"),
            SizedBox(height: 5,),
            Container(
              width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
              height: 60,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter your Lorem Ipsum",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 45, horizontal: 15),
                ),
                onChanged: (comment) {
                  setState(() {});
                },
              ),
            ),
            SizedBox(height: 10,),
            CustomText(title: "Presenting Issue(s) : "),
            SizedBox(height: 5,),
            Container(
              width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
              height: 60,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter your Lorem Ipsum",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 45, horizontal: 15),
                ),
                onChanged: (comment) {
                  setState(() {});
                },
              ),
            ),
            SizedBox(height: 10,),
            CustomText(title: "Progress : "),
            SizedBox(height: 5,),
            Container(
              width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
              height: 60,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter your Lorem Ipsum",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 45, horizontal: 15),
                ),
                onChanged: (comment) {
                  setState(() {});
                },
              ),
            ),
            SizedBox(height: 10,),
            CustomText(title: "Recommendations : "),
            SizedBox(height: 5,),
            Container(
              width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
              height: 60,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter your Lorem Ipsum",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 45, horizontal: 15),
                ),
                onChanged: (comment) {
                  setState(() {});
                },
              ),
            ),


            SizedBox(height: 20,),
            CustomInfoContainer()
          ],
        ),
      ),

    );

  }
}