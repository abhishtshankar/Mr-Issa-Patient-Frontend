import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:patient/chat_screen.dart';
import 'package:patient/intake_screen.dart';
import 'package:patient/scheduleScreen.dart';
import 'package:patient/settings_screen.dart';
import 'package:patient/staffing_note.dart';

import 'bottom_navigations/bottom_nav_bar.dart';
import 'medical_appointment.dart';
import 'medication_script.dart';
import 'medications.dart';


class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 600;

    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          children: <Widget>[
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 80.0, top: 50),
                      child: CircleAvatar(
                        radius: 65,
                        backgroundImage: AssetImage("assets/images/profile.png"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffEEEEEE),
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
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'John Smith',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'STATUS : ',
                      style: GoogleFonts.poppins(fontSize: 12),
                    ),
                    Text(
                      'ADMITTED AT CENTER 1',
                      style: GoogleFonts.poppins(
                        color: Color(0xff4DAF4E),
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  width: 250,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      side: BorderSide(
                        color: Color(0xFF0C5C75),
                        width: 2,
                      ),
                    ),
                    child: Text(
                      'SIGN OUT',
                      style: GoogleFonts.poppins(
                        color: Color(0xFF0C5C75),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ListTile(
              leading: Image.asset("assets/images/intake.png"),
              title: Text('Intake Documents'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => AppBottomNavBar(index: 1), // Set index to 1
                  ),
                );
              },
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image.asset("assets/images/group.png"),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
            ListTile(
              leading: Image.asset("assets/images/medical.png"),
              title: Text('Medical Appointments'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => MedicalAppointmentScreen()),
                );
              },
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Image.asset("assets/images/note.png"),
              title: Text('Staffing Note/\nConcurrent Review'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => StaffingNoteScreen()),
                );
              },
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Image.asset("assets/images/medical.png"),
              title: Text('Medication Script\nUpload'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => MedicationScriptScreen()),
                );
              },
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Image.asset("assets/images/settings.png"),
              title: Text('Settings'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => SettingScreen()),
                );
              },
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          IconButton(
            icon: Image.asset(
              "assets/images/bell.png",
              fit: BoxFit.fill,
            ),
            onPressed: () {
              _showNotificationsDialog(context);
            },
            color: Color(0xfff0C5C75),
            iconSize: 35,
          ),
          IconButton(
            icon: Image.asset(
              "assets/images/message.png",
              fit: BoxFit.fill,
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ChatScreen()),
              );
            },
            color: Color(0xfff0C5C75),
            iconSize: 35,
          ),
        ],
        leading: IconButton(
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
          icon: Icon(Icons.menu),
          color: Colors.black,
          iconSize: 35,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: isSmallScreen ? 5 : 17),
          child: Column(
            children: [
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.only(left: isSmallScreen ? 5 : 17),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Welcome, ",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color : Color(0xff1E1E1E)
                          ),
                        ),
                        Text(
                          "Jacob",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color(0xfff0C5C75),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 30,
                      width: 30,
                      child: Image.asset(
                        "assets/images/image 55.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Text(
                      "Upcoming Appointments",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 10),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => AppBottomNavBar(index: 2), // Set index to 1
                          ),
                        );
                      },
                      child: Text(
                        "VIEW ALL",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xfff0C5C75),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        width: isSmallScreen ? 350 : 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 17),
                          child: Row(
                            children: [
                              Container(
                                height: 120,
                                width: 90,
                                color: Colors.black,
                                child: Image.asset(
                                  "assets/images/bed.png",
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
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xfff0C5C75),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Icon(Icons.calendar_today_outlined, size: 20,),
                                        SizedBox(width: 20),
                                        Text(
                                          "DATE: DD/MM/YYYY",
                                          style: GoogleFonts.poppins(
                                            fontSize: 10,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Icon(Icons.access_time_rounded,size: 20),
                                        SizedBox(width: 20),
                                        Text(
                                          "SLOT: HH:MM AM",
                                          style: GoogleFonts.poppins(
                                            fontSize: 10,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Icon(Icons.location_on_outlined,size: 20),
                                        SizedBox(width: 20),
                                        Text(
                                          "LOCATION: CENTER 1",
                                          style: GoogleFonts.poppins(
                                            fontSize: 10,
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
                    );
                  },
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 17),
                child: Row(
                  children: [
                    Text(
                      "Ongoing Medications",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 50),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Medications()),
                        );
                      },
                      child: Text(
                        "VIEW ALL",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xfff0C5C75),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Container(
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        width: isSmallScreen ? 350 : 350,
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 13),
                          child: Row(
                            children: [
                              Container(
                                height: 120,
                                width: 90,
                                color: Colors.black,
                                child: Image.asset(
                                  "assets/images/tab1.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15, top: 30),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "DISPIRIN REGULAR",
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xfff0C5C75),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Icon(Icons.medical_services_outlined,size: 20,),
                                        SizedBox(width: 10),
                                        Text(
                                          "DOSE: 500mg",
                                          style: GoogleFonts.poppins(
                                            fontSize: 10,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Icon(Icons.calendar_today_outlined, size: 20,),
                                        SizedBox(width: 10),
                                        Text(
                                          "STARTED FROM: DD/MM/YYYY",
                                          style: GoogleFonts.poppins(
                                            fontSize: 10,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Icon(Icons.access_time_outlined, size: 20,),
                                        SizedBox(width: 15),
                                        Text(
                                          "DURATION: 6 MONTHS",
                                          style: GoogleFonts.poppins(
                                            fontSize: 10,
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
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 17),
                child: Row(
                  children: [
                    Text(
                      "Upload Medication Script",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 0.25 * MediaQuery.of(context).size.height, // Set height as a fraction of the screen height
                child: Container(
                  width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(left: 0.05 * MediaQuery.of(context).size.width), // Set padding as a fraction of the screen width
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 0.020 * MediaQuery.of(context).size.height), // Set spacing as a fraction of the screen height
                        Container(
                          height: 0.13 * MediaQuery.of(context).size.height, // Set height as a fraction of the screen height
                          width: 0.22 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                          color: Colors.white,
                          child: Image.asset(
                            "assets/images/file.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(height: 0.05 * MediaQuery.of(context).size.height), // Set spacing as a fraction of the screen height
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: Text(
                                "Upload Your Medication Script",
                                style: GoogleFonts.poppins(
                                  fontSize: 0.04 * MediaQuery.of(context).textScaleFactor * MediaQuery.of(context).size.width, // Set font size based on screen width and text scaling factor
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xfff1A9FB2),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

void _showNotificationsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
          child: Container(
            color: Colors.white, // Add a white background
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "NOTIFICATIONS",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color(0xfff0C5C75),
                        ),
                      ),
                    ),
                    SizedBox(width: 110,),
                    Container(
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[300],
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
                Divider(
                  color: Colors.black, // Add a divider line
                  thickness: 1.0, // Adjust thickness as needed
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "TODAY",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color(0xfff0C5C75),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/images/tick.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "Your Intake Documents have\nbeen Uploaded Succesfully!",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "TOMORROW",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color(0xfff0C5C75),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/images/color_calendar.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "You Have 2 APPOINTMENTS\nScheduled for today!",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}