

import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: BackButton(color: Color(0xFF1A9FB2),),
          title: Text('SETTINGS',style: TextStyle(fontSize: 16, color: Color(0xFF0C5C75)),),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:20,top: 30),
              child: Container(
                height: 82,
                width: 354,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color(0xFFFFFFFF),),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListTile(
                    leading: Image.asset('assets/images/image 83.png',height: 50,width: 50,),
                    title: Text('Preferences',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                    subtitle: Text('Manage your Preferences',style: TextStyle(fontSize: 12),),
                    trailing: Icon(Icons.arrow_forward_ios_sharp,color: Color(0xFF0C5C75),),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.only(left:20,top: 30),
              child: Container(
                height: 82,
                width: 354,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color(0xFFFFFFFF),),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListTile(
                    leading: Image.asset('assets/images/image 84.png',height: 50,width: 50,),
                    title: Text('Privacy Settings',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                    subtitle: Text('Manage your Preferences',style: TextStyle(fontSize: 12),),
                    trailing: Icon(Icons.arrow_forward_ios_sharp,color: Color(0xFF0C5C75),),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.only(left:20,top: 30),
              child: Container(
                height: 82,
                width: 354,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color(0xFFFFFFFF),),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListTile(
                    leading: Image.asset('assets/images/image 85.png',height: 50,width: 50,),
                    title: Text('App Settings',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                    subtitle: Text('Change App Settings',style: TextStyle(fontSize: 12),),
                    trailing: Icon(Icons.arrow_forward_ios_sharp,color: Color(0xFF0C5C75),),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
