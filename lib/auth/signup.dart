import 'package:flutter/material.dart';
import 'package:patient/intake_screen_skip.dart';
import 'package:patient/widget/custom_text_field.dart';

import '../bottom_navigations/bottom_nav_bar.dart';
import '../widget/app_buttons.dart';
import '../widget/app_colors.dart';
import '../widget/app_widgets.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final List<String> _textInputFieldHeaders = [
    'First Name',
    'Last Name',
    'Email ID',
    'Phone Number',
  ];
  final List<String> _textInputFieldGuardian = [
    'Guardian Full Name',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.fromLTRB(16.0, 0, 0.0, 0.0),
          child: CircleAvatar(
            radius: 25,
            backgroundColor: AppColors.kButtonBackground1,
            child: BackButton(
              color: AppColors.kPrimaryColor,
            ),
          ),
        ),
        title: const Text('REGISTRATION'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              buildVSpacer(20),
              const Text(
                'Please fill the Details to continue your Registration Process',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                ),
              ),
              for (var i in _textInputFieldHeaders) buildCustomTextField1(header: i),
              buildVSpacer(20),
              Row(
                children: [
                  Text(
                    'Add Guardian Details',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
              for (var i in _textInputFieldGuardian) buildCustomTextField1(header: i),

              buildVSpacer(20),
              Row(
                children: [
                  Text(
                    'Guardian’s Email ID',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    ' ( OPTIONAL )',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      color: Color(0XFF0C5C75), // Set the color to teal
                    ),
                  ),
                ],
              ),
              buildCustomTextField0(),

              buildVSpacer(20),
              Row(
                children: [
                  Text(
                    'Guardian’s Phone Number',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    ' ( OPTIONAL )',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      color: Color(0XFF0C5C75), // Set the color to teal
                    ),
                  ),
                ],
              ),
              buildCustomTextField0(),

              buildVSpacer(30),
              AppButtons.primaryButton(
                text: 'CONTINUE',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => IntakeScreen_skip()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
