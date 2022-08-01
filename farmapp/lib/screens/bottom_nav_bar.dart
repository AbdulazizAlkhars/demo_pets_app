import 'package:flutter/material.dart';
import 'package:farmapp/constant.dart';
import 'package:farmapp/screens/home_page.dart';
import 'package:farmapp/screens/profile_screen.dart';
import 'package:farmapp/screens/explore_screen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

//ignore_for_file: prefer_const_constructors
class BottomBar extends StatefulWidget {
  static const routeName = 'bottom-bar-screen';
  const BottomBar({key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;
  List page = [
    MyHomePage(),
    ExploreScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        page[_currentIndex],
        Positioned(
          top: MediaQuery.of(context).size.height * 0.90,
          left: 5,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: SizedBox(
              height: 60,
              width: 350,
              child: GNav(
                  onTabChange: (index) {
                    setState(() => _currentIndex = index);
                  },
                  rippleColor:
                      accentColor, // tab button ripple color when pressed
                  hoverColor: baseColor, // tab button hover color
                  haptic: true, // haptic feedback
                  // tabActiveBorder: Border.all(color: baseColor, width: 0),
                  // // tab button border
                  // tabBorder: Border.all(
                  //     color: accentColor, width: 0), // tab button border
                  curve: Curves.easeIn, // tab animation curves
                  duration:
                      Duration(milliseconds: 500), // tab animation duration
                  gap: 8, // the tab button gap between icon and text
                  color: secondaryTextColor, // unselected icon color
                  activeColor: baseColor, // selected icon and text color
                  iconSize: 32, // tab button icon size
                  // selected tab background color
                  tabBackgroundColor: accentColor.withOpacity(0.5),
                  padding: EdgeInsets.symmetric(
                      horizontal: 20, vertical: 5), // navigation bar padding
                  tabs: [
                    GButton(
                      icon: Icons.home_outlined,
                      text: 'Home',
                    ),
                    GButton(
                      icon: Icons.explore_outlined,
                      text: 'Explore',
                    ),
                    GButton(
                      icon: Icons.person_outline,
                      text: 'Profile',
                    ),
                  ]),
            ),
          ),
        ),
      ],
    );
  }
}
