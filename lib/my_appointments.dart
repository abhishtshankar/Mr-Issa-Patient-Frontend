import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppointments extends StatelessWidget {
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
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: AppBar(
                  backgroundColor: Colors.grey[300],
                  title: Text(
                    'MY APPOINTMENTS',
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
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  bottom: TabBar(
                    labelColor: customColor,
                    indicatorColor: indicatorColor,
                    tabs: <Widget>[
                      Tab(text: 'UPCOMING'),
                      Tab(text: 'PAST'),
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
                      scrollDirection: Axis.vertical,
                      itemCount: 6,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
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
                              padding: EdgeInsets.only(left: 17),
                              child: Row(
                                children: [
                                  Container(
                                    height: screenWidth < 600 ? 100 : 120,
                                    width: screenWidth < 600 ? 100 : 120,
                                    color: Colors.black,
                                    child: Image.asset(
                                      "assets/images/bed.png",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10, top: 20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "CENTRE 1",
                                          style: GoogleFonts.poppins(
                                            fontSize: screenWidth < 600 ? 14 : 17,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xfff0C5C75),
                                          ),
                                        ),
                                        SizedBox(height: screenWidth < 600 ? 8 : 10),
                                        Row(
                                          children: [
                                            Icon(Icons.calendar_today_outlined),
                                            SizedBox(width: screenWidth < 600 ? 20 : 30),
                                            Text(
                                              "FROM: 6 JUNE - 12 JUNE",
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
                                            Icon(Icons.location_on_outlined),
                                            SizedBox(width: screenWidth < 600 ? 20 : 30),
                                            Text(
                                              "LOCATION: CENTER 1",
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
                                            Icon(Icons.perm_identity_outlined),
                                            SizedBox(width: screenWidth < 600 ? 20 : 30),
                                            Text(
                                              "SLOT: HH:MM AM",
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
