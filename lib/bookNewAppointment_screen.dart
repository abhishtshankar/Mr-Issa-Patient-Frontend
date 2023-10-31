import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:patient/scheduleScreen.dart';
import 'package:patient/widget/custom_text.dart';
import 'package:patient/widget/dateInput_widget.dart';

class BookNewAppointment extends StatefulWidget {
  const BookNewAppointment({Key? key}) : super(key: key);

  @override
  State<BookNewAppointment> createState() => _BookNewAppointmentState();
}

class _BookNewAppointmentState extends State<BookNewAppointment> {
  List<String> timeOptions = [
    'Select time',
    '08:00 AM (MORNING)',
    '09:00 AM (MORNING)',
  ];
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    String selectedTime = 'Select time';
    final screenHeight = MediaQuery.of(context).size.height;
    double containerWidth = screenWidth < 600 ? screenWidth : 390; // Adjust the value as needed
    // double containerHeight = 1000; // Adjust the value as needed

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {},
                color: Colors.teal,
              ),
            ),
          ),
          title: Text(
            "BOOK NEW APPOINTMENT",
            style: GoogleFonts.poppins(color: Colors.teal[600], fontSize: 16),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: screenWidth < 600 ? 10.0 : 30,
                  top: screenWidth < 600 ? 20 : 80,
                  right: screenWidth < 600 ? 10.0 : 30,

                ),
                child: Container(
                  // height: containerHeight,
                  width: containerWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white70,
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: screenWidth < 600 ? 20 : 30),
                      Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Booking Details",
                              style: GoogleFonts.poppins(
                                fontSize: screenWidth < 600 ? 22 : 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Name",
                              style: GoogleFonts.poppins(
                                fontSize: screenWidth < 600 ? 16 : 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          style: GoogleFonts.poppins(
                            fontSize: screenWidth < 600 ? 16 : 20,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            fillColor: Colors.blueGrey.shade200.withOpacity(0.2),
                            hintText: 'Type Here....',
                            hintStyle: GoogleFonts.poppins(
                              fontSize: screenWidth < 600 ? 14 : 17,
                              color: Colors.black87,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black, width: 2),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black26, width: 3),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Contact Number",
                              style: GoogleFonts.poppins(
                                fontSize: screenWidth < 600 ? 16 : 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          style: GoogleFonts.poppins(
                            fontSize: screenWidth < 600 ? 16 : 20,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            fillColor: Colors.blueGrey.shade200.withOpacity(0.2),
                            hintText: 'Type Here....',
                            hintStyle: GoogleFonts.poppins(
                              fontSize: screenWidth < 600 ? 14 : 17,
                              color: Colors.black87,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black, width: 2),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black26, width: 3),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Reason for Visit",
                              style: GoogleFonts.poppins(
                                fontSize: screenWidth < 600 ? 16 : 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1, color: Colors.black),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: TextField(
                              keyboardType: TextInputType.multiline,
                              maxLines: null, // This line is updated
                              style: GoogleFonts.poppins(fontSize: 20, color: Colors.black),
                              decoration: InputDecoration(
                                hintText: 'Type Here....',
                                hintStyle: GoogleFonts.poppins(fontSize: 17, color: Colors.black87),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding:  EdgeInsets.only(left: 18, top: screenWidth < 600 ? 15 : 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Choose your slot",
                              style: GoogleFonts.poppins(
                                fontSize: screenWidth < 600 ? 22 : 23,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding:  EdgeInsets.only(left: 10, top: screenWidth < 600 ? 10 : 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Appointment date",
                              style: GoogleFonts.poppins(
                                fontSize: screenWidth < 600 ? 16 : 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      DateInputField(),
                      SizedBox(height: 10),
                      CustomText(title: "Time Slot"),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              // color: Colors.teal[800], // Border color
                              width: 2.0, // Border width
                            ),
                            borderRadius: BorderRadius.circular(8.0), // Border radius
                          ),
                          child: DropdownButton<String>(
                            value: selectedTime,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedTime = newValue!;
                              });
                            },
                            items: timeOptions.map((String time) {
                              return DropdownMenuItem<String>(
                                value: time,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    time,
                                    style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      color: Colors.teal[800],
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                            icon: Icon(Icons.arrow_drop_down, size: 50,),
                            isExpanded: true,
                            underline: Container(
                              height: 8,
                              color: Colors.transparent, // Set underline color to transparent
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenWidth < 600 ? 10 : 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      showSuccess(context);
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.teal[400],
                      padding: EdgeInsets.symmetric(
                        vertical: screenWidth < 600 ? 8 : 13,
                        horizontal: screenWidth < 600 ? 100 : 150,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Submit',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: screenWidth < 600 ? 20 : 25,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


void showSuccess(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/images/tick1.png'), // Replace with your image path
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Row(
                  children: [
                    Text(
                      'We have received your\nAppointment Request',
                      textAlign: TextAlign.justify, // Justify the text
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  'Our Executives will review your',
                  textAlign: TextAlign.justify, // Justify the text
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w300,
                    fontSize: 13,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Appointment Request and',
                  textAlign: TextAlign.justify, // Justify the text
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w300,
                    fontSize: 13,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'provide you the centre details',
                  textAlign: TextAlign.justify, // Justify the text
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w300,
                    fontSize: 13,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  ).then((_) {
    // Delay navigation to the next screen after 3 seconds
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pop();
      Navigator.of(context).pop();
    });
  });
}
