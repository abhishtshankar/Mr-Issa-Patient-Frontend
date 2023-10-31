import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:patient/intake_screen.dart';
import 'package:patient/widget/app_buttons.dart';
import 'package:patient/widget/app_widgets.dart';
import 'package:patient/widget/custom_documentUpload.dart';
import 'package:patient/widget/custom_text.dart';
import 'package:patient/widget/custom_text_field.dart';
import 'package:patient/widget/dateInput_widget.dart';
import 'package:patient/widget/radiobox_widget.dart';

class InitialAssesment extends StatefulWidget {
  const InitialAssesment({super.key});

  @override
  State<InitialAssesment> createState() => _InitialAssesmentState();
}

class _InitialAssesmentState extends State<InitialAssesment> {
  bool isSelectedInitial = false;
  bool isSelectedUpdate = false;
  bool isCheckboxChecked = false;

  Future<void> _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != DateTime.now()) {
      // Do something with the selected date
      print("Selected date: ${picked.toString()}");
    }
  }
  bool isYesSelected = false;
  bool isNoSelected = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(75),
          child: AppBar(
            automaticallyImplyLeading: false, // Add this line to remove the back arrow
            backgroundColor: Color(0x331A9FB2),
            title:  Text(
              "INITIAL ASSESSMENT",
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
            scrollDirection: Axis.vertical,
            child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
                    child: Text(
                      'COMPANY NAME has notified\n _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ \n_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _  to participate\n in his/her Service Treatment Plan/Initial\n Assessment on ______',
                      style: GoogleFonts.poppins(
                        fontSize: MediaQuery.of(context).size.width * 0.04, // Adjust the multiplier as needed
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  //Section-1
                  Center(
                    child: Text(
                      'Section-1',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: EdgeInsets.only(left: 8), // Adjust the multiplier as needed
                    child: Row(
                      children: [
                        Text(
                          "Basic Details",
                          style: GoogleFonts.poppins(
                            fontSize: 22, // Adjust the multiplier as needed
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  CustomText( title : "Resident Full Name",),
                  SizedBox(height: 10),
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
                  CustomText(title: "Select Gender"),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 15),
                        Row(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              width: 0.4 * MediaQuery.of(context).size.width, // Increase the width
                              height: 80, // Decrease the height
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal:0.09 * MediaQuery.of(context).size.width),
                                child: RadioCircular(
                                  label: 'Male',
                                  isSelected: isSelectedInitial,
                                  onChanged: (bool value) {
                                    setState(() {
                                      isSelectedInitial = value;
                                      isSelectedUpdate = !value;
                                    });
                                  },
                                ),
                              ),
                            ),
                            SizedBox(width: 0.05 * MediaQuery.of(context).size.width),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              width: 0.4 * MediaQuery.of(context).size.width, // Increase the width
                              height: 80, // Decrease the height
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal:0.09 * MediaQuery.of(context).size.width),
                                child: RadioCircular(
                                  label: 'Female',
                                  isSelected: isSelectedUpdate,
                                  onChanged: (bool value) {
                                    setState(() {
                                      isSelectedUpdate = value;
                                      isSelectedInitial = !value;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  buildVSpacer(20),
                  CustomText( title : "Date of Birth",),
                  SizedBox(height: 10,),
                  DateInputField(),
                  buildVSpacer(20),

                  CustomText( title : "Admission Date",),
                  buildVSpacer(10),
                  DateInputField(),
                  buildVSpacer(20),
                  CustomText( title : "AHCCCS",),
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

                  CustomText( title : "Preferred Language",),

                  buildVSpacer(10),

                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    child:TextFormField(
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "English",
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.arrow_drop_down_sharp,
                            color: Colors.black,
                            size: 40,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  buildVSpacer(20),

                  CustomText( title : "Ethnicity",),
                  buildVSpacer(10),

                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    child: TextFormField(
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Asian",
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.arrow_drop_down_sharp,
                            color: Colors.black,
                            size: 40,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  CustomText( title : "Admission Status",),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    child: TextFormField(
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Voluntary",
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.arrow_drop_down_sharp,
                            color: Colors.black,
                            size: 40,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  buildVSpacer(20),

                  Row(
                    children: [
                      CustomText( title : "Program Location & Address",),
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xCBF5958C),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Image.asset('assets/images/image 73.png', width: 24, height: 24),
                              SizedBox(width: 8),
                              Text(
                                'Locate',
                                style: TextStyle(color: Color( 0xFFED4040),),
                              ),
                              SizedBox(width: 8),
                              Icon(Icons.arrow_drop_down, color: Color( 0xFFED4040),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  buildVSpacer(10),

                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    height: 114,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Enter your Lorem Ipsum",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 45, horizontal: 15),
                      ),
                    ),
                  ),
                  buildVSpacer(20),

                  CustomText( title : "Guardianship/POA/PUB FID Name:",),
                  buildVSpacer(10),

                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter your Lorem Ipsum",
                          border: OutlineInputBorder()),
                    ),
                  ),
                  buildVSpacer(20),

                  CustomText( title : "Approved By:",),
                  buildVSpacer(10),

                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter your Lorem Ipsum",
                          border: OutlineInputBorder()),
                    ),
                  ),
                  buildVSpacer(25),

                  Padding(
                    padding: EdgeInsets.only(left: 8), // Adjust the multiplier as needed
                    child: Row(
                      children: [
                        Text(
                          "Other Details",
                          style: GoogleFonts.poppins(
                            fontSize: 22, // Adjust the multiplier as needed
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  buildVSpacer(20),

                  CustomText( title : "Reason For Admission To Services",),
                  buildVSpacer(10),

                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    child: TextFormField(
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Enter your Lorem Ipsum",
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.arrow_drop_down_sharp,
                            color: Colors.black,
                            size: 40,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  buildVSpacer(20),

                  CustomText( title : "Resident's Goals",),
                  buildVSpacer(10),

                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    height: 114,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Enter your Lorem Ipsum",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 45, horizontal: 15),
                      ),
                    ),
                  ),
                  buildVSpacer(25),

                  CustomText( title : "Resident's Strength",),
                  buildVSpacer(10),

                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    child: TextFormField(
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Enter your Lorem Ipsum",
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.arrow_drop_down_sharp,
                            color: Colors.black,
                            size: 40,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  buildVSpacer(25),

                  CustomText( title : "Recident's Limitation(s)",),
                  buildVSpacer(10),

                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    height: 114,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Enter your Lorem Ipsum",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 45, horizontal: 15),
                      ),
                    ),
                  ),
                  buildVSpacer(25),

                  CustomText( title : "Current behaviourals Issues/ Symptoms",),
                  buildVSpacer(10),

                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    height: 114,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Enter your Lorem Ipsum",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 45, horizontal: 15),
                      ),
                    ),
                  ),
                  buildVSpacer(25),
                  Padding(
                    padding: EdgeInsets.only(left: 8), // Adjust the multiplier as needed
                    child: Row(
                      children: [
                        Text(
                          "Objectives",
                          style: GoogleFonts.poppins(
                            fontSize: 22, // Adjust the multiplier as needed
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  buildVSpacer(10),

                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Enter Your identified Needs/Targeted Behaviour\nIntervention(s) to Meet Objectives",
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  buildVSpacer(25),

                  Center(
                    child: Container(
                      width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                      height: 380,
                      decoration: BoxDecoration(
                        color: Color(0x331A9FB2),
                        borderRadius: BorderRadius.circular(8), // Add a border radius
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start, // Align content to the center vertically
                        children: [
                          SizedBox(height: 30),
                          Padding(
                            padding: const EdgeInsets.only(left: 23),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Needs",
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: TextFormField(
                              keyboardType: TextInputType.datetime,
                              style: GoogleFonts.poppins(fontSize: 14),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Enter your Lorem Ipsum',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                contentPadding: EdgeInsets.symmetric(vertical: 45, horizontal: 15),
                              ),
                            ),
                          ),
                          buildVSpacer(10),
                          Padding(
                            padding: const EdgeInsets.only(left: 23),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Interventions",
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Enter your Lorem Ipsum',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                contentPadding: EdgeInsets.symmetric(vertical: 45, horizontal: 15),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  buildVSpacer(20),

                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                      height: 65,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Color(0xFF0C5C75),
                          width: 2, // Border width
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.white,
                              border: Border.all(
                                color: Color(0xFF0C5C75),
                                width: 2, // Border width
                              ),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Color(0xFF0C5C75),
                              size: 20,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Add New Objectives',
                            style: GoogleFonts.poppins(
                              color: Color(0xFF0C5C75),
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  buildVSpacer(20),

                  CustomText( title : "Discharge PLan",),
                  buildVSpacer(10),

                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "Enter your Lorem Ipsum",
                          border: OutlineInputBorder()),
                    ),
                  ),
                  buildVSpacer(25),

                  CustomText( title : "Estimated Date Of Discharge",),
                  buildVSpacer(10),

                  DateInputField(),

                  buildVSpacer(20),
                  CheckboxListTile(
                    title: Text('Yes, I (Resident/guardian) am in agreement with the types and levels of services included in my behavior plan.'),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: isYesSelected,
                    onChanged: (value) {
                      setState(() {
                        isYesSelected = value!;
                        if (isNoSelected && isYesSelected) {
                          isNoSelected = false;
                        }
                      });
                    },
                  ),
                  buildVSpacer(20),
                  CheckboxListTile(
                    title: Text('No, I (Resident/guardian) disagree with the types and/or levels of some or all of the services included in my behavioral health treatment plan. By checking this box, I (Resident/guardian) will receive the services that I have agreed to receive and may appeal the treatment team’s decision to not include all the types and/ or levels of services that I have requested. *'),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: isYesSelected,
                    onChanged: (value) {
                      setState(() {
                        isYesSelected = value!;
                        if (isNoSelected && isYesSelected) {
                          isNoSelected = false;
                        }
                      });
                    },
                  ),
                  buildVSpacer(10),
                  CustomText( title : "Resident/Guardian name",),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "Enter your Lorem Ipsum",
                          border: OutlineInputBorder()),
                    ),
                  ),
                  SizedBox(height: 15,),
                  CustomInfoContainer(),
                  SizedBox(height: 15,),
                  CustomText( title : "Date",),
                  SizedBox(
                    height: 10,
                  ),
                  DateInputField(),

                  SizedBox(
                    height: 15,
                  ),
                  CustomText( title : "Staff Name",),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "Enter your Lorem Ipsum",
                          border: OutlineInputBorder()),
                    ),
                  ),
                  SizedBox(height: 20,),
                  //cloude
                  CustomInfoContainer(),
                  SizedBox(height: 15,),
                  CustomText( title : "Date",),
                  SizedBox(
                    height: 10,
                  ),
                  DateInputField(),
                  SizedBox(
                    height: 15,
                  ),
                  CustomText( title : "BHP name ,credentials",),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "Enter your Lorem Ipsum",
                          border: OutlineInputBorder()),
                    ),
                  ),
                  SizedBox(height: 20,),
                  //cloude
                  CustomInfoContainer(),
                  SizedBox(height: 15,),
                  CustomText( title : "Date",),
                  SizedBox(
                    height: 10,
                  ),
                  DateInputField(),

                  SizedBox(
                    height: 15,
                  ),
                  CustomText( title : "Other Name",),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "Enter your Lorem Ipsum",
                          border: OutlineInputBorder()),
                    ),
                  ),
                  SizedBox(height: 20,),
                  //cloude
                  CustomInfoContainer(),
                  SizedBox(
                    height: 15,
                  ),
                  CustomText( title : "Relationship to Resident",),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "Enter your Lorem Ipsum",
                          border: OutlineInputBorder()),
                    ),
                  ),
                  SizedBox(height: 15,),
                  CustomText( title : "Date",),

                  SizedBox(
                    height: 10,
                  ),
                  DateInputField(),
                  SizedBox(height: 10,),

                  Text("Section-2", style: GoogleFonts.poppins(fontWeight: FontWeight.bold),),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          'A. Currently prescribed medications are\nattached on a separate page.',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          'B. Current and Past Medical/Psychiatric\nConditions.',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          'Conditions',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  CustomText(title: "Diabetes"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('Yes'),
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('No'),
                    ],
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Comments",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    height: 114,
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
                  SizedBox(height: 10),

                  CustomText(title: "Heart disease/heart attack"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('Yes'),
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('No'),
                    ],
                  ),
                  SizedBox(height: 5),
                  CustomText(title: "Comments"),
                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    height: 114,
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
                  SizedBox(height: 10),

                  CustomText(title: "History of stroke"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('Yes'),
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('No'),
                    ],
                  ),
                  SizedBox(height: 5),
                  CustomText(title: "Comments"),

                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    height: 114,
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
                  SizedBox(height: 10),

                  CustomText(title: "High Blood Pressure"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('Yes'),
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('No'),
                    ],
                  ),
                  SizedBox(height: 5),
                  CustomText(title: "Comments"),

                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    height: 114,
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
                  SizedBox(height: 10),

                  CustomText(title: "Lung disease (i.e. asthma, COPD, emphysema)"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('Yes'),
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('No'),
                    ],
                  ),
                  SizedBox(height: 5),
                  CustomText(title: "Comments"),

                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    height: 114,
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
                  SizedBox(height: 10),

                  CustomText(title: "Seizures"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('Yes'),
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('No'),
                    ],
                  ),
                  SizedBox(height: 5),
                  CustomText(title: "Comments"),

                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    height: 114,
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
                  SizedBox(height: 10),

                  CustomText(title: "Cancer"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('Yes'),
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('No'),
                    ],
                  ),
                  SizedBox(height: 5),
                  CustomText(title: "Comments"),

                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    height: 114,
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
                  SizedBox(height: 10),

                  CustomText(title: "Liver/kidney disease"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('Yes'),
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('No'),
                    ],
                  ),
                  SizedBox(height: 5),
                  CustomText(title: "Comments"),

                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    height: 114,
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
                  SizedBox(height: 10),

                  CustomText(title: "Thyroid disorder"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('Yes'),
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('No'),
                    ],
                  ),
                  SizedBox(height: 5),
                  CustomText(title: "Comments"),

                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    height: 114,
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
                  SizedBox(height: 10),

                  CustomText(title: "History of head trauma/traumatic brain"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('Yes'),
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('No'),
                    ],
                  ),
                  SizedBox(height: 5),
                  CustomText(title: "Comments"),

                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    height: 114,
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
                  SizedBox(height: 10),

                  CustomText(title: "Injury"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('Yes'),
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('No'),
                    ],
                  ),
                  SizedBox(height: 5),
                  CustomText(title: "Comments"),

                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    height: 114,
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
                  SizedBox(height: 10),

                  CustomText(title: "Chronic pain"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('Yes'),
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('No'),
                    ],
                  ),
                  SizedBox(height: 5),
                  CustomText(title: "Comments"),

                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    height: 114,
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
                  SizedBox(height: 10),

                  CustomText(title: "Allergies (food, environment, medications)"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('Yes'),
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('No'),
                    ],
                  ),
                  SizedBox(height: 5),
                  CustomText(title: "Comments"),

                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    height: 114,
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
                  SizedBox(height: 10),

                  CustomText(title: "Surgeries"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('Yes'),
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('No'),
                    ],
                  ),
                  SizedBox(height: 5),
                  CustomText(title: "Comments"),

                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    height: 114,
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
                  SizedBox(height: 10),
                  SizedBox(height: 10),

                  CustomText(title: "Number of pregnancies / births"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('Yes'),
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('No'),
                    ],
                  ),
                  SizedBox(height: 5),
                  CustomText(title: "Comments"),

                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    height: 114,
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
                  SizedBox(height: 10),
                  SizedBox(height: 10),

                  CustomText(title: "Substance use disorder (please specify)"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('Yes'),
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('No'),
                    ],
                  ),
                  SizedBox(height: 5),
                  CustomText(title: "Comments"),

                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    height: 114,
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
                  SizedBox(height: 10),
                  SizedBox(height: 10),

                  CustomText(title: "Depression"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('Yes'),
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('No'),
                    ],
                  ),
                  SizedBox(height: 5),
                  CustomText(title: "Comments"),

                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    height: 114,
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
                  SizedBox(height: 10),
                  SizedBox(height: 10),

                  CustomText(title: "Anxiety/panic attacks"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('Yes'),
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('No'),
                    ],
                  ),
                  SizedBox(height: 5),
                  CustomText(title: "Comments"),

                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    height: 114,
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
                  SizedBox(height: 10),
                  SizedBox(height: 10),

                  CustomText(title: "Insomnia"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('Yes'),
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('No'),
                    ],
                  ),
                  SizedBox(height: 5),
                  CustomText(title: "Comments"),

                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    height: 114,
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
                  SizedBox(height: 10),
                  SizedBox(height: 10),

                  CustomText(title: "Bipolar disorder"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('Yes'),
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('No'),
                    ],
                  ),
                  SizedBox(height: 5),
                  CustomText(title: "Comments"),

                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    height: 114,
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
                  SizedBox(height: 10),
                  SizedBox(height: 10),

                  CustomText(title: "Schizophrenia"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('Yes'),
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('No'),
                    ],
                  ),
                  SizedBox(height: 5),
                  CustomText(title: "Comments"),

                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    height: 114,
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
                  SizedBox(height: 10),
                  SizedBox(height: 10),

                  CustomText(title: "Personality disorder (please specify)"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('Yes'),
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('No'),
                    ],
                  ),
                  SizedBox(height: 5),
                  CustomText(title: "Comments"),

                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    height: 114,
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
                  SizedBox(height: 10),
                  SizedBox(height: 10),

                  CustomText(title: "Phobias"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('Yes'),
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('No'),
                    ],
                  ),
                  SizedBox(height: 5),
                  CustomText(title: "Comments"),

                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    height: 114,
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
                  SizedBox(height: 10),
                  SizedBox(height: 10),

                  CustomText(title: "Any other health conditions"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('Yes'),
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('No'),
                    ],
                  ),
                  SizedBox(height: 5),
                  CustomText(title: "Comments"),

                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    height: 114,
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
                  SizedBox(height: 10),
                  SizedBox(height: 10),

                  CustomText(title: "Infection or Diseases"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('Yes'),
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      Text('No'),
                    ],
                  ),
                  SizedBox(height: 5),
                  CustomText(title: "Comments"),

                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    height: 114,
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
                  SizedBox(height: 10),

                  CustomText(title: "Significant Family Medical/Psychiatric History: "),
                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    child: TextFormField(
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Enter your Lorem Ipsum",
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.arrow_drop_down_sharp,
                            color: Colors.black,
                            size: 45,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),

                  CustomText(title: "Mental Health Treatment History (in Resident\nhospitalization, partial hospitalization, out\nResident, etc): "),
                  SizedBox(height: 10),

                  CustomText(title: "Type of Service"),
                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    child: TextFormField(
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Enter your Lorem Ipsum",
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.arrow_drop_down_sharp,
                            color: Colors.black,
                            size: 45,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  CustomText(title: "Where"),

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
                  SizedBox(height: 5),
                  CustomText(title: "Dates"),

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
                  SizedBox(height: 10),

                  CustomText(title: "Diagnosis/Reason for Treatment"),
                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    child: TextFormField(
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Enter your Lorem Ipsum",
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.arrow_drop_down_sharp,
                            color: Colors.black,
                            size: 45,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      CustomText(title: "Substance Abuse history:"),
                      SizedBox(width: 100 ,),
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 5),

                  Row(
                    children: [
                      CustomText(title: "Denies:"),
                      SizedBox(width: 250 ,),
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10),

                  CustomText(title: "Type"),
                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    child: TextFormField(
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Enter your Lorem Ipsum",
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.arrow_drop_down_sharp,
                            color: Colors.black,
                            size: 45,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  CustomText(title: "Age of First use"),

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
                  SizedBox(height: 10),
                  CustomText(title: "Last Use"),
                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    child: TextFormField(
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Enter your Lorem Ipsum",
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.arrow_drop_down_sharp,
                            color: Colors.black,
                            size: 45,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),

                  CustomText(title: "Frequency"),
                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    child: TextFormField(
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Enter your Lorem Ipsum",
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.arrow_drop_down_sharp,
                            color: Colors.black,
                            size: 45,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),

                  CustomText(title: "Length of Sobriety"),
                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    child: TextFormField(
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Enter your Lorem Ipsum",
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.arrow_drop_down_sharp,
                            color: Colors.black,
                            size: 45,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 10),
                  CustomText(title: "Active Withdrawal Symptoms:"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "None reported or observed", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Agitation", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Nausea", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Vomiting", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Headache", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Tactile Disturbances", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Anxiety", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Tremors", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Visual Disturbances", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),

                  SizedBox(height: 10),
                  CustomText(title: "Auditory Disturbances"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Sweats", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Paranoia", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Goose Bumps", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Running nose", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Bone Pain", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Tearing", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Seizures", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Loss of muscle coordination", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),

                  SizedBox(height: 10),
                  CustomText(title: "Mental Status Exam/Behavioral\nObservations:"),
                  SizedBox(height: 10),

                  CustomText(title: "General Appearance"),

                  SizedBox(height: 10),
                  CustomText(title: "Apparent age"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Consistent", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Younger", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Older", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  SizedBox(height: 10),
                  CustomText(title: "Height"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Average", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Short", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Tall", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  SizedBox(height: 10),
                  CustomText(title: "Weight"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Average", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Obese", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Overweight", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Thin", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Emaciated", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  SizedBox(height: 10),
                  CustomText(title: "Attire"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Casual", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Neat", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Tattered", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Dirty", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  SizedBox(height: 10),
                  CustomText(title: "Grooming"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Well-groomed", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Adequate", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Unkempt", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Disheveled", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),

                  SizedBox(height: 10),

                  CustomText(title: "Demeanor / Interaction"),

                  SizedBox(height: 10),
                  CustomText(title: "Mood"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Euthymic", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Irritable", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Elevated", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Depressed", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Anxious", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  SizedBox(height: 10),
                  CustomText(title: "Affect"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Normal range", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Depressed", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Labile", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Constricted", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Other", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  SizedBox(height: 10),
                  CustomText(title: "Eye Contact"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Appropriate", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Minimal", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Poor", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Adequate", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),

                  SizedBox(height: 10),
                  CustomText(title: "Cooperation"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Appropriate", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Hostile", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Evasive", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Defensive", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Indifferent", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  SizedBox(height: 10),

                  CustomText(title: "Speech"),

                  SizedBox(height: 10),
                  CustomText(title: "Articulation"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Normal", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Unintelligible", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Mumbled", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Slurred", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Stuttered", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),

                  SizedBox(height: 10),
                  CustomText(title: "Tone"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Normal", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Soft", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Loud", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Pressured", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),

                  SizedBox(height: 10),
                  CustomText(title: "Rate"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Normal", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Slow", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Fast", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),

                  SizedBox(height: 10),
                  CustomText(title: "Quantity"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Normal", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Verbose", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Mutism", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),

                  SizedBox(height: 10),
                  CustomText(title: "Response latency"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Normal", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Delayed", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Shortened", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),

                  SizedBox(height: 10),

                  CustomText(title: "Cognition"),

                  SizedBox(height: 10),
                  CustomText(title: "Thought content"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Unremarkable", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Suspicious", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Negative", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Concrete", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  SizedBox(height: 10),
                  CustomText(title: "Thought processes"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Logical/Coherent", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Tangential", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Circumstantial", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Vague", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),

                  SizedBox(height: 10),
                  CustomText(title: "Delusions"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "No", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Yes, persecutory", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Yes, somatic", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Yes, grandiose", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Yes, other", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),

                  SizedBox(height: 10),

                  CustomText(title: "Hallucinations"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Unremarkable", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Visual hallucinations", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Auditory hallucinations", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Yes, Tactile hallucinations", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Yes, other", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),

                  SizedBox(height: 10),

                  CustomText(title: "Motor activity"),

                  SizedBox(height: 10),
                  CustomText(title: "Gait"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Normal", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Staggering", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Shuffling", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Slow", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Awkward", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),

                  SizedBox(height: 10),
                  CustomText(title: "Posture"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Normal", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Relaxed", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Rigid", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Tense", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Slouched", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),

                  SizedBox(height: 10),
                  CustomText(title: "Psychomotor Activity"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Within normal limits", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Calm", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Hyperactive", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Agitated", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Hypoactive", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),

                  SizedBox(height: 10),
                  CustomText(title: "Mannerisms"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "None", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Tics", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Tremors", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Rocking", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Picking", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),

                  SizedBox(height: 10),
                  CustomText(title: "Orientation to Person:"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Yes", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "No", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),

                  SizedBox(height: 10),
                  CustomText(title: "Place:"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Yes", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "No", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  SizedBox(height: 10),
                  CustomText(title: "Time:"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Yes", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "No", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  SizedBox(height: 10),
                  CustomText(title: "Circumstances:"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Yes", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "No", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  SizedBox(height: 10),
                  CustomText(title: "Judgment:"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Good", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Fair", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Poor", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  SizedBox(height: 10),
                  CustomText(title: "Insight:"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Good", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Fair", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Poor", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  SizedBox(height: 10),
                  CustomText(title: "Memory:"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Good", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Fair", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Poor", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  SizedBox(height: 10),
                  CustomText(title: "Ability to concentration:"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Intact", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  SizedBox(height: 5),
                  CustomText(title: "Other (please specify):"),

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
                  SizedBox(height: 5),
                  CustomText(title: "Significant Social/Developmental History:"),

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
                  SizedBox(height: 10),

                  CustomText(title: "Educational history:"),
                  SizedBox(height: 5),

                  CustomText(title: "Highest level of education:"),

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
                  SizedBox(height: 10),

                  CustomText(title: "Special education:"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Yes", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "No", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  SizedBox(height: 10),

                  CustomText(title: "Currently a student?"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Yes", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "No", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  SizedBox(height: 5),

                  CustomText(title: "If yes, where?"),
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
                  SizedBox(height: 10),
                  CustomText(title: "Employment history:"),
                  SizedBox(height: 10),
                  CustomText(title: "Currently employed:"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Yes", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "No", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  SizedBox(height: 5),

                  CustomText(title: "If employed, where? FT or PT?"),
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
                  SizedBox(height: 10),

                  CustomText(title: "Work History (and barriers to employment)"),
                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    height: 120,
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
                  SizedBox(height: 10),
                  CustomText(title: "Military History:"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Yes", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "No", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  SizedBox(height: 5),
                  CustomText(title: "Currently on active duty?"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Yes", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "No", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  SizedBox(height: 10),

                  CustomText(title: "Criminal Justice Legal History"),
                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    child: TextFormField(
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Enter your Lorem Ipsum",
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.arrow_drop_down_sharp,
                            color: Colors.black,
                            size: 45,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),

                  CustomText(title: "Current Independent Living Skills:"),
                  SizedBox(height: 10),

                  CustomText(title: "Type of Activity"),
                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    child: TextFormField(
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Enter your Lorem Ipsum",
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.arrow_drop_down_sharp,
                            color: Colors.black,
                            size: 45,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Good", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Fair", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Poor", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  SizedBox(height: 5),
                  CustomText(title: "Need assist?"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Yes", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "No", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  SizedBox(height: 10),
                  CustomText(title: "Comments"),

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
                  SizedBox(height: 10),
                  CustomText(title: "Triggers:"),
                  SizedBox(height: 5),
                  CustomText(title: "Fall risk:"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Yes", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "No", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  SizedBox(height: 10),
                  CustomText(title: "If yes please explain:"),

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
                  SizedBox(height: 10),
                  CustomText(title: "Hobbies/Leisure Activities:"),

                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    height: 110,
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
                  SizedBox(height: 10),
                  CustomText(title: "Medical Equipment:"),
                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    child: TextFormField(
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Enter your Lorem Ipsum",
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.arrow_drop_down_sharp,
                            color: Colors.black,
                            size: 45,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  CustomText(title: "Special Precautions:"),
                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    child: TextFormField(
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Enter your Lorem Ipsum",
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.arrow_drop_down_sharp,
                            color: Colors.black,
                            size: 45,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  CustomText(title: "Safety and Risk Assessment"),
                  SizedBox(height: 5),
                  CustomText(title: "Are you currently thinking about harming\nyourself or committing suicide?"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Yes", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "No", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  SizedBox(height: 10),
                  CustomText(title: "Ideation:"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Fleeting", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Periodic", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Constant", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "N/A", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  SizedBox(height: 10),
                  CustomText(title: "Increasing in:"),
                  SizedBox(height: 10),

                  CustomText(title:"Urgency:"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Yes", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "No", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  SizedBox(height: 10),
                  SizedBox(height: 10),

                  CustomText(title:"Severity:"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Yes", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "No", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  SizedBox(height: 10),

                  CustomText(title:"Are you currently thinking about harming others\nor have homicidal thoughts?"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Yes", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "No", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  SizedBox(height: 10),
                  CustomText(title:"Risk Factors:"),
                  SizedBox(height: 10),
                  CustomText(title: "Select risk factors that apply"),
                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    child: TextFormField(
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Enter your Lorem Ipsum",
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.arrow_drop_down_sharp,
                            color: Colors.black,
                            size: 45,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Yes", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "No", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  SizedBox(height: 10),
                  CustomText(title: "Comments"),

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
                  SizedBox(height: 10),
                  CustomText(title: "Protective factors that apply:"),
                  SizedBox(height: 10),
                  CustomText(title: "Protective factors that apply:"),
                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    child: TextFormField(
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Enter your Lorem Ipsum",
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.arrow_drop_down_sharp,
                            color: Colors.black,
                            size: 45,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Yes", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "No", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  SizedBox(height: 10),
                  CustomText(title: "Comments"),

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
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        Text(
                            "Considering the responses to the above risk\nfactors in combination with all the other\ninformation you know about the person (gender,\nage, diagnosis, balancing factors-resiliency and\nsupports, would you rate the level of risk for this\nperson for danger to self (DTS) as:"),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "No Risk", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Low Risk", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Moderate Risk", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "High Risk", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  SizedBox(height: 10),
                  CustomText(title: "Diagnoses:"),
                  SizedBox(height: 10),
                  CustomText(title: "Psychiatric Diagnoses:"),
                  SizedBox(height: 5),

                  CustomText(title: "Primary*:"),
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
                  SizedBox(height: 5),
                  CustomText(title: "ICD Code"),
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
                  SizedBox(height: 5),
                  CustomText(title: "Description"),
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
                  SizedBox(height: 5),
                  CustomText(title: "Secondary"),
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
                  SizedBox(height: 5),
                  CustomText(title: "ICD Code"),
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
                  SizedBox(height: 5),
                  CustomText(title: "Description"),
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
                  SizedBox(height: 5),
                  CustomText(title: "Tertiary"),
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
                  SizedBox(height: 5),
                  CustomText(title: "ICD Code"),
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
                  SizedBox(height: 5),
                  CustomText(title: "Description"),
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
                  SizedBox(height: 5),
                  CustomText(title: "Additional"),
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
                  SizedBox(height: 5),
                  CustomText(title: "ICD Code"),
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
                  SizedBox(height: 5),
                  CustomText(title: "Description"),
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
                  SizedBox(height: 10),

                  CustomText(title: "Medical Diagnoses"),
                  SizedBox(height: 10),
                  CustomText(title: "Primary*:"),
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
                  SizedBox(height: 5),
                  CustomText(title: "ICD Code"),
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
                  SizedBox(height: 5),
                  CustomText(title: "Description"),
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
                  SizedBox(height: 5),
                  CustomText(title: "Secondary"),
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
                  SizedBox(height: 5),
                  CustomText(title: "ICD Code"),
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
                  SizedBox(height: 5),
                  CustomText(title: "Description"),
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
                  SizedBox(height: 5),
                  CustomText(title: "Tertiary"),
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
                  SizedBox(height: 5),
                  CustomText(title: "ICD Code"),
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
                  SizedBox(height: 5),
                  CustomText(title: "Description"),
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
                  SizedBox(height: 5),
                  CustomText(title: "Additional"),
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
                  SizedBox(height: 5),
                  CustomText(title: "ICD Code"),
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
                  SizedBox(height: 5),
                  CustomText(title: "Description"),
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
                  SizedBox(height: 10),
                  CustomText(title: "Psychosocial or Environmental Stressors"),
                  CustomText(title: "Problems with / related to:"),
                  SizedBox(height: 10),

                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Primary support group", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Marital problems", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Access to health care services", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Educational problems", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Housing problems", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Family problems", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Occupational problems", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Interaction with legal system", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Substance use in home", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Sexual problems", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "other (please specify)", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    height: 110,
                    child: TextFormField(
                      decoration: InputDecoration(
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
                  SizedBox(height: 10),

                  CustomText(title:"Significant recent losses:"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Yes", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "No", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  SizedBox(height: 10),
                  CustomText(title:"If yes, please check applicable loss(es):"),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Death", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Job", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Child removed from house", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Injury", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Divorce / separation ", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Violent acts against person/family ", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Medical/ surgical ", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "Accident /injury ", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isCheckboxChecked,
                        onChanged: (value) {
                          setState(() {
                            isCheckboxChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10 ,),
                      Text( "other (please specify)", style: GoogleFonts.poppins(fontSize: 18),),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    height: 110,
                    child: TextFormField(
                      decoration: InputDecoration(
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
                  SizedBox(height: 10),
                  CustomText(title:"Aditional Notes"),
                  SizedBox(height: 5),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    height: 110,
                    child: TextFormField(
                      decoration: InputDecoration(
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
                  SizedBox(height: 10),
                  CustomText(title:"Staff Name"),
                  SizedBox(height: 5),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    height: 60,
                    child: TextFormField(
                      decoration: InputDecoration(
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
                  SizedBox(height: 10),
                  CustomInfoContainer(),
                  SizedBox(height: 10),
                  CustomText(title:"Date"),
                  DateInputField(),
                  SizedBox(height: 10),
                  CustomText(title:"BHT name, credentials:"),
                  SizedBox(height: 5),
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    height: 60,
                    child: TextFormField(
                      decoration: InputDecoration(
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
                  SizedBox(height: 10),
                  CustomInfoContainer(),
                  SizedBox(height: 10),
                  CustomText(title:"Date"),
                  DateInputField(),
                  SizedBox(height: 10),
                ]
            )
        )
    );
  }
}