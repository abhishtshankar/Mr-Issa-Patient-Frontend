import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:patient/home_screen.dart';
import 'package:patient/residentIntakes_screen.dart';
import 'package:patient/safetyPlan_screen.dart';
import 'package:patient/treatmentPlan_screen.dart';
import 'package:patient/widget/app_buttons.dart';
import 'package:patient/widget/app_widgets.dart';

import 'bottom_navigations/bottom_nav_bar.dart';
import 'faceSheet_screen.dart';
import 'initialAssesment.dart';
import 'nursuingAssesment.dart';

class IntakeScreen_skip extends StatelessWidget {
  IntakeScreen_skip({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // Set the background color to white
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AppBar(
              leading: const BackButton(),
              title: const Text('INTAKE'),
              actions: [
                Padding(
                  padding: EdgeInsets.only(right:10, top: 10),
                  child: Container(
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {
                        showSkipDialog(context);
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Color(0xff1A9FB2),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: BorderSide(
                            color: Color(0xff1A9FB2),
                            width: 2
                          ),
                        ),
                      ),
                      child: Text(
                        'SKIP',
                        style: GoogleFonts.poppins(
                          color: Color(0xff1A9FB2),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            buildVSpacer(20),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 18,
              ),
              child: Text(
                'Please Upload the Following Documents\nRequired below :',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                  color: Colors.black,
                  decoration: TextDecoration.none, // Remove underline
                ),
              ),
            ),
            buildVSpacer(20),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 18,
              ),
              child:  Row(
                children: [
                  Text(
                    '2 OUT OF 6 INTAKES',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff4DAF4E),
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      decoration: TextDecoration.none, // Remove underline
                    ),
                  ),
                  Text(
                    '  HAVE BEEN UPLOADED!',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      decoration: TextDecoration.none, // Remove underline
                    ),
                  ),
                ],
              ),
            ),
            buildVSpacer(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Wrap(
                spacing: 15,
                runSpacing: 25,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => InitialAssesment(),
                          ),
                        );
                      },
                      child: buildAppOptionCards(
                        image: 'assets/images/image 37.png',
                        title: 'Initial Assesment',
                        upload: true,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NursingAssesment(),
                          ),
                        );
                      },
                      child: buildAppOptionCards(
                        image: 'assets/images/image 31.png',
                        title: 'Nursing Assesment',
                        upload: true,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TreatmentScreen(),
                          ),
                        );
                      },
                      child: buildAppOptionCards(
                        image: 'assets/images/treatment.png',
                        title: 'Treatment Plan',
                        upload: true,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FaceSheetScreen(),
                          ),
                        );
                      },
                      child: buildAppOptionCards(
                        image: 'assets/images/image 30.png',
                        title: 'Face Sheet',
                        upload: true,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SafetyScreen(),
                          ),
                        );
                      },
                      child: buildAppOptionCards(
                        image: 'assets/images/image 38.png',
                        title: 'Safety Plan',
                        upload: true,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResidentScreen(),
                          ),
                        );
                      },
                      child: buildAppOptionCards(
                        image: 'assets/images/image 39.png',
                        title: 'Resident Intakes',
                        upload: true,
                      ),
                    ),
                  ),
                  buildVSpacer(30),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


void showSkipDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/images/image 69.png'), // Replace with your image path
              Row(
                children: [
                  Text(
                    'Are you Sure want to Skip for Now?',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Center(
                child: Text(
                  'NOTE : You can complete Intake process',
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w300,
                    fontSize: 13,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'later on',
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w300,
                    fontSize: 13,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AppBottomNavBar()),
                  );
                  showHelloDialog(context);
                },
                child: Text('SKIP FOR NOW'),
              ),

              TextButton(
                onPressed: () {
                  // Handle cancel button click in the dialog
                  Navigator.of(context).pop(); // Close the dialog
                },
                child: Text(
                  '< Cancel',
                  style: GoogleFonts.poppins(
                    color: Color(0xff0C5C75),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}


void showHelloDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/images/Frame 70.png'), // Replace with your image path
              Row(
                children: [
                  Text(
                    'You Haven’t Uploaded your Intake',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Center(
                child: Text(
                  'Documents Yet!....Complete your',
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                  ),
                ),
              ),
              Center(
                child: Text(
                  ' Intake Process Now!',
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                  ),
                ),
              ),

              AppButtons.primaryButton(
                text: 'COMPLETE INTAKE NOW',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => IntakeScreen_skip()),
                  );
                },
              ),
              buildVSpacer(20),
              AppButtons.secondaryButton(
                text: 'SKIP FOR NOW',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  AppBottomNavBar(),
                    ),
                  )
                  ;
                },
              ),

            ],
          ),
        ),
      );
    },
  );
}