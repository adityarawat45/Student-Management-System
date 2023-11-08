// ignore_for_file: file_names

import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/AuthServices/Authentication.dart';
import 'package:flutter_application_4/hanging_widgets/drawer_home.dart';
import 'package:flutter_application_4/ontapscreens/notifications.dart';
import 'package:flutter_application_4/screens/Attendencepg.dart';
import 'package:flutter_application_4/screens/HomePage.dart';
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
    
  ];
  dynamic _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.theme.shadowColor,
        appBar: AppBar( 
          elevation: 0.0,
          backgroundColor: context.theme.secondaryHeaderColor,
          title: "MMDU".text.xl4.color(context.theme.hintColor).textStyle(GoogleFonts.lilitaOne()).make(),
           iconTheme: IconThemeData(color: context.theme.hintColor), 
          actions: [
            InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Notifications();
                  }));
                },
                child:  Icon(Icons.notifications_active_outlined,color: context.theme.hintColor).px12()),
          ],
        ),
        drawer: HomeDrawer(),
        body: Screens[_currentindex],
        bottomNavigationBar: CurvedNavigationBar(
          height: 55,
          animationCurve: Curves.decelerate,
          animationDuration: const Duration(milliseconds: 500),
          buttonBackgroundColor: context.theme.secondaryHeaderColor,
          backgroundColor: context.theme.shadowColor,
          color: context.theme.secondaryHeaderColor,
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
           
          ],
          onTap: (value) {
            setState(() {
              _currentindex = value;
            });
          },
        ));
  }
}
