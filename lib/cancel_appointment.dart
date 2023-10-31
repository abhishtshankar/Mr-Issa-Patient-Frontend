import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:patient/scheduleScreen.dart';
import 'package:patient/widget/custom_documentUpload.dart';

class CancelAppointment extends StatefulWidget {
  const CancelAppointment({super.key});


  @override
  State<CancelAppointment> createState() => _InitialState();
}

class _InitialState extends State<CancelAppointment> {
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
  bool isChecked=false;
  @override
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
                    MaterialPageRoute(builder: (context) => ScheduleScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffED4040),
                ),
                child: Text(
                  'CANCEL APPOINTMENTS',
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
                  color:Colors.white,
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
                          "CANCEL APPOINTMENT ",
                          style: GoogleFonts.poppins(
                              color: Colors.redAccent,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffEEEEEE),
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.clear,
                            color: Colors.redAccent,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                            Navigator.of(context).pop();

                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left:8),
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: IconButton(
                        icon: Image.asset("assets/images/erroe.png"),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left:5),
                    child: Text("Please Confirm and Provide details to\nCancel Your Appointment!",
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Padding(
                padding:  EdgeInsets.only(right: 30,left: 20),
                child: Text("I have been offered the opportunity to have medical care at the hospital/urgent care for the above illness/injury. I feel as though I do not require medical care at this time. However, should I feel the need to have medical care, I will immediately report this to a Devine Care staff.",
                  style:GoogleFonts.poppins(
                      fontSize:15
                  ) ,
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Transform.scale(
                      scale: 1.5,
                      child: Checkbox(
                        value: isChecked,
                        activeColor: Colors.teal,
                        onChanged: (newBool) {
                          setState(() {
                            isChecked = newBool ?? false;
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text('I agree to the Terms & Conditions above',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500),)
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                  padding: EdgeInsets.only(right: 180,),
                  child: Text("Recident Full Name",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                      ))),
              SizedBox(
                height: 10,
              ),

              Container(
                width: 350,
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Enter your Lorem Ipsum",
                      border: OutlineInputBorder()),
                ),
              ),

              SizedBox(height: 20,),
              Container(height: 200,child: CustomInfoContainer()),
              SizedBox(height: 20,),
            ]
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
            style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Container(
            height: 40,
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