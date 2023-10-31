import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:patient/widget/app_buttons.dart';
import 'package:patient/widget/app_widgets.dart';
import 'package:patient/widget/custom_documentUpload.dart';
import 'package:patient/widget/custom_text.dart';
import 'package:patient/widget/dateInput_widget.dart';

class RefusalOfTreatmentScreen extends StatefulWidget {
  const RefusalOfTreatmentScreen({super.key});

  @override
  State<RefusalOfTreatmentScreen> createState() => _RefusalOfTreatmentScreenState();
}

class _RefusalOfTreatmentScreenState extends State<RefusalOfTreatmentScreen> {
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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75),
        child: AppBar(
          automaticallyImplyLeading: false, // Add this line to remove the back arrow
          backgroundColor: Color(0x331A9FB2),
          title:  Text(
            'REFUSAL OF MEDICAL TREATMENT\nFORM',
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

      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomText(title: "Today's Date"),
            DateInputField(),
            CustomText(title: "Resident’s Name:"),
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
            CustomText(title: "Date of Birth Date:"),
            DateInputField(),
            CustomText(title: "Describe Illness/Injury:"),
            SizedBox(height: 10),
            Container(
              width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
              height: 130,
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
            buildVSpacer(10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 8),
              child: Row(
                children: [
                  Text(
                    'I\n________________________________\n_________have been offered the opportunity\nto have medical care at the doctors office,\nhospital,urgent care for the above illness/injury. I\nfeel as though I do not require medical care at this\ntime. However, should I feel the need to have medical\ncare, I will immediately report this to a staff.',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ],
              ),
            ),

            buildVSpacer(10),
            CustomText(title: "Resident’s Name:"),
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
            buildVSpacer(10),
            CustomInfoContainer(),
            buildVSpacer(10),
            CustomText(title: "Date"),
            DateInputField(),
            CustomText(title: "Time"),
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
            buildVSpacer(10),
            CustomText(title: "Staff Name:"),
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
            buildVSpacer(10),
            CustomInfoContainer(),
            buildVSpacer(10),
            CustomText(title: "Date"),
            DateInputField(),
            CustomText(title: "Time"),
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
          ],
        ),
      ),

    );

  }
}