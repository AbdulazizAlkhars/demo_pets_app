import 'package:flutter/material.dart';
import 'package:farmapp/screens/bottom_nav_bar.dart';
import 'package:farmapp/screens/home_page.dart';
import 'package:farmapp/screens/profile_screen.dart';
import 'package:farmapp/screens/explore_screen.dart';

//ignore_for_file: prefer_const_constructors
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Farm App',
      theme: ThemeData(
        fontFamily: 'Quicksand',
        textTheme: ThemeData.light().textTheme.copyWith(
              subtitle1: TextStyle(
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BottomBar(),
      routes: {
        ExploreScreen.routeName: (ctx) => ExploreScreen(),
        ProfileScreen.routeName: (ctx) => ProfileScreen(),
        BottomBar.routeName: (ctx) => BottomBar(),
        MyHomePage.routeName: (ctx) => MyHomePage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
