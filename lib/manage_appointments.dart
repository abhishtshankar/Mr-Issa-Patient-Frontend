import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'cancel_appointment.dart';

class ManageAppointments extends StatefulWidget {
  const ManageAppointments({super.key});

  @override
  State<ManageAppointments> createState() => _InitialState();
}

class _InitialState extends State<ManageAppointments> {

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
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked = false;
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Stack(
        children: [
          Container(
            height: 90,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFFD9D9D9),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16,bottom: 20,left: 30),
            child:   Container(
              height: 50,
              width: 350,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CancelAppointment()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffED4040),
                ),
                child: Text(
                  'CONTINUE',
                  style: GoogleFonts.poppins(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
            children: [
              Container(
                width: 450,
                height: 110,
                decoration: ShapeDecoration(
                  color: Color(0x331A9FB2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 25, top: 30),
                  child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "MANAGE APPOINTMENTS ",
                            style: GoogleFonts.poppins(
                                color: Color(0xFF07323F),
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 20),
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
                      ]
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: 5),
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: IconButton(
                        icon: Image.asset("assets/images/dustbin.png"),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 10),
                    child: Text("Cancel Appointment",
                        style: GoogleFonts.poppins(
                            fontSize: 22,
                            )),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Padding(
                padding:  EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text("Select & Mark ",
                   style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                    ),
                    Text("all your Upcoming Appointments",
                      style: GoogleFonts.poppins(),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("you want to cancel",
                    style: GoogleFonts.poppins(),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top:15.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        offset: Offset(5.0, 5.0),
                        blurRadius: 12,
                        spreadRadius: 2.0,
                      ),
                    ],
                    color: Colors.white70,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 2),
                    child: Row(
                      children: [
                        Stack(
                          alignment: Alignment.topLeft, // Position the Checkbox at the top-left corner
                          children: [
                            Checkbox(
                              value: false, // You can set the initial value of the checkbox.
                              onChanged: (newBool) {
                                setState(() {
                                  if (isChecked1) {
                                    isChecked2 = true;
                                  }
                                });
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:40.0),
                              child: Container(
                                height: 120,
                                width: 120,
                                color: Colors.black,
                                child: Image.asset(
                                  "assets/images/bed.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10, top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CENTRE 1",
                                style: GoogleFonts.poppins(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xfff0C5C75),
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(Icons.calendar_today_outlined),
                                  SizedBox(width: 20),
                                  Text(
                                    "FROM:6 JUNE - 12 JUNE",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(Icons.location_on_outlined),
                                  SizedBox(width: 20),
                                  Text(
                                    "LOCATION: CENTER 1",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(Icons.perm_identity_outlined),
                                  SizedBox(width: 20),
                                  Text(
                                    "SLOT: HH:MM AM",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(top:15.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        offset: Offset(5.0, 5.0),
                        blurRadius: 12,
                        spreadRadius: 2.0,
                      ),
                    ],
                    color: Colors.white70,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 2),
                    child: Row(
                      children: [
                        Stack(
                          alignment: Alignment.topLeft, // Position the Checkbox at the top-left corner
                          children: [
                            Checkbox(
                              value: false, // You can set the initial value of the checkbox.
                              onChanged: (newBool) {
                                setState(() {
                                  if (isChecked1) {
                                    isChecked2 = true;
                                  }
                                });
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:40.0),
                              child: Container(
                                height: 120,
                                width: 120,
                                color: Colors.black,
                                child: Image.asset(
                                  "assets/images/bed.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10, top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CENTRE 1",
                                style: GoogleFonts.poppins(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xfff0C5C75),
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(Icons.calendar_today_outlined),
                                  SizedBox(width: 20),
                                  Text(
                                    "FROM:6 JUNE - 12 JUNE",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(Icons.location_on_outlined),
                                  SizedBox(width: 20),
                                  Text(
                                    "LOCATION: CENTER 1",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(Icons.perm_identity_outlined),
                                  SizedBox(width: 20),
                                  Text(
                                    "SLOT: HH:MM AM",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(top:15.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        offset: Offset(5.0, 5.0),
                        blurRadius: 12,
                        spreadRadius: 2.0,
                      ),
                    ],
                    color: Colors.white70,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 2),
                    child: Row(
                      children: [
                        Stack(
                          alignment: Alignment.topLeft, // Position the Checkbox at the top-left corner
                          children: [
                            Checkbox(
                              value: false, // You can set the initial value of the checkbox.
                              onChanged: (newBool) {
                                setState(() {
                                  if (isChecked1) {
                                    isChecked2 = true;
                                  }
                                });
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:40.0),
                              child: Container(
                                height: 120,
                                width: 120,
                                color: Colors.black,
                                child: Image.asset(
                                  "assets/images/bed.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10, top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CENTRE 1",
                                style: GoogleFonts.poppins(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xfff0C5C75),
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(Icons.calendar_today_outlined),
                                  SizedBox(width: 20),
                                  Text(
                                    "FROM:6 JUNE - 12 JUNE",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(Icons.location_on_outlined),
                                  SizedBox(width: 20),
                                  Text(
                                    "LOCATION: CENTER 1",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(Icons.perm_identity_outlined),
                                  SizedBox(width: 20),
                                  Text(
                                    "SLOT: HH:MM AM",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(top:15.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        offset: Offset(5.0, 5.0),
                        blurRadius: 12,
                        spreadRadius: 2.0,
                      ),
                    ],
                    color: Colors.white70,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left:2),
                    child: Row(
                      children: [
                        Stack(
                          alignment: Alignment.topLeft, // Position the Checkbox at the top-left corner
                          children: [
                            Checkbox(
                              value: false, // You can set the initial value of the checkbox.
                              onChanged: (newBool) {
                                setState(() {
                                  if (isChecked1) {
                                    isChecked2 = true;
                                  }
                                });
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:40.0),
                              child: Container(
                                height: 120,
                                width: 120,
                                color: Colors.black,
                                child: Image.asset(
                                  "assets/images/bed.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10, top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CENTRE 1",
                                style: GoogleFonts.poppins(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xfff0C5C75),
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(Icons.calendar_today_outlined),
                                  SizedBox(width: 20),
                                  Text(
                                    "FROM:6 JUNE - 12 JUNE",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(Icons.location_on_outlined),
                                  SizedBox(width: 20),
                                  Text(
                                    "LOCATION: CENTER 1",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(Icons.perm_identity_outlined),
                                  SizedBox(width: 20),
                                  Text(
                                    "SLOT: HH:MM AM",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                  ),
                ),
              ),
            ]  ),
      ),
    );
  }
}