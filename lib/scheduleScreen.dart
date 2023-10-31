import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:patient/bookNewAppointment_screen.dart';
import 'package:patient/manage_appointments.dart';
import 'package:patient/my_appointments.dart';
import 'package:patient/widget/app_colors.dart';
import 'package:patient/widget/app_widgets.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery
        .of(context)
        .size
        .width;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 10,
                right: screenWidth < 600 ? 20.0 : 150,
                top: 70,
              ),
              child: Row(
                children: [
                  Text(
                    'Appointment Scheduling',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [

                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => BookNewAppointment(),
                      ));
                    },
                    child: _buildAppointmentCard(
                      image:"assets/images/calendar1.png",
                      title: 'Booking New\nAppointments',
                    ),
                  ),
                  buildHSpacer(10),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MyAppointments(),
                      ));
                    },
                    child: _buildAppointmentCard(
                      image:"assets/images/timer.png",
                      title: 'Appoitnment\nHistory',
                    ),
                  ),
                  buildHSpacer(10),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ManageAppointments(),
                      ));
                    },
                    child: _buildAppointmentCard(
                      image:"assets/images/settings2.png",
                      title: 'Manage\nAppointments',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth < 600 ? 20.0 : 8.0,
                top: 40,
              ),
              child: Row(
                children: [
                  Text(
                    'Upcoming Appointments',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10,
                right: screenWidth < 600 ? 70.0 : 328,
                top: 30,
              ),
              child: Row(
                children: [
                  Text(
                    'Today',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal[800],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.white70,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 17),
                  child: Row(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        color: Colors.black,
                        child: Image.asset(
                          "assets/images/Rectangle 19.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "MEDICAL APPOINTMENT",
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
                                  "DATE: DD/MM/YYYY",
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
                                Icon(Icons.access_time_rounded),
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 10,
                  right: screenWidth < 600 ? 70.0 : 328,
                  top: 20),
              child:
              Row(
                children: [
                  Text('Tomorrow', style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal[800],
                  )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white70,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 17),
                  child: Row(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        color: Colors.black,
                        child: Image.asset(
                          "assets/images/Rectangle 19.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "MEDICAL APPOINTMENT",
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
                                  "DATE: DD/MM/YYYY",
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
                                Icon(Icons.access_time_rounded),
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
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
                  padding: const EdgeInsets.only(left: 17),
                  child: Row(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        color: Colors.black,
                        child: Image.asset(
                          "assets/images/Rectangle 19.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "MEDICAL APPOINTMENT",
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
                                  "DATE: DD/MM/YYYY",
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
                                Icon(Icons.access_time_rounded),
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildAppointmentCard({
    required String image,
    required String title,
  }) {
    return Container(
      height: 150,
      width: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color.fromARGB(255, 234, 255, 255),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            offset: const Offset(0, 4),
            color: Colors.black.withOpacity(0.1),
          ),
        ],
      ),
      child: Container(
        height: 150,
        width: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            // stops: const [0, 0.2],
            colors: [
              AppColors.kOptionCardBackground.withOpacity(0.16),
              AppColors.kOptionCardBackground.withOpacity(0.4),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // const Spacer(),
              Expanded(
                flex: 4,
                child: Image.asset(image),
              ),
              // const Spacer(),
              Expanded(
                flex: 2,
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Colors.black,
                      decoration: TextDecoration.none
                  ),
                ),
              ),
              // const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

