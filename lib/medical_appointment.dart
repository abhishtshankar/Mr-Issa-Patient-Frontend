import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:patient/refusal_of_medical_treatment.dart';
import 'package:patient/widget/app_colors.dart';

import 'appointment_tracking.dart';
import 'mental_status.dart';

class MedicalAppointmentScreen extends StatefulWidget {
  const MedicalAppointmentScreen({super.key});

  @override
  State<MedicalAppointmentScreen> createState() => _MedicalAppointmentScreenState();
}

class _MedicalAppointmentScreenState extends State<MedicalAppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffEEEEEE)
                  ,
                ),
                child: Icon(
                  Icons.arrow_back,
                  color: Color(0xff1A9FB2),
                ),
              ),
            ),
          ),
          title: Text(
            "Medical Appointment",
            style: GoogleFonts.poppins(fontSize: 20, color: Color(0xff0C5C75)),
          ),
      ),


      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AppointmentTracking(),
                      ));
                    },
                    child: _buildAppointmentCard(
                      image:"assets/images/image 37.png",
                      title: 'Appointment\nTracking',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => RefusalOfTreatmentScreen(),
                      ));
                    },
                    child: _buildAppointmentCard(
                      image:"assets/images/image 31.png",
                      title: 'Refusal Of Medical\nTreatment Form',
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MentalStatusScreen(),
                      ));
                    },
                    child: _buildAppointmentCard(
                      image:"assets/images/report.png",
                      title: 'Mental Status',
                    ),
                  ),
                ),
              ],
            ),
          )

        ]),

    ));
  }
  Container _buildAppointmentCard({
    required String image,
    required String title,
  }) {
    return Container(
      height: 180,
      width: 150,
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