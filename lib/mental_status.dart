import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:patient/widget/app_buttons.dart';
import 'package:patient/widget/custom_documentUpload.dart';
import 'package:patient/widget/custom_text.dart';

import '../widget/custom_text_checkBox.dart';

class MentalStatusScreen extends StatefulWidget {
  const MentalStatusScreen({super.key});

  @override
  State<MentalStatusScreen> createState() => _MentalStatusScreenState();
}

class _MentalStatusScreenState extends State<MentalStatusScreen> {
  bool isCheckboxChecked = false; // Add this variable to manage the checkbox state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75),
        child: AppBar(
          automaticallyImplyLeading: false, // Add this line to remove the back arrow
          backgroundColor: Color(0x331A9FB2),
          title:  Text(
            'MENTAL STATUS',
            style: GoogleFonts.poppins(
                color: Color(0xFF0C5C75),
                fontSize: 18,
                fontWeight: FontWeight.w600),
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  Text(
                    'MENTAL STATUS EXAMINATION\nREPORTS (BEFORE APPOINTMENT)',
                    style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w500,color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            CustomText(title: "1. Appearance:"),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Well groomed'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Casually groomed'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Tattered'),
              ],
            ),
            SizedBox(height: 10,),
            CustomText(title: "2. Behavior/psychomotor activity:"),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Anxiety'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Depression'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Crying'),
              ],
            ),
            SizedBox(height: 10,),
            CustomText(title: "3. Orientation:"),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Oriented x3 (to time, place, situation)'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Partly oriented'),
              ],
            ),
            SizedBox(height: 10,),
            CustomText(title: "4. Affect:"),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Normal in range'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Appropriate to the situation'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Congruent with mood'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Blunted or restricted (little expressed emotion)'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Flat (no expressed emotion)'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Labile or very variable'),
              ],
            ),
            SizedBox(height: 10,),
            CustomText(title: "5. Speech and thought:"),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Fluent, Normal rate'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Normal volume'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Halting speech'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Word-finding difficulties'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Selective mute'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Halting speech'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Word-finding difficulties'),
              ],
            ),
            SizedBox(height: 10,),
            CustomText(title: "6. Thought Content:"),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Normal thought content'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Fixed ideas'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Delusions'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Hallucinations (auditory and/or visual, etc.)'),
              ],
            ),
            SizedBox(height: 10,),
            CustomText(title: "7. Orientation and consciousness:"),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Alert'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Hypervigilant'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Drowsy'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('lethargic'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Stuporous'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Asleep'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Comatose'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Confused'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Fluctuating'),
              ],
            ),
            SizedBox(height: 10,),
            CustomText(title: "8. Memory and intelligence:"),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Intact for recent memory'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Intact for remote memory'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Limited or deficient for recent and/or\nremote memory'),
              ],
            ),
            SizedBox(height: 10,),
            CustomText(title: "9. Reliability, judgment, and insight"),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Good judgement'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Fair judgement'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Poor judgement'),
              ],
            ),
            SizedBox(height: 10,),
            CustomText(title: "10. Mood:"),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Normal or euthymic'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Sad or dysphoric'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Hopeless'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Variable mood'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Irritable'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Worried or anxious'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Expansive or elevated mood'),
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  Text(
                    'MENTAL STATUS EXAMINATION\nREPORTS (AFTER APPOINTMENT)',
                    style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w500,color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            CustomText(title: "1. Appearance:"),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Well groomed'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Casually groomed'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Tattered'),
              ],
            ),
            SizedBox(height: 10,),
            CustomText(title: "2. Behavior/psychomotor activity:"),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Anxiety'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Depression'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Crying'),
              ],
            ),
            SizedBox(height: 10,),
            CustomText(title: "3. Orientation:"),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Oriented x3 (to time, place, situation)'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Partly oriented'),
              ],
            ),
            SizedBox(height: 10,),
            CustomText(title: "4. Affect:"),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Normal in range'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Appropriate to the situation'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Congruent with mood'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Blunted or restricted (little expressed emotion)'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Flat (no expressed emotion)'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Labile or very variable'),
              ],
            ),
            SizedBox(height: 10,),
            CustomText(title: "5. Speech and thought:"),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Fluent, Normal rate'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Normal volume'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Halting speech'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Word-finding difficulties'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Selective mute'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Halting speech'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Word-finding difficulties'),
              ],
            ),
            SizedBox(height: 10,),
            CustomText(title: "6. Thought Content:"),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Normal thought content'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Fixed ideas'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Delusions'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Hallucinations (auditory and/or visual, etc.)'),
              ],
            ),
            SizedBox(height: 10,),
            CustomText(title: "7. Orientation and consciousness:"),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Alert'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Hypervigilant'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Drowsy'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('lethargic'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Stuporous'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Asleep'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Comatose'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Confused'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Fluctuating'),
              ],
            ),
            SizedBox(height: 10,),
            CustomText(title: "8. Memory and intelligence:"),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Intact for recent memory'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Intact for remote memory'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Limited or deficient for recent and/or\nremote memory'),
              ],
            ),
            SizedBox(height: 10,),
            CustomText(title: "9. Reliability, judgment, and insight"),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Good judgement'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Fair judgement'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Poor judgement'),
              ],
            ),
            SizedBox(height: 10,),
            CustomText(title: "10. Mood:"),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Normal or euthymic'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Sad or dysphoric'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Hopeless'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Variable mood'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Irritable'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Worried or anxious'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isCheckboxChecked,
                  onChanged: (value) {
                    setState(() {
                      isCheckboxChecked = value!;
                    });
                  },
                ),
                Text('Expansive or elevated mood'),
              ],
            ),

            SizedBox(height: 20,),
            CustomInfoContainer()
          ],
        ),
      ),

    );

  }
}