// ignore_for_file: file_names

import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/AuthServices/Authentication.dart';
import 'package:flutter_application_4/hanging_widgets/drawer_home.dart';
import 'package:flutter_application_4/screens/Attendencepg.dart';
import 'package:flutter_application_4/screens/HomePage.dart';
import 'package:flutter_application_4/screens/community.dart';
import 'package:flutter_application_4/screens/session.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Authentication auth = Authentication();
  // ignore: non_constant_identifier_names
  final Screens = [
    const Homepage(),
    const Attendencepg(),
    const Session(),
    const Community(),
  ];
  dynamic _currentindex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Vx.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: const Color.fromARGB(255, 217, 45, 45),
          title: "MMDU".text.xl4.textStyle(GoogleFonts.lilitaOne()).make(),
          actions: [
            InkWell(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Vx.white,
                      content: const Text(
                        "No Notifications to show",
                        style: TextStyle(color: Vx.black, fontSize: 14),
                      ),
                      behavior: SnackBarBehavior.floating,
                      margin: const EdgeInsets.only(bottom: 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  );
                },
                child: const Icon(Icons.notifications_active_outlined).px12()),
          ],
        ),
        drawer: const HomeDrawer(),
        body: Screens[_currentindex],
        bottomNavigationBar: CurvedNavigationBar(
          height: 55,
          animationCurve: Curves.decelerate,
          animationDuration: const Duration(milliseconds: 500),
          buttonBackgroundColor: Vx.red500,
          backgroundColor: Colors.transparent,
          color: const Color.fromARGB(255, 217, 45, 45),
          items: const [
            CurvedNavigationBarItem(
                child: Icon(
                  Icons.home_rounded,
                  color: Vx.white,
                  size: 23,
                ),
                label: 'Home',
                labelStyle: TextStyle(color: Vx.white)),
            CurvedNavigationBarItem(
                child: Icon(
                  CupertinoIcons.table,
                  color: Vx.white,
                  size: 23,
                ),
                label: 'Attendence',
                labelStyle: TextStyle(color: Vx.white)),
            CurvedNavigationBarItem(
                child: Icon(
                  Icons.calendar_month_rounded,
                  color: Vx.white,
                  size: 23,
                ),
                label: 'Session',
                labelStyle: TextStyle(color: Vx.white)),
            CurvedNavigationBarItem(
                child: Icon(
                  Icons.people_alt_rounded,
                  color: Vx.white,
                  size: 23,
                ),
                label: 'Community',
                labelStyle: TextStyle(color: Vx.white)),
          ],
          onTap: (value) {
            setState(() {
              _currentindex = value;
            });
          },
        ));
  }
}
