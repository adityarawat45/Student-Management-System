// ignore_for_file: file_nam, file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/AuthServices/Authentication.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';

class Attendencepg extends StatefulWidget {
  const Attendencepg({super.key});
  @override
  State<Attendencepg> createState() => _AttendencepgState();
}

class _AttendencepgState extends State<Attendencepg> {
  final Authentication auth = Authentication();
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User?>(context);
    return StreamBuilder<DocumentSnapshot>(
        stream: auth.userDetails(user!.uid),
        builder: (context, snapshot) {
          final rollNo = snapshot.data?.get("rollNo") ?? "";
          final name = snapshot.data?.get("name") ?? "";
          final course = snapshot.data?.get("course");
          final semester = snapshot.data?.get("semester");
          return  SingleChildScrollView(
            child: Column(             
              crossAxisAlignment: CrossAxisAlignment.start, 
              children: [
                  Card(
                    elevation: 2,
                    color: Vx.gray200,
                    shape: 
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                     const HeightBox(10),
                      "Hey, $name!".text.color(Vx.red500).size(28).textStyle(GoogleFonts.lilitaOne()).make().pOnly(left: 18),
                      "$rollNo, $course, $semester-sem".text.color(Vx.gray800).size(18).bold.textStyle(GoogleFonts.tiltNeon()).make().pOnly(left:18,top:4),
                      Container(
                        height: 120,
                        width: 370,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Vx.yellow400
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(mainAxisAlignment: MainAxisAlignment.center,
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      // const HeightBox(18),
                                     "Attendance Record" .text
                        .color(Vx.white)
                        .size(25)
                        .bold
                        .textStyle(GoogleFonts.tiltNeon())
                        .make().pOnly(left: 10),
                                     "Shows attendence record for \ncurrent session "
                        .text
                        .color(Vx.gray100)
                        .size(15)
                        .semiBold
                        .textStyle(GoogleFonts.tiltNeon())
                        .make(),
                                  ],).pOnly(bottom: 10),
                        Image.asset("assets/attendence/attendance.png",height: 95,width: 70,),
                                ],
                              ),
                      ).px16().py16(),
                        ],
                      ),
                  ).p16(),
                    Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    elevation: 2,
                    color: Vx.gray200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const HeightBox(20),
                      "-As per University norms,min. 90%\nattendance is compulsory".text.color(Vx.red500).size(18).textStyle(GoogleFonts.lilitaOne()).make().pOnly(bottom: 3,left: 15),
                      "-Maximum limit of condonation is 10%\nof total lectures delivered".text.color(Vx.red500).size(18).textStyle(GoogleFonts.lilitaOne()).make().pOnly(bottom: 3,left:15),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                          Container(
                      height: 150,
                      width: 145,
                      decoration: BoxDecoration(
                          color: Vx.blue400,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "assets/attendence/calendar.png",
                            height: 90,
                            width: 65,
                          ),
                          "Daily punch\nrecord"
                              .text
                              .color(Vx.white)
                              .size(18)
                              .bold
                              .textStyle(GoogleFonts.tiltNeon())
                              .make()
                              .pOnly(bottom: 5),
                        ],
                      ),).px20().py12(),
                                    Container(
                      height: 150,
                      width: 145,
                      decoration: BoxDecoration(
                          color: Vx.blue400,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "assets/attendence/application.png",
                            height: 90,
                            width: 65,
                          ),
                          "Upload leave\napplication"
                              .text
                              .color(Vx.white)
                              .size(18)
                              .bold
                              .textStyle(GoogleFonts.tiltNeon())
                              .make()
                              .pOnly(bottom: 5),
                           ],
                          ),
                        ).px20().py12(),
                       ],
                      ),
                      ],).pOnly(bottom: 10),
                    ).px16(),
                   Container(
              width: 390,
              height: 110,
              decoration: BoxDecoration(
                color: Vx.red500,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "Help Desk"
                        .text
                        .color(Vx.white)
                        .size(25)
                        .bold
                        .textStyle(GoogleFonts.tiltNeon())
                        .make()
                        .pOnly(top: 18),
                    "Report error in your attendence,\nor raise a report"
                        .text
                        .color(Vx.gray100)
                        .size(15)
                        .semiBold
                        .textStyle(GoogleFonts.tiltNeon())
                        .make(),
                ],
                ),
                Image.asset("assets/attendence/help-desk.png", height: 95, width: 70),
              ],
            ),
              ).p16(),
                 
              ]          
            ),          
          );
    });
  }
}