import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:patient/widget/app_buttons.dart';
import 'package:patient/widget/app_widgets.dart';
import 'package:patient/widget/custom_documentUpload.dart';
import 'package:patient/widget/custom_text.dart';
import 'package:patient/widget/dateInput_widget.dart';

class SafetyScreen extends StatefulWidget {
  const SafetyScreen({super.key});

  @override
  State<SafetyScreen> createState() => _InitialState();
}

class _InitialState extends State<SafetyScreen> {
  Future<void> _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != DateTime.now()) {
      print("Selected date: ${picked.toString()}");
    }
  }

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
            'SAFETY PLAN',
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
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
              children: [

                Padding(
                  padding:  EdgeInsets.only(left:5 ),
                  child: Row(
                    children: [
                      Text("Resident Safety Plan",
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                ),
                buildVSpacer(10),

                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Row(
                    children: [
                      Text(
                        "Resident Full Name",
                        style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
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
                    },
                  ),
                ),
                buildVSpacer(20),


                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Row(
                    children: [
                      Text(
                        "Resident's Date of Birth",
                        style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                buildVSpacer(10),
                DateInputField(),
                buildVSpacer(10),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "STEP 1 : ",
                          style: GoogleFonts.poppins(
                            color: Color(0xff0C5C75),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: "Warning Signs",
                          // Remove "STEP 1 : " from the title
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            // Use the default text color
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        //
                        TextSpan(
                          text:
                              "( thoughts, images,\nmood, situation, behavior )",
                          // Remove "STEP 1 : " from the title
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            // Use the default text color
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: "that a crisis may\nbe developing",
                          // Remove "STEP 1 : " from the title
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            // Use the default text color
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
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
                    },
                  ),
                ),

                buildVSpacer(10),



                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "STEP 2 : ",
                              style: GoogleFonts.poppins(
                                color: Color(0xff0C5C75),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: "Internal Coping Strategies\n",
                              style: GoogleFonts.poppins(
                                color: Colors.black, // Use the default text color
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: "Things I can do to take my mind off problems\nwithout contacting others",
                              style: GoogleFonts.poppins(
                                color: Colors.black, // Use the default text color
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

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
                    },
                  ),
                ),



                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "STEP 3 : ",
                              style: GoogleFonts.poppins(
                                color: Color(0xff0C5C75),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: "People & Scocial settings that provide\nDistraction",
                              style: GoogleFonts.poppins(
                                color: Colors.black, // Use the default text color
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  height: 550,
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  margin: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.cyan.shade50,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      ReusableContainer(label: 'Name', hintText: 'Enter your Lorem Ipsum'),
                      ReusableContainer(label: 'Phone Number', hintText: 'Enter your Lorem Ipsum'),
                      ReusableContainer(label: 'Relationship', hintText: 'Enter your Lorem Ipsum'),
                      ReusableContainer(label: 'Place', hintText: 'Enter your Lorem Ipsum'),
                      ReusableContainer(label: 'Plane', hintText: 'Enter your Lorem Ipsum'),
                      SizedBox(height: 20,),
                      ElevatedButton(
                        onPressed: () {
                          // Add your save functionality here
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.cyan.shade700, // Change the background color to blue
                          minimumSize: Size(170, 50), // Set the minimum size of the button
                        ),
                        child: Text(
                          'SAVE',
                          style: GoogleFonts.poppins(fontSize: 18,color: Colors.white), // Change the text size
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  height: 65,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color:  Color(0xFF0C5C75), // Border color for the outer container
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
                            color:  Color(0xFF0C5C75), // Border color for the outer container
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
                SizedBox(height: 15,),

                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "STEP 3 : ",
                              style: GoogleFonts.poppins(
                                color: Color(0xff0C5C75),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: "People whom i can ask for Help",
                              style: GoogleFonts.poppins(
                                color: Colors.black, // Use the default text color
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 15,),
                Container(
                  height: 380,
                  width: 380,
                  margin: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.cyan.shade50,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      ReusableContainer(label: 'Name', hintText: 'Enter your Lorem Ipsum'),
                      ReusableContainer(label: 'Phone Number', hintText: 'Enter your Lorem Ipsum'),
                      ReusableContainer(label: 'Relationship', hintText: 'Enter your Lorem Ipsum'),
                      SizedBox(height: 20,),
                      ElevatedButton(
                        onPressed: () {
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.cyan.shade700,
                          minimumSize: Size(170, 50),
                        ),
                        child: Text(
                          'SAVE',
                          style: GoogleFonts.poppins(fontSize: 18,color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350,
                  height: 65,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color:  Color(0xFF0C5C75), // Border color for the outer container
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
                            color:  Color(0xFF0C5C75), // Border color for the outer container
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
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Row(
                    children: [
                      Text(
                        "Professionals or agencies I can contact during\nCrisis",
                        style: GoogleFonts.poppins(fontSize: 14, color: Colors.black,fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 400,
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  margin: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.cyan.shade50,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      ReusableContainer(label: 'Clinic/Facality name', hintText: 'Enter your Lorem Ipsum'),
                      ReusableContainer(label: 'Phone Number', hintText: 'Enter your Lorem Ipsum'),
                      ReusableContainer(label: 'Relationship', hintText: 'Enter your Lorem Ipsum'),
                      SizedBox(height: 20,),
                      ElevatedButton(
                        onPressed: () {
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.cyan.shade700,
                          minimumSize: Size(170, 50),
                        ),
                        child: Text(
                          'SAVE',
                          style: GoogleFonts.poppins(fontSize: 18, color: Colors.white), // Change the text size
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                  height: 65,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color:  Color(0xFF0C5C75), // Border color for the outer container
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
                            color:  Color(0xFF0C5C75), // Border color for the outer container
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
                SizedBox(
                  height: 20,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Row(
                    children: [
                      Text(
                        "Making the Environment Safe:",
                        style: GoogleFonts.poppins(fontSize: 14, color: Colors.black,fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
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
                    },
                  ),
                ),
CustomInfoContainer(),
                SizedBox(
                  height: 20,
                ),
              ]
          ),
        ),
      ),
    );
  }
}

class ReusableContainer extends StatelessWidget {
  final String label;
  final String hintText;

  ReusableContainer({required this.label, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$label',
            style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 5),
          Container(
            height: 38,
            width: 340,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top:10,left: 14), // Add padding to the text field
              child: TextField(
                decoration: InputDecoration(
                  hintText: hintText,
                  border: InputBorder.none, // Remove the input border
                ),
                style: GoogleFonts.poppins(fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}