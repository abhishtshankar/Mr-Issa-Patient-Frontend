import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:patient/widget/app_buttons.dart';
import 'package:patient/widget/app_widgets.dart';
import 'package:patient/widget/custom_documentUpload.dart';
import 'package:patient/widget/custom_text.dart';
import 'package:patient/widget/dateInput_widget.dart';

class AppointmentTracking extends StatefulWidget {
  const AppointmentTracking({super.key});

  @override
  State<AppointmentTracking> createState() => _AppointmentTrackingState();
}

class _AppointmentTrackingState extends State<AppointmentTracking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75),
        child: AppBar(
          automaticallyImplyLeading: false, // Add this line to remove the back arrow
          backgroundColor: Color(0x331A9FB2),
          title:  Text(
            "APPOINTMENT TRACKING",
            style: GoogleFonts.poppins(
                color: Color(0xFF0C5C75),
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
          actions: [
            Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: IconButton(
                icon: Icon(
                  Icons.clear,
                  color: Color(0xFF0C5C75),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        ),
      ),

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 8),
              child: Row(
                children: [
                  Text(
                    'Appointment Tracking Log',
                    style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            buildVSpacer(10),
            CustomText(title: "Today's Date"),
            DateInputField(),
            buildVSpacer(10),
            CustomText(title: "Provider Name/Clinic"),
            buildVSpacer(10),
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
            CustomText(title: "Reason for Visit"),
            SizedBox(height: 10),
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
            CustomText(title: "Medication Changes"),
            SizedBox(height: 10),
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
            CustomText(title: "Next Follow up"),
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
            CustomText(title: "Provider Type"),
            SizedBox(height: 10),
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
            CustomText(title: "Refusal"),
            SizedBox(height: 10),
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
            CustomInfoContainer()
          ],
        ),
      ),

    );

  }
}