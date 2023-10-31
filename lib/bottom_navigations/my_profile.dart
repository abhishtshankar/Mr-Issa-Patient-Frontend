
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/custom_text.dart';

class MyProfileScreen extends StatefulWidget {
  @override
  _MyProfileScreenState createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 600;

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "My Profile",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: isSmallScreen ? 18 : 22,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: CircleAvatar(
                    radius: isSmallScreen ? 45 : 65,
                    backgroundImage: AssetImage("assets/images/profile.png"),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'John Smith',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: isSmallScreen ? 18 : 22,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'STATUS : ',
                      style: GoogleFonts.poppins(fontSize: isSmallScreen ? 10 : 12),
                    ),
                    Text(
                      'ADMITTED AT CENTER 1',
                      style: GoogleFonts.poppins(
                        color: Color(0xff4DAF4E),
                        fontWeight: FontWeight.bold,
                        fontSize: isSmallScreen ? 10 : 12,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                CustomText(title: "Personal Information"),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    width: isSmallScreen ? 350 : 360,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 17),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.calendar_today_outlined),
                                    SizedBox(width: 20),
                                    Text(
                                      "DATE: DD/MM/YYYY",
                                      style: GoogleFonts.poppins(
                                        fontSize: isSmallScreen ? 12 : 14,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Icon(Icons.calendar_today_outlined),
                                    SizedBox(width: 20),
                                    Text(
                                      "AGE: 32 YEARS",
                                      style: GoogleFonts.poppins(
                                        fontSize: isSmallScreen ? 12 : 14,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Icon(Icons.calendar_today_outlined),
                                    SizedBox(width: 20),
                                    Text(
                                      "GENDER: MALE",
                                      style: GoogleFonts.poppins(
                                        fontSize: isSmallScreen ? 12 : 14,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Icon(Icons.calendar_today_outlined),
                                    SizedBox(width: 20),
                                    Text(
                                      "EMAIL: loremipsum@gmail.com",
                                      style: GoogleFonts.poppins(
                                        fontSize: isSmallScreen ? 12 : 14,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Icon(Icons.calendar_today_outlined),
                                    SizedBox(width: 20),
                                    Text(
                                      "CONTACT NO. : (+91) 1234567890",
                                      style: GoogleFonts.poppins(
                                        fontSize: isSmallScreen ? 12 : 14,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Icon(Icons.calendar_today_outlined),
                                    SizedBox(width: 20),
                                    Text(
                                      "ADDRESS:",
                                      style: GoogleFonts.poppins(
                                        fontSize: isSmallScreen ? 10 : 12,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Padding(
                                  padding: const EdgeInsets.only(left: 45.0),
                                  child: Text(
                                    "A-190, 7TH BLOCK, XYZ STREET, CALIFORNIA,\nUSA",
                                    style: GoogleFonts.poppins(
                                      fontSize: isSmallScreen ? 10 : 12,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                CustomText(title: "Recent Centers"),
                SizedBox(height: isSmallScreen ? 20 : 30),
                Container(
                  height: isSmallScreen ? 350 : 480,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          height: 180,
                          width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                                        "CENTER 1",
                                        style: GoogleFonts.poppins(
                                          fontSize: isSmallScreen ? 14 : 17,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xfff0C5C75),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Icon(Icons.calendar_today_outlined),
                                          SizedBox(width: 10),
                                          Text(
                                            "FROM: 6 june- 12 june",
                                            style: GoogleFonts.poppins(
                                              fontSize: isSmallScreen ? 12 : 14,
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
                                          SizedBox(width: 10),
                                          Text(
                                            "VISIT: MEDICATION",
                                            style: GoogleFonts.poppins(
                                              fontSize: isSmallScreen ? 12 : 14,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Image.asset("assets/images/id_card.png"),
                                          SizedBox(width: 10),
                                          Text(
                                            "REFERENCE ID : CEN1TB904",
                                            style: GoogleFonts.poppins(
                                              fontSize: isSmallScreen ? 12 : 14,
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
                SizedBox(height: isSmallScreen ? 20 : 30),
                CustomText(title: "Recent Nurses / CNA"),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: CircleAvatar(
                              radius: isSmallScreen ? 45 : 65,
                              backgroundImage: AssetImage("assets/images/profile.png"),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'John Smith',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: isSmallScreen ? 18 : 22,
                            ),
                          ),
                          Text(
                            'Center 1',
                            style: GoogleFonts.poppins(
                              fontSize: isSmallScreen ? 14 : 22,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: CircleAvatar(
                              radius: isSmallScreen ? 45 : 65,
                              backgroundImage: AssetImage("assets/images/profile.png"),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'John Smith',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: isSmallScreen ? 18 : 22,
                            ),
                          ),
                          Text(
                            'Center 1',
                            style: GoogleFonts.poppins(
                              fontSize: isSmallScreen ? 14 : 22,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: CircleAvatar(
                              radius: isSmallScreen ? 45 : 65,
                              backgroundImage: AssetImage("assets/images/profile.png"),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'John Smith',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: isSmallScreen ? 18 : 22,
                            ),
                          ),
                          Text(
                            'Center 1',
                            style: GoogleFonts.poppins(
                              fontSize: isSmallScreen ? 14 : 22,
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
    );
  }
}
