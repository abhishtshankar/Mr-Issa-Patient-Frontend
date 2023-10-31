import 'package:flutter/material.dart';
import 'package:patient/auth/signup.dart';
import 'package:patient/bottom_navigations/bottom_nav_bar.dart';
import 'package:patient/widget/app_widgets.dart';

import '../widget/app_buttons.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/login.png',
                ),
                buildVSpacer(50),
                RichText(
                  text: const TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Enter your Credentials to ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Popins',
                        ),
                      ),
                      TextSpan(
                        text: 'Log In',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Popins',
                        ),
                      ),
                    ],
                  ),
                ),
                buildVSpacer(20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFD9D9D9),
                      hintText: 'Username',
                      hintStyle: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                      enabledBorder: InputBorder.none,
                    ),
                  ),
                ),
                buildVSpacer(15),
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFD9D9D9),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                      enabledBorder: InputBorder.none,
                    ),
                  ),
                ),
                buildVSpacer(30),
                AppButtons.primaryButton(
                  text: 'LOGIN',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AppBottomNavBar(),
                      ),
                    );
                  },
                ),
                buildVSpacer(45),
                const Text(
                  'Don’t have an Account yet? Sign Up Now',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
                buildVSpacer(16),
                AppButtons.secondaryButton(
                  text: 'REGISTER NOW',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUp(),
                      ),
                    )
                    ;
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
