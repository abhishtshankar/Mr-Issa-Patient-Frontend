import 'package:flutter/material.dart';
import 'package:patient/widget/app_widgets.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<Map<String, String>> userData = [
    {'title': 'Nina Johnson', 'subtitle': 'Have you Checked my Pulse Rate??'},
    {'title': 'John Davis', 'subtitle': 'Hey Sir! I need your Help...'},
    {'title': 'Nina Johnson', 'subtitle': 'Have you Checked my Pulse Rate??'},
    {'title': 'Nina Johnson', 'subtitle': 'Have you Checked my Pulse Rate??'},
    {'title': 'Nina Johnson', 'subtitle': 'Have you Checked my Pulse Rate??'},
    {'title': 'John Davis', 'subtitle': 'Hey Sir! I need your Help...'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 60,right:20,bottom: 30),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xFFEEEEEE),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Color(0xFF1A9FB2),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                SizedBox(width: 32,),
                Row(
                  children: [
                    Text(
                      'CHAT',
                      style: TextStyle(fontSize:15,fontWeight:FontWeight.bold,color: Colors.black),
                    ),
                    SizedBox(width: 180,),
                    IconButton(
                      icon: Icon(Icons.more_vert_sharp),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left:8),
                      child: Row(
                        children: [
                          Icon(Icons.search),
                          SizedBox(width: 18),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xC2BBDFE8),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/images/image 81.png', width: 24, height: 24),
                      SizedBox(width: 8),
                      Text(
                        'STAFF',
                        style: TextStyle(color:Color( 0xFF1A9FB2),),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.arrow_drop_down, color:Color( 0xFF1A9FB2),),
                    ],
                  ),
                ),
                buildHSpacer(40),

                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xCBF5958C),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/images/image 73.png', width: 24, height: 24),
                      SizedBox(width: 8),
                      Text(
                        'CENTRE1',
                        style: TextStyle(color: Color( 0xFFED4040),),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.arrow_drop_down, color: Color( 0xFFED4040),),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: userData.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/Ellipse 3.png'),
                  ),
                  title: Text(
                    userData[index]['title']!,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(userData[index]['subtitle']!),
                  onTap: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}