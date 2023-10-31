import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:patient/intake_screen.dart';
import 'package:patient/widget/app_buttons.dart';
import 'package:patient/widget/app_widgets.dart';
import 'package:patient/widget/custom_documentUpload.dart';
import 'package:patient/widget/custom_image_checkbox.dart';
import 'package:patient/widget/custom_text.dart';
import 'package:patient/widget/custom_textBox_with_text.dart';
import 'package:patient/widget/custom_text_box.dart';
import 'package:patient/widget/custom_text_checkBox.dart';
import 'package:patient/widget/dateInput_widget.dart';
import 'package:patient/widget/radiobox_widget.dart';

class NursingAssesment extends StatefulWidget {
  const NursingAssesment({Key? key}) : super(key: key);

  @override
  _WidgetScreenState createState() => _WidgetScreenState();
}

class _WidgetScreenState extends State<NursingAssesment> {
  bool isSelectedInitial = false;
  bool isSelectedUpdate = false;
  bool isCheckboxChecked = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: PreferredSize(
          preferredSize: Size.fromHeight(75),
          child: AppBar(
            automaticallyImplyLeading: false, // Add this line to remove the back arrow
            backgroundColor: Color(0x331A9FB2),
            title:  Text(
              "NURSING ASSESSMENT",
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
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 8),
              child: Row(
                children: [
                  Text(
                    "Resident's Details",
                    style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            buildVSpacer(10),
            CustomText(title: "Today's Date"),
            DateInputField(),
            buildVSpacer(10),
            CustomText(title: "Admission Date"),
            DateInputField(),
            buildVSpacer(10),
            CustomText(title: "Resident Full Name"),
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
                  setState(() {});
                },
              ),
            ),
            buildVSpacer(10),
            CustomText(title: "Date of Birth"),
            buildVSpacer(10),
            DateInputField(),
            buildVSpacer(10),
            CustomText(title: "Age"),
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
                  setState(() {});
                },
              ),
            ),
            buildVSpacer(10),
            CustomText(title: "Select Gender"),
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 15),
                  Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        width: 0.4 * MediaQuery.of(context).size.width, // Increase the width
                        height: 80, // Decrease the height
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal:0.09 * MediaQuery.of(context).size.width),
                          child: RadioCircular(
                            label: 'Male',
                            isSelected: isSelectedInitial,
                            onChanged: (bool value) {
                              setState(() {
                                isSelectedInitial = value;
                                isSelectedUpdate = !value;
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(width: 0.05 * MediaQuery.of(context).size.width),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        width: 0.4 * MediaQuery.of(context).size.width, // Increase the width
                        height: 80, // Decrease the height
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal:0.09 * MediaQuery.of(context).size.width),
                          child: RadioCircular(
                            label: 'Female',
                            isSelected: isSelectedUpdate,
                            onChanged: (bool value) {
                              setState(() {
                                isSelectedUpdate = value;
                                isSelectedInitial = !value;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            buildVSpacer(10),
            CustomText(title: "Admission Diagnosis"),
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
                  setState(() {});
                },
              ),
            ),
            buildVSpacer(10),
            CustomText(title: "Code Status"),
            buildVSpacer(10),
            Container(
              width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
              child: TextFormField(
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Full Code",
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.arrow_drop_down_sharp,
                      color: Colors.black,
                      size: 45,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            buildVSpacer(10),
            CustomText(title: "Date of Last TB Screening"),
            DateInputField(),
            buildVSpacer(10),
            CustomText(title: "Results of Last TB Screening"),
            buildVSpacer(10),
            Container(
              width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
              child: TextFormField(
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Negative",
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.arrow_drop_down_sharp,
                      color: Colors.black,
                      size: 45,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            buildVSpacer(10),
            CustomText(title: "Care to be provided at Devine Care"),
            buildVSpacer(10),
            Container(
              width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
              child: TextFormField(
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Physical Services",
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.arrow_drop_down_sharp,
                      color: Colors.black,
                      size: 45,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left:20),
              child: Row(
                children: [
                  Text(
                    "Vitals",
                    style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                CustomTextBoxWithText(title: "Blood Pressure      "),
                CustomTextBoxWithText(title: "Pulse Rate              "),
              ],
            ),
            Row(
              children: [
                CustomTextBoxWithText(title: "Respiration Rate    "),
                CustomTextBoxWithText(title: "Body Temperature"),
              ],
            ),
            Row(
              children: [
                CustomTextBoxWithText(title: "Blood Oxygen        "),
                CustomTextBoxWithText(title: "Weight                       "),
              ],
            ),
            Row(
              children: [
                CustomTextBoxWithText(title: "Height                       "),
              ],
            ),
            buildVSpacer(10),

            CustomText(title: "Allergies"),
            buildVSpacer(10),
            Container(
              width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
              height: 60,
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 45, horizontal: 15),
                ),
                onChanged: (comment) {
                  setState(() {});
                },
              ),
            ),
            buildVSpacer(10),
            CustomText(title: "Blood Glucose Level"),
            buildVSpacer(10),
            Container(
              width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
              height: 60,
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 45, horizontal: 15),
                ),
                onChanged: (comment) {
                  setState(() {});
                },
              ),
            ),
            buildVSpacer(10),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    "Covid 19 Screening",
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            buildVSpacer(10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 8),
              child:RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style.copyWith(
                    decoration: TextDecoration.none, // Remove underline
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: "Mark",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold,  fontSize: 14,
                        color: Colors.black,),
                    ),
                    TextSpan(
                      text:
                      " all the symptoms you have experienced in the past 48 hours Regardless of your\nVaccination status",
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w500,  fontSize: 14,
                          color: Colors.black,)
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Fever/chills",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),
                  CustomCheckBox(
                    label: "Difficulty in\nBreathing",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Sore Throat",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),
                  CustomCheckBox(
                    label: "Diarrhea",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Cough",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),
                  CustomCheckBox(
                    label: "Muscle or \nBody Aches",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Congestion\nor runny nose",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),
                  CustomCheckBox(
                    label: "Loss of taste\nor smell",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Fatigue",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),
                  CustomCheckBox(
                    label: "Headache",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Nausea/\nVomiting",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            buildVSpacer(10),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    "Review Of Systems",
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            buildVSpacer(10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 8),
              child:RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style.copyWith(
                    decoration: TextDecoration.none, // Remove underline
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: "Mark",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold,  fontSize: 14,
                        color: Colors.black,),
                    ),
                    TextSpan(
                        text:
                        " all the symptoms you have experienced in the past 48 hours Regardless of your Vaccination status",
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w500,  fontSize: 14,
                          color: Colors.black,)
                    ),
                  ],
                ),
              ),
            ),
            buildVSpacer(10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Denies",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),
                  CustomCheckBox(
                    label: "Fever",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Poor\n Appetite",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),

                  CustomCheckBox(
                    label: "Unexplained\nweight Gain",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Fatigue",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),

                  CustomCheckBox(
                    label: "Chills",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Change in\nAppetite",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),

                  CustomCheckBox(
                    label: "Night Sweats",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Unexplained \nWeight Loss",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            CustomText(title: "Any Comments"),
            SizedBox(height: 10),
            SizedBox(height: 10),
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
                  setState(() {});
                },
              ),
            ),
            SizedBox(height: 10),
            CustomText(title: "Cardiovascular"),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Denies",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),
                  CustomCheckBox(
                    label: "Chest Pain",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Shortness of\n Breath",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),

                  CustomCheckBox(
                    label: "Racing Pulse",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Swelling of\nfeet/hands",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),

                  CustomCheckBox(
                    label: "Irregular\nheartbeat",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            CustomText(title: "Is your Blood Pressure Under Control?"),
            SizedBox(height: 10),
            Container(
              width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
              child: TextFormField(
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Yes",
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.arrow_drop_down_sharp,
                      color: Colors.black,
                      size: 45,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            CustomText(title: "Any Comments"),
            SizedBox(height: 10),
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
                  setState(() {});
                },
              ),
            ),
            SizedBox(height: 10),
            CustomText(title: "Endocrine"),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Denies",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),
                  CustomCheckBox(
                    label: "Excess Thrist",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Excess\nUrination",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),
                  CustomCheckBox(
                    label: "Heat\nTolerance",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Cold\nIntolerance",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),
                  CustomCheckBox(
                    label: "Hair Loss",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Dry Skin",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            CustomText(title: "Is Resident's Blood Sugar Under Control?"),
            SizedBox(height: 10),
            Container(
              width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
              child: TextFormField(
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Yes",
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.arrow_drop_down_sharp,
                      color: Colors.black,
                      size: 45,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            CustomText(title: "Any Comments"),
            SizedBox(height: 10),
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
                  setState(() {});
                },
              ),
            ),
            SizedBox(height: 10),
            CustomText(title: "Gastrointestinal"),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Denies",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),
                  CustomCheckBox(
                    label: "Abdominal\nPain",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Nausea",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),
                  CustomCheckBox(
                    label: "Diarrhea",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Bloody\nStrools",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),
                  CustomCheckBox(
                    label: "Stomach\nUlcers",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Constipation",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),
                  CustomCheckBox(
                    label: "Trouble\nSwalllowing",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Jaundice/\nYellow Skin",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            CustomText(title: "Any Comments"),
            SizedBox(height: 10),
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
                  setState(() {});
                },
              ),
            ),
            SizedBox(height: 10),
            CustomText(title: "Genitourinary"),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Denies",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),
                  CustomCheckBox(
                    label: "Genital Sores/\nUlcers",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Kidney \nFailure",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),

                  CustomCheckBox(
                    label: "Kidney Stone",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Painful/\ndifficult\nurination",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),

                  CustomCheckBox(
                    label: "Testicular\nPain",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Urinary\nDischarge",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            CustomText(title: "Any Comments"),
            SizedBox(height: 10),
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
                  setState(() {});
                },
              ),
            ),
            SizedBox(height: 10),
            CustomText(title: "Hermatology / Oncology"),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Denies",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),

                  CustomCheckBox(
                    label: "Easy Bruising",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Prolonged\nBleeding",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            CustomText(title: "Any Comments"),
            SizedBox(height: 10),
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
                  setState(() {});
                },
              ),
            ),
            buildVSpacer(10),
            CustomText(title: "Head, Ease, Nose, Throat"),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Denies",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),

                  CustomCheckBox(
                    label: "Hearing Loss",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Sore Throat",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),

                  CustomCheckBox(
                    label: "Runny Nose",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Dry Mouth",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),

                  CustomCheckBox(
                    label: "Jaw Pain/\nClawdication",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Earache",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),

                  CustomCheckBox(
                    label: "Misisng\nTeeth",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            CustomText(title: "Any Comments"),
            SizedBox(height: 10),
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
                  setState(() {});
                },
              ),
            ),
            SizedBox(height: 10),

            CustomText(title: "Integumentary"),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Denies",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),
                  CustomCheckBox(
                    label: "Rash",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Change in\nMole",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),
                  CustomCheckBox(
                    label: "Skin Sores",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Skin Cancer",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),
                  CustomCheckBox(
                    label: "Severe\nItching",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Loss of Hair",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            CustomText(title: "Any Comments"),
            SizedBox(height: 10),
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
                  setState(() {});
                },
              ),
            ),
            SizedBox(height: 10),

            CustomText(title: "Musculoskeletal"),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Denies",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),
                  CustomCheckBox(
                    label: "Muscle\nAches",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Difficulty in\nLaying Flat",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),

                  CustomCheckBox(
                    label: "Back Pain",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Joint Pain",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),

                  CustomCheckBox(
                    label: "Deformities",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            CustomText(title: "Any Comments"),
            SizedBox(height: 10),
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
                  setState(() {});
                },
              ),
            ),
            SizedBox(height: 10),

            CustomText(title: "Phychiatric"),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Denies",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),

                  CustomCheckBox(
                    label: "Insomnia",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Irritability",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),

                  CustomCheckBox(
                    label: "Depression",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Anxiety",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),

                  CustomCheckBox(
                    label: "Recurrent\nBad Thoughts",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Mood Swings",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),

                  CustomCheckBox(
                    label: "Hallucinations",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Compulsion",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            CustomText(title: "Any Comments"),
            SizedBox(height: 10),
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
                  setState(() {});
                },
              ),
            ),
            SizedBox(height: 10),

            CustomText(title: "Neurologic"),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Denies",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),

                  CustomCheckBox(
                    label: "Weakness",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Headaches",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),

                  CustomCheckBox(
                    label: "Scalp\nTenderness",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Dizziness",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),

                  CustomCheckBox(
                    label: "Problems\nwith Balance",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Paralysis or\nExtremities",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),

                  CustomCheckBox(
                    label: "Tremor",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Stroke",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),

                  CustomCheckBox(
                    label: "Numbness /\nTingling",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Seizures /\nConvulsion",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),

                  CustomCheckBox(
                    label: "Fainting",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Problems\nWalking",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            CustomText(title: "Any Comments"),
            SizedBox(height: 10),
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
                  setState(() {});
                },
              ),
            ),
            SizedBox(height: 10),

            CustomText(title: "Respiratory"),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Denies",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),

                  CustomCheckBox(
                    label: "Wheezing",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 0.05 * MediaQuery.of(context).size.width), // Set padding as a fraction of the screen width
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Cough",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),
                  CustomCheckBox(
                    label: "Coughing\nUp Blood",
                    isChecked: isChecked2,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked2 = newBool;
                        if (isChecked2) {
                          isChecked1 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 0.05 * MediaQuery.of(context).size.width), // Set padding as a fraction of the screen width
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Frequent/\nSevere Cold",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),
                  CustomCheckBox(
                    label: "Difficulty\nBreathing",
                    isChecked: isChecked2,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked2 = newBool;
                        if (isChecked2) {
                          isChecked1 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            CustomText(title: "Any Comments"),
            SizedBox(height: 10),
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
                  setState(() {});
                },
              ),
            ),
            SizedBox(height: 10),

            CustomText(title: "Allergic / Immunologic"),

            Padding(
              padding: EdgeInsets.only(left: 0.05 * MediaQuery.of(context).size.width), // Set padding as a fraction of the screen width
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Denies",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),
                  CustomCheckBox(
                    label: "Seasonal\nAllergic",
                    isChecked: isChecked2,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked2 = newBool;
                        if (isChecked2) {
                          isChecked1 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 0.05 * MediaQuery.of(context).size.width), // Set padding as a fraction of the screen width
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Hay Fever\nSymptoms",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),
                  CustomCheckBox(
                    label: "Ithcing",
                    isChecked: isChecked2,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked2 = newBool;
                        if (isChecked2) {
                          isChecked1 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 0.05 * MediaQuery.of(context).size.width), // Set padding as a fraction of the screen width
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Frequent/\nInfection",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),
                  CustomCheckBox(
                    label: "Exposure to\nHIV",
                    isChecked: isChecked2,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked2 = newBool;
                        if (isChecked2) {
                          isChecked1 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),
            CustomText(title: "Any Comments"),
            SizedBox(height: 10),
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
                  setState(() {});
                },
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    "Suicidal Risk Assessment",
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            CustomText(title: "Behavioral Symptoms"),
            Padding(
              padding: EdgeInsets.only(left: 0.05 * MediaQuery.of(context).size.width), // Set padding as a fraction of the screen width
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Self-Injuring",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),
                  CustomCheckBox(
                    label: "Reckless\nBehavior",
                    isChecked: isChecked2,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked2 = newBool;
                        if (isChecked2) {
                          isChecked1 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 0.05 * MediaQuery.of(context).size.width), // Set padding as a fraction of the screen width
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Impulsive\nBehaviors",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10), // Set horizontal spacing as a fraction of the screen width
                  CustomCheckBox(
                    label: "Shifts in\nTemperament",
                    isChecked: isChecked2,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked2 = newBool;
                        if (isChecked2) {
                          isChecked1 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 0.05 * MediaQuery.of(context).size.width), // Set padding as a fraction of the screen width
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "No enjoying\nprevious\nactivities ",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),
                  CustomCheckBox(
                    label: "Talking or\nwriting about\ndeath",
                    isChecked: isChecked2,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked2 = newBool;
                        if (isChecked2) {
                          isChecked1 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),

            CustomText(title: "Physical Symptoms"),
            Padding(
              padding: EdgeInsets.only(left: 0.05 * MediaQuery.of(context).size.width), // Set padding as a fraction of the screen width
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Insomnia",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),
                  CustomCheckBox(
                    label: "Hypersomnia",
                    isChecked: isChecked2,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked2 = newBool;
                        if (isChecked2) {
                          isChecked1 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 0.05 * MediaQuery.of(context).size.width), // Set padding as a fraction of the screen width
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Changes in\nappetite ",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),
                  CustomCheckBox(
                    label: "Weight loss/\ngain",
                    isChecked: isChecked2,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked2 = newBool;
                        if (isChecked2) {
                          isChecked1 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 0.05 * MediaQuery.of(context).size.width), // Set padding as a fraction of the screen width
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Panic attacks",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),


            CustomText(title: "Psychosocial Symptoms"),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Helplessnes/\nHopelessnes ",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),
                  CustomCheckBox(
                    label: "Worthlessnes",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Depression",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),
                  CustomCheckBox(
                    label: "Anxiety",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Mood swings",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                  buildHSpacer(10),
                  CustomCheckBox(
                    label: "Irritable",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Container(
                    width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                    height: 80,
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                        width: 2.0,
                      ),
                    ),
                    child: Row(
                      children: [
                        Transform.scale(
                          scale: 1.2 * (MediaQuery.of(context).textScaleFactor), // Adjust the scale based on text scaling factor
                          child: Checkbox(
                            value: false,
                            activeColor: Colors.grey,
                            onChanged: (newBool) {
                              setState(() {
                              });
                            },
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Resident Safety Plan to be completed\nwithin 48 hours of admission",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Resident\ncontracts for\nsafety",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),

            CustomText(title: "Current Medication"),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Transform.scale(
                    scale: 1.2 * (MediaQuery.of(context).textScaleFactor), // Adjust the scale based on text scaling factor
                    child: Checkbox(
                      value: isChecked,
                      onChanged: (bool? newValue) {
                        if (newValue != null) {
                          setState(() {
                            isChecked = newValue;
                          });
                        }
                      },
                    ),
                  ),
                  Text(
                    'Verified that a list of current medications\nis present on file',
                    style: GoogleFonts.poppins(fontSize: 15.0),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),

            CustomText(title: "Nutrition "),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Diet as\nTolerated",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                buildHSpacer(10),
                  CustomCheckBox(
                    label: "Special Diet\nOrdered",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  CustomCheckBox(
                    label: "Fluid\nRestrictions",
                    isChecked: isChecked1,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked1 = newBool;
                        if (isChecked1) {
                          isChecked2 = false;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    "Skin Check",
                    style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            buildVSpacer(10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 8),
              child:RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style.copyWith(
                    decoration: TextDecoration.none, // Remove underline
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: "Mark & Label",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold,  fontSize: 14,
                        color: Colors.black,),
                    ),
                    TextSpan(
                        text:
                        " all the areas requiring treatment               ",
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w500,  fontSize: 14,
                          color: Colors.black,)
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Row(
                children: [
                  Transform.scale(
                    scale: 1.2 * (MediaQuery.of(context).textScaleFactor), // Adjust the scale based on text scaling factor
                    child: Checkbox(
                      value: isChecked,
                      onChanged: (bool? newValue) {
                        if (newValue != null) {
                          setState(() {
                            isChecked = newValue;
                          });
                        }
                      },
                    ),
                  ),
                  Text(
                    'Resident Denies Skin Concern',
                    style: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  CustomImageCheckBox(
                    image: Image.asset("assets/images/image 87.png"),
                    isChecked: isChecked1,
                    onChanged: (bool value) {},
                  ),
                  SizedBox(width: 12,),
                  CustomImageCheckBox(
                    image: Image.asset("assets/images/image 88.png"),
                    isChecked: isChecked1,
                    onChanged: (bool value) {},
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  CustomImageCheckBox(
                    image: Image.asset("assets/images/image 89.png"),
                    isChecked: isChecked1,
                    onChanged: (bool value) {},
                  ),
                  SizedBox(width: 12,),
                  CustomImageCheckBox(
                    image: Image.asset("assets/images/image 90.png"),
                    isChecked: isChecked1,
                    onChanged: (bool value) {},
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  CustomImageCheckBox(
                    image: Image.asset("assets/images/image 91.png"),
                    isChecked: isChecked1,
                    onChanged: (bool value) {},
                  ),
                  SizedBox(width: 12,),
                  CustomImageCheckBox(
                    image: Image.asset("assets/images/image 92.png"),
                    isChecked: isChecked1,
                    onChanged: (bool value) {},
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  CustomImageCheckBox(
                    image: Image.asset("assets/images/image 93.png"),
                    isChecked: isChecked1,
                    onChanged: (bool value) {},
                  ),
                  SizedBox(width: 12,),
                  CustomImageCheckBox(
                    image: Image.asset("assets/images/image 94.png"),
                    isChecked: isChecked1,
                    onChanged: (bool value) {},
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            CustomText(title: "BHT Name: "),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  style: GoogleFonts.poppins(fontSize: 20, color: Colors.black),
                  decoration: InputDecoration(
                      fillColor: Colors.blueGrey.shade200.withOpacity(0.2),
                      hintText: 'Enter your Lorem ipsum',
                      hintStyle: GoogleFonts.poppins(fontSize: 20, color: Colors.black87),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(8)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.black26, width: 3),
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Align(alignment:Alignment.centerLeft,child: Text('Signatures',style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.bold),)),
            ),
            CustomInfoContainer(),
            SizedBox(height: 10),
            CustomText(title: "RN Name: "),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  style: GoogleFonts.poppins(fontSize: 20, color: Colors.black),
                  decoration: InputDecoration(
                      fillColor: Colors.blueGrey.shade200.withOpacity(0.2),
                      hintText: 'Enter your Lorem ipsum',
                      hintStyle: GoogleFonts.poppins(fontSize: 20, color: Colors.black87),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(8)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.black26, width: 3),
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Align(alignment:Alignment.centerLeft,child: Text('Signatures',style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.bold),)),
            ),
            CustomInfoContainer(),
          ]),
        ),
      ),
    );
  }
}
