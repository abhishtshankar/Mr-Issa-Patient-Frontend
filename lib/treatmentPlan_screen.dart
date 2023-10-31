import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:patient/intake_screen.dart';
import 'package:patient/widget/app_buttons.dart';
import 'package:patient/widget/app_widgets.dart';
import 'package:patient/widget/custom_documentUpload.dart';
import 'package:patient/widget/custom_text.dart';
import 'package:patient/widget/dateInput_widget.dart';
import 'package:patient/widget/text_radio_button_widget.dart';

import '../widget/custom_text_checkBox.dart';

class TreatmentScreen extends StatefulWidget {
  const TreatmentScreen({Key? key}) : super(key: key);
  @override
  State<TreatmentScreen> createState() => _TreatmentScreenState();
}
class _TreatmentScreenState extends State<TreatmentScreen> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked = false;
  bool isSelected = false;
  bool isSelectedInitial = false;
  bool isSelectedUpdate = false;
  bool isCheckboxChecked = false;
  String? selectedProblem;
  List<String> problems = ['Problem 1', 'Problem 2', 'Problem 3'];
  List<String> gridItems2 = ['Normal', 'Elevated', 'Depressed', 'Anxious','Other'];

  Widget buildCheckboxListTile(String title, bool initialValue) {
    Color activeColor = initialValue ? Colors.grey : Colors.transparent;
    Color checkColor = initialValue ? Colors.white : Colors.transparent;
    Color borderColor = initialValue ? Colors.grey : Colors.black;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      height: 65,
      child: CheckboxListTile(
        title: Text(
          title,
          style: GoogleFonts.poppins(
            color: initialValue ? Colors.black : Colors.black,
            //fontWeight: FontWeight.bold,
          ),
        ),
        value: initialValue,
        onChanged: (bool? value) {

        },
        activeColor: activeColor,
        checkColor: checkColor,
        controlAffinity: ListTileControlAffinity.leading,
        tileColor: initialValue ? Colors.white : null,
        contentPadding: EdgeInsets.symmetric(vertical: 3.0, horizontal: 16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: BorderSide(
            color: borderColor,
            width: 1.0,
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    int selectedRadio = 1;

    void handleRadioValueChange(int value) {
      setState(() {
        selectedRadio = value;
      });
    }
    return Scaffold(

      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75),
        child: AppBar(
          automaticallyImplyLeading: false, // Add this line to remove the back arrow
          backgroundColor: Color(0x331A9FB2),
          title:  Text(
            'TREATMENT PLAN',
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
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ReusableContainer(label: 'Name', hintText: 'Enter your name'),
              ReusableContainer(label: 'Address', hintText: 'Enter your address'),
              ReusableContainer(label: 'Number', hintText: 'Enter your mobile number'),
              buildVSpacer(10),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Row(
                  children: [
                    Text(
                      'Choose your Option',
                      style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              buildVSpacer(10),
              Row(
                children: [
                  Flexible(
                    child: RadioContainer(
                      label: 'Initial',
                      onClickColor: Colors.grey,
                      isSelected: isSelected,
                      onChanged: (bool value) {
                        setState(() {
                          isSelected = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 8),
                  Flexible(
                    child: RadioContainer(
                      label: 'Update',
                      onClickColor: Colors.grey,
                      isSelected: isSelected,
                      onChanged: (bool value) {
                        setState(() {
                          isSelected = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              buildVSpacer(10),
              Row(
                children: [
                  Text(
                    'Resident Details',
                    style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              buildVSpacer(10),
              ReusableContainer(label: 'Resident Name:', hintText: 'Enter your Lorem Ipsum'),
              buildVSpacer(10),
              ReusableContainer(label: 'Date:', hintText: 'Enter your Lorem Ipsum'),
              buildVSpacer(10),
              ReusableContainer(label: 'DOB:', hintText: 'Enter your Lorem Ipsum'),
              buildVSpacer(10),
              ReusableContainer(label: 'Admit Date:', hintText: 'Enter your Lorem Ipsum'),
              buildVSpacer(10),
              ReusableContainer(label: 'Care:', hintText: 'Enter your Lorem Ipsum'),
              buildVSpacer(20),
              Row(
                children: [
                  Flexible(
                    child: RadioContainer(
                      label: 'Physical\nservices',
                      onClickColor: Colors.cyan,
                      isSelected: isSelected,
                      onChanged: (bool value) {
                        setState(() {
                          isSelected = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 6),
                  Flexible(
                    child: RadioContainer(
                      label: 'Behavioural\nservices',
                      onClickColor: Colors.cyan,
                      isSelected: isSelected,
                      onChanged: (bool value) {
                        setState(() {
                          isSelected = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              buildVSpacer(10),
              CustomDropdownSection(
                label: 'Presenting Problems',
                items: problems,
                selectedValue: selectedProblem,
                onChanged: (String? value) {
                  setState(() {
                    selectedProblem = value;
                  });
                },
              ),
              buildVSpacer(10),
              Padding(
                padding: const EdgeInsets.only(left: 5,),
                child: Row(
                  children: [
                    Text(
                      'Diagnosis',
                      style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    CustomCheckBox(
                      label: "Oriented",
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
                   buildHSpacer(5),
                    CustomCheckBox(
                      label: "Disoriented",
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
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  children: [
                    CustomCheckBox(
                      label: "Unstable",
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
                    buildHSpacer(5),

                    CustomCheckBox(
                      label: "Other",
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
                padding: const EdgeInsets.only(left: 5,),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Specify (if other)',
                    style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Container(
                height: 110,
                width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                margin: EdgeInsets.symmetric(vertical: 16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Mood Level',
                    style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    CustomCheckBox(
                      label: "Normal",
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
                    buildHSpacer(5),

                    CustomCheckBox(
                      label: "Elevated",
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
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  children: [
                    CustomCheckBox(
                      label: "Depressed",
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
                    buildHSpacer(5),

                    CustomCheckBox(
                      label: "Anxious",
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
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  children: [
                    CustomCheckBox(
                      label: "Other",
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
                padding: const EdgeInsets.only(left: 0,),
                child: Row(
                  children: [
                    Text(
                      'Specify (if other)',
                      style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Container(
                height: 110,
                width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                margin: EdgeInsets.symmetric(vertical: 16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:5),
                child: Row(
                  children: [
                    Text(
                      'ADLS:',
                      style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              buildCheckboxListTile('Is independent with all ADLS', true),
              buildCheckboxListTile('Personal care level - See attached \npersonal care treatment plan', true),
              Padding(
                padding: const EdgeInsets.only(left: 0,right: 120,bottom: 10,top: 10),
                child: Text(
                  'Behavioral Health Services',
                  style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              buildCheckboxListTile('Receives behavioral Health services', true),
              buildCheckboxListTile('Is prescribed Psychotropic Medication', true),
              buildCheckboxListTile('Resident agrees to follow House rules', true),
              Padding(
                padding: const EdgeInsets.only(left:5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Text(
                        'Primary care provider',
                        style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 55,
                width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                margin: EdgeInsets.symmetric(vertical: 16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Text(
                        'Psychiatric Provider:',
                        style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 120,
                width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                margin: EdgeInsets.symmetric(vertical: 16.0),
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(10.0),
                //   border: Border.all(
                //     color: Colors.grey,
                //     width: 1.0,
                //   ),
                // ),
                child: Text(
                  'Resident to receive treatment services from above provider(s) every 1 to 2 months or earlier as needed. Specialty providers are to be managed and referred per primary care medical provider.',
                  style: GoogleFonts.poppins(
                    fontSize: 15.5,
                    color: Colors.black,
                  ),
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Row(
                  children: [
                    Text(
                      'Resident Goals',
                      style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              buildVSpacer(10),
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Row(
                  children: [
                    Text(
                      'Allergies',
                      style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Container(
                height: 150,
                width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                margin: EdgeInsets.symmetric(vertical: 16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Row(
                  children: [
                    Text(
                      'Triggers',
                      style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Container(
                height: 150,
                width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                margin: EdgeInsets.symmetric(vertical: 16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
              ),
              CustomDropdownSection(
                label: 'Strengths',
                items: problems,
                selectedValue: selectedProblem,
                onChanged: (String? value) {
                  setState(() {
                    selectedProblem = value;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5,top: 10),
                child: Row(
                  children: [
                    Text(
                      'Limitation',
                      style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Container(
                height: 110,
                width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                margin: EdgeInsets.symmetric(vertical: 16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
              ),
              CustomDropdownSection(
                label: 'Barriers:',
                items: problems,
                selectedValue: selectedProblem,
                onChanged: (String? value) {
                  setState(() {
                    selectedProblem = value;
                  });
                },
              ),
              buildVSpacer(10),

              Row(
                children: [
                  Text(
                    'Risk Assessment/ Warning Signs\n& Symptoms of Suicidal Ideations',
                    style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              buildVSpacer(10),
              Row(
                children: [
                  Transform.scale(
                    scale: 1.2 * (MediaQuery.of(context).textScaleFactor), // Adjust the scale based on text scaling factor
                    child: Checkbox(
                      value: true,
                      onChanged: (bool? value) {},
                      activeColor: Colors.cyan,
                      checkColor: Colors.white,
                    ),
                  ),
                  SizedBox(width: 4.0),
                  Text(
                    'Behavioral Symptoms',
                    style: GoogleFonts.poppins(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              buildVSpacer(10),
              Row(
                children: [
                  CheckboxWithText(
                    value: true,
                    text: 'Self injuring',
                    onChanged: (bool? value) {},
                  ),
                  SizedBox(width: 8.0),
                  CheckboxWithText(
                    value: false,
                    text: 'Reckless \n behaviour',
                    onChanged: (bool? value) {},
                  ),
                ],
              ),
              buildVSpacer(10),
              Row(
                children: [
                  CheckboxWithText(
                    value: false,
                    text: 'Impulsive \nbehaviour',
                    onChanged: (bool? value) {},
                  ),
                  SizedBox(width: 8.0),
                  CheckboxWithText(
                    value: false,
                    text: 'Social \nisolation',
                    onChanged: (bool? value) {},
                  ),
                ],
              ),
              buildVSpacer(10),
              buildCheckboxListTile('No longer enjoying previous activities', false),
              buildVSpacer(10),
              buildCheckboxListTile('Talking / Writing about Death', false),
              buildVSpacer(10),
              Row(
                children: [
                  Transform.scale(
                    scale: 1.2 * (MediaQuery.of(context).textScaleFactor), // Adjust the scale based on text scaling factor
                    child: Checkbox(
                      value: true,
                      onChanged: (bool? value) {},
                      activeColor: Colors.cyan,
                      checkColor: Colors.white,
                    ),
                  ),
                  SizedBox(width: 4.0),
                  Text(
                    'Physical Symptoms',
                    style: GoogleFonts.poppins(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  CheckboxWithText(
                    value: true,
                    text: 'Insomnia',
                    onChanged: (bool? value) {},
                  ),
                  SizedBox(width: 8.0),
                  CheckboxWithText(
                    value: false,
                    text: 'Hypersomnia',
                    onChanged: (bool? value) {},
                  ),
                ],
              ),
              buildVSpacer(10),
              Row(
                children: [
                  CheckboxWithText(
                    value: false,
                    text: 'Changes in\nAppetite',
                    onChanged: (bool? value) {},
                  ),
                  SizedBox(width: 8.0),
                  CheckboxWithText(
                    value: false,
                    text: 'Weight\nGain / Loss',
                    onChanged: (bool? value) {},
                  ),
                ],
              ),
              buildVSpacer(10),
              Padding(
                padding: const EdgeInsets.only(left: 0,right: 200),
                child: CheckboxWithText(
                  value: false,
                  text: 'Panic Attacks',
                  onChanged: (bool? value) {},
                ),
              ),
              buildVSpacer(10),
              Row(
                children: [
                  Transform.scale(
                    scale: 1.2 * (MediaQuery.of(context).textScaleFactor), // Adjust the scale based on text scaling factor
                    child: Checkbox(
                      value: true,
                      onChanged: (bool? value) {},
                      activeColor: Colors.cyan,
                      checkColor: Colors.white,
                    ),
                  ),
                  SizedBox(width: 4.0),
                  Text(
                    'Cognitive Symptoms',
                    style: GoogleFonts.poppins(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              buildVSpacer(10),
              buildCheckboxListTile('Lacking the ability to Concentrate', true),
              Row(
                children: [
                  CheckboxWithText(
                    value: false,
                    text: 'Memory\nImpairment',
                    onChanged: (bool? value) {},
                  ),
                  SizedBox(width: 8.0),
                  CheckboxWithText(
                    value: false,
                    text: 'Ruminating',
                    onChanged: (bool? value) {},
                  ),
                ],
              ),
              buildCheckboxListTile('Pervasive thoughts about Death & Dying', false),
              buildCheckboxListTile('Inability to focus on Specific Task', false),
              buildVSpacer(10),
              Row(
                children: [
                  Transform.scale(
                    scale: 1.2 * (MediaQuery.of(context).textScaleFactor), // Adjust the scale based on text scaling factor
                    child: Checkbox(
                      value: true,
                      onChanged: (bool? value) {},
                      activeColor: Colors.cyan,
                      checkColor: Colors.white,
                    ),
                  ),
                  SizedBox(width: 4.0),
                  Text(
                    'Psychosocial Symptoms',
                    style: GoogleFonts.poppins(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  CheckboxWithText(
                    value: true,
                    text: 'Feeling of\nHelplessness',
                    onChanged: (bool? value) {},
                  ),
                  SizedBox(width: 8.0),
                  CheckboxWithText(
                    value: false,
                    text: 'Worthlessness',
                    onChanged: (bool? value) {},
                  ),
                ],
              ),
              buildVSpacer(10),
              Row(
                children: [
                  CheckboxWithText(
                    value: false,
                    text: 'Depression',
                    onChanged: (bool? value) {},
                  ),
                  SizedBox(width: 8.0),
                  CheckboxWithText(
                    value: false,
                    text: 'Anxiety',
                    onChanged: (bool? value) {},
                  ),
                ],
              ),
              buildVSpacer(10),
              Row(
                children: [
                  CheckboxWithText(
                    value: false,
                    text: 'Mood Swings',
                    onChanged: (bool? value) {},
                  ),
                  SizedBox(width: 8.0),
                  CheckboxWithText(
                    value: false,
                    text: 'Irritability',
                    onChanged: (bool? value) {},
                  ),
                ],
              ),
              buildVSpacer(10),
              Row(
                children: [
                  Text(
                    'Interventions that are being  Implemented',
                    style: GoogleFonts.poppins(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              buildVSpacer(10),
              Row(
                children: [
                  CheckboxWithText(
                    value: true,
                    text: 'Psychiatric\nServices',
                    onChanged: (bool? value) {},
                  ),
                  SizedBox(width: 8.0),
                  CheckboxWithText(
                    value: false,
                    text: 'Communicat \n-ion Skills',
                    onChanged: (bool? value) {},
                  ),
                ],
              ),
              buildVSpacer(10),
              Row(
                children: [
                  CheckboxWithText(
                    value: false,
                    text: 'Verbal\nPrompt',
                    onChanged: (bool? value) {},
                  ),
                  SizedBox(width: 8.0),
                  CheckboxWithText(
                    value: false,
                    text: 'Interaction\nFeedback',
                    onChanged: (bool? value) {},
                  ),
                ],
              ),
              buildVSpacer(10),
              Row(
                children: [
                  CheckboxWithText(
                    value: false,
                    text: 'Encourage-\nment',
                    onChanged: (bool? value) {},
                  ),
                  SizedBox(width: 8.0),
                  CheckboxWithText(
                    value: false,
                    text: 'Role Play',
                    onChanged: (bool? value) {},
                  ),
                ],
              ),
              buildCheckboxListTile('Sponsors, Support Programs & People', false),
              buildCheckboxListTile('Review of Treatment Plan', false),
              buildCheckboxListTile('Relaxation techniques', false),
              buildVSpacer(10),
              Row(
                children: [
                  CheckboxWithText(
                    value: false,
                    text: 'Reframing',
                    onChanged: (bool? value) {},
                  ),
                  SizedBox(width: 8.0),
                  CheckboxWithText(
                    value: false,
                    text: 'Conflict \nresolution',
                    onChanged: (bool? value) {},
                  ),
                ],
              ),
              buildVSpacer(10),
              Row(
                children: [
                  CheckboxWithText(
                    value: false,
                    text: 'Rehearsal',
                    onChanged: (bool? value) {},
                  ),
                  SizedBox(width: 8.0),
                  CheckboxWithText(
                    value: false,
                    text: 'Spiritual \nexploration',
                    onChanged: (bool? value) {},
                  ),
                ],
              ),
              buildVSpacer(10),
              Row(
                children: [
                  CheckboxWithText(
                    value: false,
                    text: 'Values \nclarification',
                    onChanged: (bool? value) {},
                  ),
                  SizedBox(width: 8.0),
                  CheckboxWithText(
                    value: false,
                    text: 'Psycho-\neducation',
                    onChanged: (bool? value) {},
                  ),
                ],
              ),
              buildVSpacer(10),
              Row(
                children: [
                  CheckboxWithText(
                    value: false,
                    text: 'Exploring \nfeelings',
                    onChanged: (bool? value) {},
                  ),
                  SizedBox(width: 8.0),
                  CheckboxWithText(
                    value: false,
                    text: 'Distraction',
                    onChanged: (bool? value) {},
                  ),
                ],
              ),
              buildVSpacer(10),
              Padding(
                padding: const EdgeInsets.only(left: 0,right: 200),
                child: CheckboxWithText(
                  value: false,
                  text: 'Redirection',
                  onChanged: (bool? value) {},
                ),
              ),
              buildVSpacer(20),


              Row(
                children: [
                  Text(
                    'Counseling Frequency',
                    style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              buildVSpacer(10),

              Row(
                children: [
                  Text(
                    'Total of Minimum______Hours per Week',
                    style: GoogleFonts.poppins(fontSize: 14),
                  ),
                ],
              ),
              buildVSpacer(10),

          Row(
            children: <Widget>[
              Radio(
                value: isSelected,
                groupValue: true, onChanged: (bool? value) {  },
              ),
              Text("Cognitive Symptoms",
                style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ],
          ),

              buildVSpacer(10),
              Row(
                children: [
                  Flexible(
                    child: RadioContainer(
                      label: '3 Times a\nday',
                      onClickColor: Colors.grey,
                      isSelected: isSelected,
                      onChanged: (bool value) {
                        setState(() {
                          isSelected = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 8),
                  Flexible(
                    child: RadioContainer(
                      label: '4 Times a\nday',
                      onClickColor: Colors.grey,
                      isSelected: isSelected,
                      onChanged: (bool value) {
                        setState(() {
                          isSelected = value;
                        });
                      },
                    ),
                  ),
                ],
              ),

              buildVSpacer(10),
              Row(
                children: [
                  Flexible(
                    child: Row(
                      children: [
                        RadioContainer(
                          label: 'Other',
                          onClickColor: Colors.grey,
                          isSelected: isSelected,
                          onChanged: (bool value) {
                            setState(() {
                              isSelected = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              buildVSpacer(10),

              TextRadioButtonWidget(
                text1: 'Individual',
                text2: 'Min. 1 Hour Session per Week',
                isSelected: selectedRadio == 1,
                onChanged: (value) {
                  if (value != null && value) {
                    handleRadioValueChange(1);
                  }
                },
              ),

              buildVSpacer(10),
              TextRadioButtonWidget(
                text1: 'Individual',
                  text2: 'No Need',
                isSelected: selectedRadio == 2,
                onChanged: (value) {
                  if (value != null && value) {
                    handleRadioValueChange(2);
                  }
                },
              ),
              buildVSpacer(10),

              Row(
                children: [
                  Text(
                    'Goals for Changes in the Resident\nPhychorial Interaction or Behaviour ',
                    style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top:15,left: 5),
                child: Row(
                  children: [
                    Text(
                      'Fill the following information for the respective\nCurrent Treatment Goalsí ',
                      style: GoogleFonts.poppins(fontSize: 14),
                    ),
                  ],
                ),
              ),
              CustomDropdownSection(
                label: '1.Maintain Sobriety',
                items: problems,
                selectedValue: selectedProblem,
                onChanged: (String? value) {
                  setState(() {
                    selectedProblem = value;
                  });
                },
              ),
              CustomDropdownSection(
                label: '2.Independent Living Skills',
                items: problems,
                selectedValue: selectedProblem,
                onChanged: (String? value) {
                  setState(() {
                    selectedProblem = value;
                  });
                },
              ),
              CustomDropdownSection(
                label: '3.Employment',
                items: problems,
                selectedValue: selectedProblem,
                onChanged: (String? value) {
                  setState(() {
                    selectedProblem = value;
                  });
                },
              ),
              CustomDropdownSection(
                label: '4.ADLS',
                items: problems,
                selectedValue: selectedProblem,
                onChanged: (String? value) {
                  setState(() {
                    selectedProblem = value;
                  });
                },
              ),
              CustomDropdownSection(
                label: '5.Safety',
                items: problems,
                selectedValue: selectedProblem,
                onChanged: (String? value) {
                  setState(() {
                    selectedProblem = value;
                  });
                },
              ),
              CustomDropdownSection(
                label: '6.Medication Education',
                items: problems,
                selectedValue: selectedProblem,
                onChanged: (String? value) {
                  setState(() {
                    selectedProblem = value;
                  });
                },
              ),
              CustomDropdownSection(
                label: '7.Managing Mental Health',
                items: problems,
                selectedValue: selectedProblem,
                onChanged: (String? value) {
                  setState(() {
                    selectedProblem = value;
                  });
                },
              ),
              CustomDropdownSection(
                label: '8.Legal',
                items: problems,
                selectedValue: selectedProblem,
                onChanged: (String? value) {
                  setState(() {
                    selectedProblem = value;
                  });
                },
              ),
              buildVSpacer(10),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Text(
                      'Resident Overall Participation in Treatment',
                      style: GoogleFonts.poppins(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              buildVSpacer(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomRadioContainer(text: '100%'),
                  CustomRadioContainer(text: '75%'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomRadioContainer(text: '50%'),
                  CustomRadioContainer(text: '25%'),
                ],
              ),
              Row(
                children: [
                  CustomRadioContainer(text: 'Less than \n< 5% '),
                ],
              ),
              buildVSpacer(10),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Text(
                      'Resident Attitude',
                      style: GoogleFonts.poppins(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              buildVSpacer(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomRadioContainer(text: 'Attentive'),
                  CustomRadioContainer(text: 'Supportive'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomRadioContainer(text: 'Sharing'),
                  CustomRadioContainer(text: 'Intrusive'),
                ],
              ),
              Row(
                children: [
                  CustomRadioContainer(text: 'Resistant'),
                ],
              ),
              buildVSpacer(10),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Text(
                      'Resident Progress',
                      style: GoogleFonts.poppins(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              buildVSpacer(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomRadioContainer(text: 'Deterioration'),
                  CustomRadioContainer(text: 'No Progress'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomRadioContainer(text: 'Small\nProgress '),
                  CustomRadioContainer(text: 'Good\nProgress'),
                ],
              ),
              Row(
                children: [
                  CustomRadioContainer(text: 'Goal\nAchieved '),
                ],
              ),
              buildVSpacer(10),
              Padding(
                padding: const EdgeInsets.only(left:5.0),
                child: Row(
                  children: [
                    Text(
                      'Support System',
                      style: GoogleFonts.poppins(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              buildVSpacer(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomRadioContainer(text: 'Family'),
                  CustomRadioContainer(text: 'Friends'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomRadioContainer(text: 'BHRF Staff '),
                  CustomRadioContainer(text: 'Clinical Team '),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomRadioContainer(text: 'Guardian '),
                  CustomRadioContainer(text: 'Other'),
                ],
              ),
              buildVSpacer(10),
              Padding(
                padding: const EdgeInsets.only(left:5.0),
                child: Row(
                  children: [
                    Text(
                      'Religious Preference',
                      style: GoogleFonts.poppins(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              buildVSpacer(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomRadioContainer(text: 'Christian'),
                  CustomRadioContainer(text: 'Catholic'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomRadioContainer(text: 'Buddhist '),
                  CustomRadioContainer(text: 'Other '),
                ],
              ),
              buildVSpacer(10),
              Padding(
                padding: const EdgeInsets.only(left:5.0),
                child: Row(
                  children: [
                    Text(
                      'Discharge planning & Re-evaluation of initial\nsymptoms, behaviours & Goals ',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              buildVSpacer(10),
              ReusableCheckbox(text: "Follow-up Medical appointments upon\ndischarge"),
              ReusableCheckbox(text: "Submit application for higher or lower level\nof care."),
              ReusableCheckbox(text: "Continue with Psychiatric Provider"),
              ReusableCheckbox(text: "Continue with Primary Care Provider (PCP)"),
              ReusableCheckbox(text: "Continue with case manager for additional\nsupport and resources"),
              buildVSpacer(10),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Row(
                  children: [
                    Text(
                      'Specify (if other)',
                      style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Container(
                height: 110,
                width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
                margin: EdgeInsets.symmetric(vertical: 16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Type here......',
                    border: InputBorder.none, // Removes the default border
                    contentPadding: EdgeInsets.all(16.0), // Optional: Add padding to the text field content
                  ),
                ),
              ),
              buildVSpacer(10),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Row(
                  children: [
                    Text(
                      'Recommendations for further programs upon\ndischarge:',
                      style: GoogleFonts.poppins(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              buildVSpacer(10),
              ReusableCheckbox(text: "PHP"),
              ReusableCheckbox(text: "IOP"),
              ReusableCheckbox(text: "Sober living"),
              ReusableCheckbox(text: "Home"),
              ReusableCheckbox(text: "Flex Care 23.9"),
              ReusableCheckbox(text: "Flex Care 16"),
              ReusableCheckbox(text: "Flex Care 8"),
              buildVSpacer(10),
              Padding(
                padding: const EdgeInsets.only(left:5),
                child: Row(
                  children: [
                    Text(
                      'After care and Transition planning / Community\nResources:',
                      style: GoogleFonts.poppins(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              buildVSpacer(10),
              Padding(
                padding: const EdgeInsets.only(left:5),
                child: Row(
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          WidgetSpan(
                            child: Container(
                              width: 4,
                              height: 4,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          TextSpan(
                            text: 'National suicide hotline 988 or \n1-800-273-8255',
                            style: GoogleFonts.poppins(fontSize: 16),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:5),
                child: Row(
                  children: [
                    Text.rich(
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
                            text: 'Emergency care 911',
                            style: GoogleFonts.poppins(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:5),
                child: Row(
                  children: [
                    Text.rich(
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
                            text: '24-Hour crisis in Maricopa County \n602-222-9444',
                            style: GoogleFonts.poppins(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              buildVSpacer(10),
              Padding(
                padding: const EdgeInsets.only(left:5),
                child: Text(
                  'This treatment plan has been developed before the resident receives physical health services or behavioral health services or within 48hours after the initial assessment is completed. It will be review and updated on an on-going basis according to the review date (Every 30days) specified in the treatment plan, when a treatment goal is accomplished or changed, when additional information that affects the residentís behavioral health assessment is identified and when the resident has a significant change in condition or experiences an event that affects treatment.',
                  style: GoogleFonts.poppins(
                    fontSize: 14.0,
                    //fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              CustomDropdownSection(
                label: 'Clinical Summary/ Recommendations\n/Intervention:',
                items: problems,
                selectedValue: selectedProblem,
                onChanged: (String? value) {
                  setState(() {
                    selectedProblem = value;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top:15,left: 0,right: 10,bottom:10),
                child: Text('The mirrors in the facility are SHATTERPROOF, and if they were standard mirrors it would not present as a current safety risk to this resident.',
                  style: GoogleFonts.poppins(
                    fontSize: 14.0,
                    color: Colors.black,
                  ),
                ),
              ),
              Row(
                children: [
                  ReusableContainer(label: 'Treatment Plan review date', hintText: 'Enter your.... '),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top:15,left: 0,right: 10,bottom:10),
                child: Text('Note: Earlier review may be performed if resident has a significant change in condition or event that affects treatment.',
                  style: GoogleFonts.poppins(
                    fontSize: 14.0,
                    color: Colors.black,
                  ),
                ),
              ),
              Row(
                children: [
                  ReusableContainer(label: 'Discharge Plan Date:', hintText: 'Enter your.... '),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top:15,left: 5),
                child: Row(
                  children: [
                    Text('Individual Participating in Developing the\nService Plan',
                      style: GoogleFonts.poppins(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:15,left:5),
                child: Row(
                  children: [
                    Text('Resident / Representative',
                      style: GoogleFonts.poppins(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  ReusableCheckbox(text: ""),
                  Text('Yes',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold),),
                  Text('\n\n\nI am in the agreement with the services \nincluded in this treatment Plan',),
                ],
              ),
              Row(
                children: [
                  ReusableCheckbox(text: ""),
                  Text('No',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold),),
                  Text('\n\n\nI am in the agreement with the services \nincluded in this treatment Plan',)
                ],
              ),
              buildVSpacer(10),
              Row(
                children: [
                  Text("Signature indicates participation and informed\nconsent for treatment services.", style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                ],
              ),
              buildVSpacer(10),
              Padding(
                padding: const EdgeInsets.only(top:15,left:5),
                child: Row(
                  children: [
                    Text("First and Last Name",
                      style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),),
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
                padding: const EdgeInsets.only(top:15,left:5),
                child: Row(
                  children: [
                    Text("Resident or Resident’s representative",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),),
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
              CustomInfoContainer(),
              buildVSpacer(10),
              CustomText(title: "Date"),
              buildVSpacer(10),
              DateInputField(),
              buildVSpacer(10),
              Padding(
                padding: const EdgeInsets.only(top:15,left:5),
                child: Row(
                  children: [
                    Text( "Facility Representative",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),),
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
              CustomInfoContainer(),
              buildVSpacer(10),
              CustomText(title: "Date"),
              DateInputField(),

              Padding(
                padding: const EdgeInsets.only(top:15,left:5),
                child: Row(
                  children: [
                    Text( "Behavioral Health Professional",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),),
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
              CustomInfoContainer(),
              buildVSpacer(10),
              CustomText(title: "Date"),
              DateInputField(),
              buildVSpacer(10),
            ],
          ),
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
      margin: EdgeInsets.only(left:5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 5),
          Container(
            width: 0.9 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
            height: 60,
            child: TextFormField(
              decoration: InputDecoration(
                labelText: hintText,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 45, horizontal: 15),
              ),
              onChanged: (comment) {
              },
            ),
          ),

        ],
      ),
    );
  }
}
class RadioContainer extends StatefulWidget {
  final String label;
  final Color onClickColor;
  final bool isSelected;
  final ValueChanged<bool> onChanged;

  RadioContainer({
    required this.label,
    required this.onClickColor,
    required this.isSelected,
    required this.onChanged,
  });

  @override
  _RadioContainerState createState() => _RadioContainerState();
}

class _RadioContainerState extends State<RadioContainer> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onChanged(!widget.isSelected); // Toggle the selected state
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0.03 * MediaQuery.of(context).size.width), // Set padding as a fraction of the screen width
        child: Container(
          height: 0.1 * MediaQuery.of(context).size.height, // Set height as a fraction of the screen height
          width: 0.4 * MediaQuery.of(context).size.width, // Set width as a fraction of the screen width
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color: widget.isSelected ? widget.onClickColor : Colors.grey,
              width: 2.0,
            ),
          ),
          child: Row(
            children: [
              Radio<bool>(
                // Use the Radio widget for a group of radio buttons
                value: true,
                groupValue: widget.isSelected,
                onChanged: (value) {
                  widget.onChanged(true);
                },
                activeColor: widget.onClickColor,
              ),
              SizedBox(width: 0.019 * MediaQuery.of(context).size.width), // Set spacing as a fraction of the screen width
              Text(
                widget.label,
                style: GoogleFonts.poppins(
                  fontSize: 0.032 * MediaQuery.of(context).textScaleFactor * MediaQuery.of(context).size.width, // Set font size based on screen width and text scaling factor
                  fontWeight: FontWeight.w600,
                  color: widget.isSelected ? widget.onClickColor : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CheckboxWithText extends StatelessWidget {
  final bool value;
  final String text;
  final ValueChanged<bool?> onChanged;

  const CheckboxWithText({
    Key? key,
    required this.value,
    required this.text,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 180,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          Transform.scale(
            scale: 1.2 * (MediaQuery.of(context).textScaleFactor), // Adjust the scale based on text scaling factor
            child: Checkbox(
              value: value,
              onChanged: onChanged,
              activeColor: Colors.cyan,
              checkColor: Colors.white,
            ),
          ),
          SizedBox(width: 4.0),
          Text(
            text,
            maxLines: 2,
            style: GoogleFonts.poppins(
              fontSize: 14.0,
              //fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomDropdownSection extends StatelessWidget {
  final String label;
  final List<String> items;
  final String? selectedValue;
  final ValueChanged<String?> onChanged;

  CustomDropdownSection({
    required this.label,
    required this.items,
    required this.selectedValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top:20,left: 5,),
          child: Text(
            '$label:',
            style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(height: 8),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: Colors.grey, width: 2.0),
          ),
          child: DropdownButton<String>(
            isExpanded: true,
            underline: SizedBox(),
            icon: Icon(Icons.arrow_drop_down),
            hint: Text('Select'),
            value: selectedValue,
            onChanged: onChanged,
            items: items.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
class CustomRadioContainer extends StatefulWidget {
  final String text;

  const CustomRadioContainer({required this.text});

  @override
  _CustomRadioContainerState createState() => _CustomRadioContainerState();
}

class _CustomRadioContainerState extends State<CustomRadioContainer> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        height: 0.12 * MediaQuery.of(context).size.height, // Set height as a fraction of the screen height
        width: 0.4 * MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? Colors.cyan : Colors.grey,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: EdgeInsets.all(7.0),
        child: Row(
          children: [
            Radio(
              value: true,
              groupValue: isSelected,
              onChanged: (bool? value) {
                setState(() {
                  isSelected = !isSelected;
                });
              },
              activeColor: Colors.cyan,
            ),
            Text(
              widget.text,
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: isSelected ? Colors.cyan : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class ReusableCheckbox extends StatefulWidget {
  final String text;

  ReusableCheckbox({
    required this.text,
  });

  @override
  _ReusableCheckboxState createState() => _ReusableCheckboxState();
}

class _ReusableCheckboxState extends State<ReusableCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          activeColor: Colors.cyan,
          onChanged: (value) {
            setState(() {
              isChecked = value ?? false;
            });
          },
        ),
        SizedBox(width: 15),
        Text(
          widget.text,
          style: GoogleFonts.poppins(fontSize: 14),
        ),
      ],
    );
  }
}





