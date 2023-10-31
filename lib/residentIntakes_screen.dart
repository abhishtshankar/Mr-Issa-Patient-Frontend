import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:patient/widget/app_buttons.dart';
import 'package:patient/widget/app_widgets.dart';
import 'package:patient/widget/dateInput_widget.dart';
import '../widget/custom_documentUpload.dart';

class ResidentScreen extends StatefulWidget {
  const ResidentScreen({Key? key}) : super(key: key);

  @override
  State<ResidentScreen> createState() => _ResidentScreenState();
}

class _ResidentScreenState extends State<ResidentScreen> {
  bool isChecked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75),
        child: AppBar(
          automaticallyImplyLeading: false, // Add this line to remove the back arrow
          backgroundColor: Color(0x331A9FB2),
          title:  Text(
            'RESIDENT INTAKES',
            style: GoogleFonts.poppins(
                color: Color(0xFF0C5C75),
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          actions: [
            Container(
              margin: EdgeInsets.all(8),
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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Text(
                      'Consent for Treatment',
                      style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Text(
                      'Please read the following Terms & Conditions\nproperly & provide all the necessary details',
                      style: GoogleFonts.poppins(fontSize: 16),
                    ),
                  ],
                ),
              ),
              buildVSpacer(20),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text(
                  'I voluntarily apply for evaluation/behavioral health treatment at COMPANY NAME and understand, consent, and agree as follows (to be executed by a legally authorized person if the Resident is incapable of giving informed consent):',
                  style: GoogleFonts.poppins(fontSize: 16),
                ),
              ),
              buildVSpacer(20),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text.rich(
                  TextSpan(
                    children: [
                      WidgetSpan(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 8,right: 8),
                          child: Container(
                            width: 4,
                            height: 4,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      TextSpan(
                        text: 'I agree to participate in my treatment to the best of my ability and will let my provider\nknow if situations occur that prevent me from participating in treatment',
                        style: GoogleFonts.poppins(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              buildVSpacer(20),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text.rich(
                  TextSpan(
                    children: [
                      WidgetSpan(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 8,right: 8),
                          child: Container(
                            width: 4,
                            height: 4,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      TextSpan(
                        text: 'I understand that this consent will remain\nvalid so long as I am admitted in this facility,\nor until I withdraw consent.',
                        style: GoogleFonts.poppins(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              buildVSpacer(20),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text.rich(
                  TextSpan(
                    children: [
                      WidgetSpan(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 8,right: 8),
                          child: Container(
                            width: 4,
                            height: 4,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      TextSpan(
                        text: 'Information developed as part of evaluation/\ntreatment and your psychiatric record is\nconfidential but may be released to those\nparties as required by law such as\n(information may be released without my\nconsent)in cases of medical emergency,\nabuse or neglect,court order,insurance billing\nclaims requirements,audit and program\nevaluation and where otherwise legally\nrequired.Additionally,I understand that by\nsigning this consent I am giving permission for\nADHS/DBHS to access my information and\nrecords mainted by the T/RBHA,COMPANY\nNAME and/or its subcontracted providers\nconcering the provision of covered services.',
                        style: GoogleFonts.poppins(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              buildVSpacer(20),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text.rich(
                  TextSpan(
                    children: [
                      WidgetSpan(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 8,right: 8),
                          child: Container(
                            width: 4,
                            height: 4,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      TextSpan(
                        text: 'I consent to the use and disclosure of my\nprotected health information(PHI)by\nCOMPANY NAME,its staff members and its\ncontractors/interns for the purpose of\ntreatment,payment and health care\noperations.This is a joint consent form\nbetween COMPANY NAME and its staff\nmembers.I understand the following:My\nsignature on the consent is required in order\nfor me to receive care from COMPANY NAME,I\nhave the right to revoke this consent,in\nwriting,at any time,except to the extent that\nCOMPANY NAME has taken action in reliance upon this consent. ',
                        style: GoogleFonts.poppins(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              buildVSpacer(20),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text.rich(
                  TextSpan(
                    children: [
                      WidgetSpan(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 8,right: 8),
                          child: Container(
                            width: 4,
                            height: 4,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      TextSpan(
                        text: 'I understand that all the information gathered\nduring my treatment is confidential. ',
                        style: GoogleFonts.poppins(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              buildVSpacer(20),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text.rich(
                  TextSpan(
                    children: [
                      WidgetSpan(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 8,right: 8),
                          child: Container(
                            width: 4,
                            height: 4,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      TextSpan(
                        text: 'However,confidential information may be\ndisclosed without my consent in accordance\nwith state and federal law. ',
                        style: GoogleFonts.poppins(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              buildVSpacer(20),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text.rich(
                  TextSpan(
                    children: [
                      WidgetSpan(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 8,right: 8),
                          child: Container(
                            width: 4,
                            height: 4,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      TextSpan(
                        text: 'I understand that this consent to treatment is\nvoluntary,and I may decline at any time ',
                        style: GoogleFonts.poppins(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              buildVSpacer(20),
              Row(
                children: [
                  Transform.scale(
                    scale: 1.2 * (MediaQuery.of(context).textScaleFactor), // Adjust the scale based on text scaling factor
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
                  buildHSpacer(10),
                  Text('I Agree to the Terms & Conditions',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w600),)
                ],
              ),
              buildVSpacer(20),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Text(
                      "Resident Details",
                      style: GoogleFonts.poppins(fontSize: 20, color: Color(0xFF1A9FB2),fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              buildVSpacer(10),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Text(
                      "Resident Signature",
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              buildVSpacer(10),
              CustomInfoContainer(),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Text(
                      "Date of Signature obtained",
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              buildVSpacer(10),

              DateInputField(),

              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Text(
                      "Guardian/Representative Details",
                      style: GoogleFonts.poppins(fontSize: 19, color: Color(0xFF1A9FB2),fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Text(
                      "Guardian/representative full name",
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              buildVSpacer(10),
              Container(
                width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                height: 60,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Enter your Lorem Ipsum",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 45, horizontal: 15),
                  ),
                  onChanged: (comment) {
                  },
                ),
              ),
              buildVSpacer(10),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Text(
                      "Guardian/Representative signature",
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              CustomInfoContainer(),
              buildVSpacer(10),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Text(
                      "Date of Signature obtained",
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              DateInputField(),
              buildVSpacer(10),

              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Text(
                      "Staff Details",
                      style: GoogleFonts.poppins(fontSize: 19, color: Color(0xFF1A9FB2),fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              buildVSpacer(10),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Text(
                      "Staff Full Name",
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Container(
                width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                height: 60,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Enter your Lorem Ipsum",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 45, horizontal: 15),
                  ),
                  onChanged: (comment) {
                  },
                ),
              ),
              buildVSpacer(10),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Text(
                      "Staff signature",
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              CustomInfoContainer(),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Text(
                      "Date of Signature obtained",
                      style: GoogleFonts.poppins(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              DateInputField(),
              buildVSpacer(10),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Text(
                      "Internal Resident Disclosure List",
                      style: GoogleFonts.poppins(fontSize: 18, color: Colors.black,fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              buildVSpacer(10),

              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Text(
                      "I authorise and agree that Company Name may\nverbally disclose my protected health\ninformation(PHI)to the following family\nmembers,individuals and/or significant others\nin my life each of whom is directly involved in my\ncare and are concerned about my well being\nspecifically for the purpose of coordinating care\nissues either in person or on the telephone.",
                      style: GoogleFonts.poppins(fontSize: 14, color: Colors.black,fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              buildVSpacer(10),

              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Text(
                      "I authorize and agree that Company Name may\nacknowledge and accept telephone calls from\nthe following family members,individuals and/\nor significant others in my life each of whom is\ndirectly involved in my care and are concerned\nabout my well being who may want to talk to me\nwhile at Company Name",
                      style: GoogleFonts.poppins(fontSize: 14, color: Colors.black,fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              buildVSpacer(10),
              Container(
                height: 380,
                width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                margin: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.cyan.shade50,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    ReusableContainer(label: 'Name of the person', hintText: 'Enter your Lorem Ipsum'),
                    ReusableContainer(label: 'Relationship', hintText: 'Enter your Lorem Ipsum'),
                    ReusableContainer(label: 'Contact', hintText: 'Enter your Lorem Ipsum'),
                    SizedBox(height: 20,),
                    ElevatedButton(
                      onPressed: () {
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.cyan.shade700,
                        minimumSize: Size(170, 50),
                      ),
                      child: Text(
                        'SAVE',
                        style: GoogleFonts.poppins(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 50,
                  width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(right: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.cyan.shade900,
                            ),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.cyan.shade900,
                          ),
                        ),
                        SizedBox(width: 14),
                        Text(
                          'ADD MORE PEOPLE',
                          style: GoogleFonts.poppins(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              buildVSpacer(20),

              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Text(
                      "I acknowledge and agree that company Name\nmay disclose my protected health information to\nthe person(s)set forth in this form.I understand\nthat I can revoke this authorization in writing,\nexcept to the extent that action has already been\ntaken,at any time and it will expire on provided\ndate or one year from the date of my signature.",
                      style: GoogleFonts.poppins(fontSize: 14, color: Colors.black,fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),

              buildVSpacer(20),

              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Text(
                      "Please provide the Expiry Date Below:",
                      style: GoogleFonts.poppins(fontSize: 14, color: Colors.black,fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              buildVSpacer(20),

              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Text(
                      "Expiry Date",
                      style: GoogleFonts.poppins(fontSize: 14, color: Colors.black,fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),

              DateInputField(),

              buildVSpacer(20),

              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Text(
                      "Resident Signature",
                      style: GoogleFonts.poppins(fontSize: 14, color: Colors.black,fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              CustomInfoContainer(),
              buildVSpacer(20),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Text(
                      "Date of Signature obtained",
                      style: GoogleFonts.poppins(fontSize: 14, color: Colors.black,fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              DateInputField(),
              buildVSpacer(10),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Text(
                      "Guardian/representative full name",
                      style: GoogleFonts.poppins(fontSize: 14, color: Colors.black,fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              buildVSpacer(10),
              Container(
                width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                height: 60,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Enter your Lorem Ipsum",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 45, horizontal: 15),
                  ),
                  onChanged: (comment) {
                  },
                ),
              ),
              buildVSpacer(10),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Text(
                      "Guardian/Representative signature",
                      style: GoogleFonts.poppins(fontSize: 14, color: Colors.black,fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              CustomInfoContainer(),
              buildVSpacer(10),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Text(
                      "Date of Signature obtained",
                      style: GoogleFonts.poppins(fontSize: 14, color: Colors.black,fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              DateInputField(),
              buildVSpacer(10),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Text(
                      "Staff signature",
                      style: GoogleFonts.poppins(fontSize: 14, color: Colors.black,fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              buildVSpacer(10),
              CustomInfoContainer(),
              buildVSpacer(10),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Text(
                      "Date of Signature obtained",
                      style: GoogleFonts.poppins(fontSize: 14, color: Colors.black,fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              DateInputField(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 75,
        decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppButtons.primaryButton(
              text: 'SUBMIT DETAILS',
              onPressed: () {
                Navigator.of(context).pop();

              },
            ),

          ],
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
              padding: const EdgeInsets.only(top:10,left: 14),
              child: TextField(
                decoration: InputDecoration(
                  hintText: hintText,
                  border: InputBorder.none,
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

class ReusableContainer1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:10,right:10),
      child: Container(
        height: 50,
        width: 440,
        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(8),border: Border.all(width: 1,color: Colors.black)),
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'DD/MM/YYYY',
                hintStyle: GoogleFonts.poppins(fontSize: 18),
                suffixIcon: Icon(Icons.calendar_month_outlined),
                suffixIconColor: Color(0xFF1A9FB2)
            ),
          ),
        ),
      ),
    );
  }
}