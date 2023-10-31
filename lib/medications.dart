import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Medications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    Color customColor = Color(0xFF0C5C75);
    Color indicatorColor = Color(0xFF0C5C75);

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Column(
          children: [
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: AppBar(
                  backgroundColor: Colors.grey[300],
                  title: Text(
                    'MEDICATIONS',
                    style: GoogleFonts.poppins(
                      color: customColor,
                      fontSize: screenWidth < 600 ? 12 : 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  leading: Container(
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Color(0xFF0C5C75),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  bottom: TabBar(
                    labelColor: customColor,
                    indicatorColor: indicatorColor,
                    tabs: <Widget>[
                      Tab(text: 'Ongoing Medications'),
                      Tab(text: 'Past Medications'),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  Center(
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: screenWidth < 600 ? 200 : 250,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 6,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                                    height: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 13),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: screenWidth < 600 ? 100 : 120,
                                            width: screenWidth < 600 ? 100 : 120,
                                            color: Colors.black,
                                            child: Image.asset(
                                              "assets/images/tab1.png",
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15, top: 30),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "DISPIRIN REGULAR",
                                                  style: GoogleFonts.poppins(
                                                    fontSize: screenWidth < 600 ? 14 : 17,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xfff0C5C75),
                                                  ),
                                                ),
                                                SizedBox(height: screenWidth < 600 ? 8 : 10),
                                                Row(
                                                  children: [
                                                    Icon(Icons.medical_services_outlined),
                                                    SizedBox(width: screenWidth < 600 ? 5 : 10),
                                                    Text(
                                                      "DOSE: 500mg",
                                                      style: GoogleFonts.poppins(
                                                        fontSize: screenWidth < 600 ? 12 : 14,
                                                        fontWeight: FontWeight.normal,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: screenWidth < 600 ? 8 : 10),
                                                Row(
                                                  children: [
                                                    Icon(Icons.calendar_today_outlined),
                                                    SizedBox(width: screenWidth < 600 ? 5 : 10),
                                                    Text(
                                                      "STARTED FROM: DD/MM/YYYY",
                                                      style: GoogleFonts.poppins(
                                                        fontSize: screenWidth < 600 ? 11 : 13,
                                                        fontWeight: FontWeight.normal,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: screenWidth < 600 ? 8 : 10),
                                                Row(
                                                  children: [
                                                    Icon(Icons.access_time_outlined),
                                                    SizedBox(width: screenWidth < 600 ? 10 : 15),
                                                    Text(
                                                      "DURATION: 6 MONTHS",
                                                      style: GoogleFonts.poppins(
                                                        fontSize: screenWidth < 600 ? 12 : 14,
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
                        );
                      },
                    ),
                  ),
                  Center(
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: 180,
                            width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width * 0.9, // Adjust the multiplier as needed
                                    height: screenWidth < 600 ? 200 : 250,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 13),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: screenWidth < 600 ? 100 : 120,
                                            width: screenWidth < 600 ? 100 : 120,
                                            color: Colors.black,
                                            child: Image.asset(
                                              "assets/images/tab1.png",
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15, top: 30),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "DISPIRIN REGULAR",
                                                  style: GoogleFonts.poppins(
                                                    fontSize: screenWidth < 600 ? 14 : 17,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xfff0C5C75),
                                                  ),
                                                ),
                                                SizedBox(height: screenWidth < 600 ? 8 : 10),
                                                Row(
                                                  children: [
                                                    Icon(Icons.medical_services_outlined),
                                                    SizedBox(width: screenWidth < 600 ? 5 : 10),
                                                    Text(
                                                      "DOSE: 500mg",
                                                      style: GoogleFonts.poppins(
                                                        fontSize: screenWidth < 600 ? 12 : 14,
                                                        fontWeight: FontWeight.normal,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: screenWidth < 600 ? 8 : 10),
                                                Row(
                                                  children: [
                                                    Icon(Icons.calendar_today_outlined),
                                                    SizedBox(width: screenWidth < 600 ? 5 : 10),
                                                    Text(
                                                      "STARTED FROM: DD/MM/YYYY",
                                                      style: GoogleFonts.poppins(
                                                        fontSize: screenWidth < 600 ? 11 : 13,
                                                        fontWeight: FontWeight.normal,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: screenWidth < 600 ? 8 : 10),
                                                Row(
                                                  children: [
                                                    Icon(Icons.access_time_outlined),
                                                    SizedBox(width: screenWidth < 600 ? 10 : 15),
                                                    Text(
                                                      "DURATION: 6 MONTHS",
                                                      style: GoogleFonts.poppins(
                                                        fontSize: screenWidth < 600 ? 12 : 14,
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
                                SizedBox(width: 5),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
