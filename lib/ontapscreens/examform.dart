import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/AuthServices/Authentication.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';

class Examform extends StatefulWidget {
  const Examform({super.key});
  @override
  State<Examform> createState() => _ExamformState();
}

class _ExamformState extends State<Examform> {
  final Authentication auth = Authentication();

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User?>(context);
    return StreamBuilder<DocumentSnapshot>(
        stream: auth.userDetails(user!.uid),
        builder: (context, snapshot) {
          final String name = snapshot.data?.get("name")?? " ";
          final String rollNo = snapshot.data?.get("rollNo")?? " ";
          final String course = snapshot.data?.get("course")?? " ";
          final String semester = snapshot.data?.get("semester")?? " ";
          return Scaffold(
            appBar: AppBar(
              elevation: 0.0,
              backgroundColor: const Color.fromARGB(255, 217, 45, 45),
              title: "MMDU".text.xl4.textStyle(GoogleFonts.lilitaOne()).make(),
            ),
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                 const  HeightBox(10),
                  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                    color: Vx.blue500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children:[
                       const HeightBox(8),
                        "Exam form of".text.color(Vx.white).size(32).textStyle(GoogleFonts.lilitaOne()).make().pOnly(left: 18),
                        "$name, $rollNo, $course, sem-$semester".text.semiBold.color(Vx.white).size(20).textStyle(GoogleFonts.tiltNeon()).make().pOnly(left: 18),
                        
                        Container(
                          height: 180,
                          width: 350,
                          decoration: BoxDecoration(color: Vx.yellow400,
                          borderRadius: BorderRadius.circular(25),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              "December, 2023\n(Technical-I)".text.color(Vx.white).size(25).lg.textStyle(GoogleFonts.lilitaOne()).make().px16().pOnly(top: 6),
                              "Regular Examination[Exam Fee ₹300]".text.color(Vx.white).semiBold.size(20).textStyle(GoogleFonts.tiltNeon()).make().px16().pOnly(top: 6),
                              "Regular Examination Form".text.color(Vx.white).size(14).semiBold.textStyle(GoogleFonts.tiltNeon()).make().px16().pOnly(top:2,bottom: 2),
                            ],
                          ),
                        ).px12().py12(),
                        Container(
                          height: 180,
                          width: 350,
                          decoration: BoxDecoration(color: const Color.fromARGB(255, 255, 145, 54),
                          borderRadius: BorderRadius.circular(25),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              "December, 2023\n(Technical-I)".text.color(Vx.white).size(25).lg.textStyle(GoogleFonts.lilitaOne()).make().px16().pOnly(top: 6),
                              "Supplementary Examination[Exam Fee ₹2300]".text.color(Vx.white).semiBold.size(20).textStyle(GoogleFonts.tiltNeon()).make().px16().pOnly(top: 6),
                              "Additional charges of more than\none chance : ₹500 ".text.color(Vx.white).size(14).semiBold.textStyle(GoogleFonts.tiltNeon()).make().px16().pOnly(top:2,bottom: 2),
                            ],
                          ),
                        ).px12().py12(),
                      ],
                    ).pOnly(bottom: 20)
                  ).px12(),
                 const HeightBox(10),
                 Image.asset("assets/search.png",fit: BoxFit.fitWidth,),
                 "No exam form ".text.color(Vx.black).size(18).textStyle(GoogleFonts.roboto()).makeCentered(),
                 "data currently".text.color(Vx.black).size(18).textStyle(GoogleFonts.roboto()).makeCentered(),
                const HeightBox(20), 
                ],
              ),
            ), 
          );
        });
  }
}
