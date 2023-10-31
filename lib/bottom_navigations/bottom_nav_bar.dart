import 'package:flutter/material.dart';
import 'package:patient/bottom_navigations/app_drawer.dart';
import 'package:patient/home_screen.dart';
import 'package:patient/intake_screen.dart';
import 'package:patient/intake_screen_skip.dart';
import 'package:patient/scheduleScreen.dart';
import 'package:patient/widget/app_colors.dart';

import 'my_profile.dart';

class AppBottomNavBar extends StatefulWidget {
  int? index;
AppBottomNavBar({
  this.index,
    super.key,
  });

  @override
  State<AppBottomNavBar> createState() => _AppBottomNavBarState();
}

class _AppBottomNavBarState extends State<AppBottomNavBar> {
  // GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  final List<Widget> _body = [
     HomeScreen(),
    IntakeScreen(),
    ScheduleScreen(),
    MyProfileScreen(),
  ];
  late int _selectedIndex;

  @override
  void initState() {
    _selectedIndex = widget.index??0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      body: _body[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(31),
            topRight: Radius.circular(31),
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black.withOpacity(0.07),
              blurRadius: 10,
              offset: const Offset(0, -10),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(31),
            topRight: Radius.circular(31),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            onTap: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            selectedItemColor: AppColors.kPrimaryColor,
            unselectedItemColor: AppColors.kButtonBackground1,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: (_selectedIndex == 0)
                    ? Image.asset('assets/icons/home_selected.png')
                    : Image.asset('assets/icons/home_unselected.png'),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: (_selectedIndex == 1)
                    ? Image.asset('assets/icons/employment_info_selected.png')
                    : Image.asset(
                        'assets/icons/employment_info_unselected.png'),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: (_selectedIndex == 2)
                    ? Image.asset('assets/icons/assigned_patient_selected.png')
                    : Image.asset(
                        'assets/icons/assigned_patient_unselected.png'),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: (_selectedIndex == 3)
                    ? Image.asset('assets/icons/profile_selected.png')
                    : Image.asset('assets/icons/profile_unselected.png'),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
