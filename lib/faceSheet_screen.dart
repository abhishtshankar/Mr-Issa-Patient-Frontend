import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:patient/widget/app_buttons.dart';
import 'package:patient/widget/app_widgets.dart';
import 'package:patient/widget/custom_documentUpload.dart';
import 'package:patient/widget/custom_text.dart';
import 'package:patient/widget/dateInput_widget.dart';

class FaceSheetScreen extends StatefulWidget {
  const FaceSheetScreen({super.key});

  @override
  State<FaceSheetScreen> createState() => _FaceSheetScreenState();
}

class _FaceSheetScreenState extends State<FaceSheetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75),
        child: AppBar(
          automaticallyImplyLeading: false, // Add this line to remove the back arrow
          backgroundColor: Color(0x331A9FB2),
          title:  Text(
            'FACE SHEET',
            style: GoogleFonts.poppins(
                color: Color(0xFF0C5C75),
                fontSize: 18,
                fontWeight: FontWeight.bold),
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
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Resident Name :',
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                ),
                buildVSpacer(10),

                Container(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.04, // Adjust the multiplier as needed
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Your ipsum",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                buildVSpacer(20),
                CustomText( title : "Date of Birth",),
                DateInputField(),
                buildVSpacer(20),
                CustomText( title : 'Admit Date :',),
                DateInputField(),

                buildVSpacer(10),

                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Facility Address :',
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                ),
                buildVSpacer(10),

                Container(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.04, // Adjust the multiplier as needed
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Your ipsum",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),

                buildVSpacer(10),

                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Facility Phone Number :',
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                ),
                buildVSpacer(10),

                Container(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.04, // Adjust the multiplier as needed
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Your ipsum",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                buildVSpacer(10),

                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Place of Birth :',
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                ),
                buildVSpacer(10),

                Container(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.04, // Adjust the multiplier as needed
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Your ipsum",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),

                buildVSpacer(10),



                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Eye Color :',
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                ),
                buildVSpacer(10),

                Container(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.04, // Adjust the multiplier as needed
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Your ipsum",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),

                buildVSpacer(10),


                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Height :',
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                ),
                buildVSpacer(10),

                Container(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.04, // Adjust the multiplier as needed
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Your ipsum",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),

                buildVSpacer(10),

                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Weight:',
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                ),
                buildVSpacer(10),

                Container(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.04, // Adjust the multiplier as needed
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Your ipsum",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),

                buildVSpacer(10),



                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Hair Color :',
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                ),
                buildVSpacer(10),

                Container(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.04, // Adjust the multiplier as needed
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Your ipsum",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),

                buildVSpacer(10),


                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Identifiable Marks :',
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                ),
                buildVSpacer(10),

                Container(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.04, // Adjust the multiplier as needed
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Your ipsum",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),

                buildVSpacer(10),

                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Primary Language :',
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                ),
                buildVSpacer(10),

                Container(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.04, // Adjust the multiplier as needed
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Your ipsum",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),

                buildVSpacer(10),

                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Court Ordered Treatment :',
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                ),
                buildVSpacer(10),

                Container(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.04, // Adjust the multiplier as needed
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Your ipsum",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),

                buildVSpacer(10),

                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Family/Guardian Emergency Name and\nContact :',
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                ),
                buildVSpacer(10),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.04, // Adjust the multiplier as needed
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Your ipsum",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                buildVSpacer(10),

                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Facility Emergency Contact :',
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                ),
                buildVSpacer(10),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.04, // Adjust the multiplier as needed
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Your ipsum",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                buildVSpacer(10),

                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Facility Emergency Contact :',
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                ),
                buildVSpacer(10),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.04, // Adjust the multiplier as needed
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Your ipsum",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                buildVSpacer(10),

                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'MEDICATION Allergies :',
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                ),
                buildVSpacer(10),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.04, // Adjust the multiplier as needed
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Your ipsum",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                buildVSpacer(10),

                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Other Allergies(animal,food,environment)',
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                ),
                buildVSpacer(10),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.04, // Adjust the multiplier as needed
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Your ipsum",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                buildVSpacer(10),

                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Primary Care Provider',
                    style: GoogleFonts.poppins(fontSize: 20, color: Colors.black,fontWeight: FontWeight.w600),
                  ),
                ),
                buildVSpacer(10),

                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Name',
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                ),
                buildVSpacer(10),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.04, // Adjust the multiplier as needed
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Your ipsum",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                buildVSpacer(10),


                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Mobile Number :',
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                ),
                buildVSpacer(10),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.04, // Adjust the multiplier as needed
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Your ipsum",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                buildVSpacer(10),

                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Address :',
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                ),
                buildVSpacer(10),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.04, // Adjust the multiplier as needed
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Your ipsum",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                buildVSpacer(10),

                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Other Specialist - Please specify :',
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                ),
                buildVSpacer(10),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.04, // Adjust the multiplier as needed
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Your ipsum",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                buildVSpacer(10),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Other Specialist - Please specify :',
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                ),
                buildVSpacer(10),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.04, // Adjust the multiplier as needed
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Your ipsum",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                buildVSpacer(10),

                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Psychiatric Provider',
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ),
                buildVSpacer(10),

                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Name',
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                ),
                buildVSpacer(10),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.04, // Adjust the multiplier as needed
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Your ipsum",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                buildVSpacer(10),


                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Mobile Number :',
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                ),
                buildVSpacer(10),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.04, // Adjust the multiplier as needed
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Your ipsum",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                buildVSpacer(10),

                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Address :',
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                ),
                buildVSpacer(10),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.04, // Adjust the multiplier as needed
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Your ipsum",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                buildVSpacer(10),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Other Specialist - Please specify :',
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                ),
                buildVSpacer(10),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.04, // Adjust the multiplier as needed
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Your ipsum",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                buildVSpacer(10),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Other Specialist - Please specify :',
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                ),
                buildVSpacer(10),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.04, // Adjust the multiplier as needed
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Your ipsum",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                buildVSpacer(10),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Other Specialist - Please specify :',
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                ),
                buildVSpacer(10),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.04, // Adjust the multiplier as needed
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Your ipsum",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                buildVSpacer(10),

                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Preferred Hospital Phone :',
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                ),
                buildVSpacer(10),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.04, // Adjust the multiplier as needed
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Your ipsum",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                buildVSpacer(10),

                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Preferred Hospital Address :',
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                ),
                buildVSpacer(10),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.04, // Adjust the multiplier as needed
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Your ipsum",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                buildVSpacer(10),

                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Health Plan :',
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                ),
                buildVSpacer(10),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.04, // Adjust the multiplier as needed
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Your ipsum",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                buildVSpacer(10),


                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'ID # :',
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                ),
                buildVSpacer(10),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.04, // Adjust the multiplier as needed
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Your ipsum",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                buildVSpacer(10),

                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Case Manager :',
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                ),
                buildVSpacer(10),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.04, // Adjust the multiplier as needed
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Your ipsum",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                buildVSpacer(10),

                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Phone Number/E-Mail :',
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                ),
                buildVSpacer(10),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.04, // Adjust the multiplier as needed
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Your ipsum",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                buildVSpacer(10),

                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Social Security Repressentative Payee :',
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                ),
                buildVSpacer(10),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.04, // Adjust the multiplier as needed
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Your ipsum",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                buildVSpacer(10),


                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Phone Number/E-Mail :',
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                ),
                buildVSpacer(10),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.04, // Adjust the multiplier as needed
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Your ipsum",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                buildVSpacer(10),


                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Mental Health Diagnoses :',
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                ),
                buildVSpacer(10),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.04, // Adjust the multiplier as needed
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Your ipsum",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                buildVSpacer(10),

                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Past Surgeries :',
                    style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                ),
                buildVSpacer(10),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.04, // Adjust the multiplier as needed
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Your ipsum",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                buildVSpacer(10),

                CustomInfoContainer(),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
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
    );
  }
}
