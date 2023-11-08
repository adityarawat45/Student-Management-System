import 'package:flutter/material.dart';
import 'package:flutter_application_4/ontapscreens/dailypunch.dart';
import 'package:flutter_application_4/ontapscreens/pdf.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Attendance extends StatefulWidget {
  const Attendance({super.key});

  @override
  State<Attendance> createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.shadowColor,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: context.theme.secondaryHeaderColor,
          title: "MMDU".text.xl4.color(context.theme.hintColor).textStyle(GoogleFonts.lilitaOne()).make(),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const HeightBox(10),
            "Attendance Record"
                .text
                .xl4
                .extraBold
                .color(context.primaryColor)
                .textStyle(GoogleFonts.tiltNeon())
                .makeCentered(),
            const HeightBox(10),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              color: context.cardColor,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                            height: 60,
                            width: 80,
                            decoration: BoxDecoration(
                              color: context.theme.hoverColor,
                              borderRadius: const BorderRadiusDirectional.only(
                                  bottomEnd: Radius.circular(18),
                                  bottomStart: Radius.circular(18),
                                  topEnd: Radius.circular(18),
                                  topStart: Radius.circular(18)),
                            ),
                            child: Column(
                              children: [
                                "BCA-301"
                                    .text
                                    .semiBold
                                    .textStyle(GoogleFonts.tiltNeon())
                                    .color(Vx.gray100)
                                    .makeCentered(),
                                "81.48%"
                                    .text
                                    .semiBold
                                    .textStyle(GoogleFonts.tiltNeon())
                                    .color(Vx.gray100)
                                    .makeCentered(),
                              ],
                            ).p8())
                        .p16(),
                    Container(
                            height: 60,
                            width: 80,
                            decoration:  BoxDecoration(
                              color: context.theme.hoverColor,
                              borderRadius:const BorderRadiusDirectional.only(
                                  bottomEnd: Radius.circular(18),
                                  bottomStart: Radius.circular(18),
                                  topEnd: Radius.circular(18),
                                  topStart: Radius.circular(18)),
                            ),
                            child: Column(
                              children: [
                                "BCA-302"
                                    .text
                                    .semiBold
                                    .textStyle(GoogleFonts.tiltNeon())
                                    .color(Vx.gray100)
                                    .makeCentered(),
                                "82.76%"
                                    .text
                                    .semiBold
                                    .textStyle(GoogleFonts.tiltNeon())
                                    .color(Vx.gray100)
                                    .makeCentered(),
                              ],
                            ).p8())
                        .pOnly(right: 16),
                    Container(
                            height: 60,
                            width: 80,
                            decoration:  BoxDecoration(
                              color: context.theme.hoverColor,
                              borderRadius: const BorderRadiusDirectional.only(
                                  bottomEnd: Radius.circular(18),
                                  bottomStart: Radius.circular(18),
                                  topEnd: Radius.circular(18),
                                  topStart: Radius.circular(18)),
                            ),
                            child: Column(
                              children: [
                                "BCA-303"
                                    .text
                                    .semiBold
                                    .textStyle(GoogleFonts.tiltNeon())
                                    .color(Vx.gray100)
                                    .makeCentered(),
                                "88.10"
                                    .text
                                    .semiBold
                                    .textStyle(GoogleFonts.tiltNeon())
                                    .color(Vx.gray100)
                                    .makeCentered(),
                              ],
                            ).p8())
                        .pOnly(right: 16),
                    Container(
                            height: 60,
                            width: 80,
                            decoration:  BoxDecoration(
                              color: context.theme.indicatorColor,
                              borderRadius: const BorderRadiusDirectional.only(
                                  bottomEnd: Radius.circular(18),
                                  bottomStart: Radius.circular(18),
                                  topEnd: Radius.circular(18),
                                  topStart: Radius.circular(18)),
                            ),
                            child: Column(
                              children: [
                                "BCA-304"
                                    .text
                                    .semiBold
                                    .textStyle(GoogleFonts.tiltNeon())
                                    .color(Vx.gray100)
                                    .makeCentered(),
                                "90.00%"
                                    .text
                                    .semiBold
                                    .textStyle(GoogleFonts.tiltNeon())
                                    .color(Vx.gray100)
                                    .makeCentered(),
                              ],
                            ).p8())
                        .pOnly(right: 16),
                    Container(
                            height: 60,
                            width: 80,
                            decoration:  BoxDecoration(
                              color: context.theme.hoverColor,
                              borderRadius: const BorderRadiusDirectional.only(
                                  bottomEnd: Radius.circular(18),
                                  bottomStart: Radius.circular(18),
                                  topEnd: Radius.circular(18),
                                  topStart: Radius.circular(18)),
                            ),
                            child: Column(
                              children: [
                                "BCA-305"
                                    .text
                                    .semiBold
                                    .textStyle(GoogleFonts.tiltNeon())
                                    .color(Vx.gray100)
                                    .makeCentered(),
                                "82.05%"
                                    .text
                                    .semiBold
                                    .textStyle(GoogleFonts.tiltNeon())
                                    .color(Vx.gray100)
                                    .makeCentered(),
                              ],
                            ).p8())
                        .pOnly(right: 16),
                    Container(
                            height: 60,
                            width: 80,
                            decoration: BoxDecoration(
                              color: context.theme.hoverColor,
                              borderRadius: const BorderRadiusDirectional.only(
                                  bottomEnd: Radius.circular(18),
                                  bottomStart: Radius.circular(18),
                                  topEnd: Radius.circular(18),
                                  topStart: Radius.circular(18)),
                            ),
                            child: Column(
                              children: [
                                "BCA-306"
                                    .text
                                    .semiBold
                                    .textStyle(GoogleFonts.tiltNeon())
                                    .color(Vx.gray100)
                                    .makeCentered(),
                                "88.89%"
                                    .text
                                    .semiBold
                                    .textStyle(GoogleFonts.tiltNeon())
                                    .color(Vx.gray100)
                                    .makeCentered(),
                              ],
                            ).p8())
                        .pOnly(right: 16),
                    Container(
                            height: 60,
                            width: 80,
                            decoration: BoxDecoration(
                              color: context.theme.indicatorColor,
                              borderRadius: const BorderRadiusDirectional.only(
                                  bottomEnd: Radius.circular(18),
                                  bottomStart: Radius.circular(18),
                                  topEnd: Radius.circular(18),
                                  topStart: Radius.circular(18)),
                            ),
                            child: Column(
                              children: [
                                "BCA-307"
                                    .text
                                    .semiBold
                                    .textStyle(GoogleFonts.tiltNeon())
                                    .color(Vx.gray100)
                                    .makeCentered(),
                                "94.12%"
                                    .text
                                    .semiBold
                                    .textStyle(GoogleFonts.tiltNeon())
                                    .color(Vx.gray100)
                                    .makeCentered(),
                              ],
                            ).p8())
                        .pOnly(right: 16),
                    Container(
                            height: 60,
                            width: 80,
                            decoration:  BoxDecoration(
                              color: context.theme.hoverColor,
                              borderRadius: const BorderRadiusDirectional.only(
                                  bottomEnd: Radius.circular(18),
                                  bottomStart: Radius.circular(18),
                                  topEnd: Radius.circular(18),
                                  topStart: Radius.circular(18)),
                            ),
                            child: Column(
                              children: [
                                "BCA-308"
                                    .text
                                    .semiBold
                                    .textStyle(GoogleFonts.tiltNeon())
                                    .color(Vx.gray100)
                                    .makeCentered(),
                                "87.50%"
                                    .text
                                    .semiBold
                                    .textStyle(GoogleFonts.tiltNeon())
                                    .color(Vx.gray100)
                                    .makeCentered(),
                              ],
                            ).p8())
                        .pOnly(right: 16),
                    Container(
                            height: 60,
                            width: 80,
                            decoration: BoxDecoration(
                              color: context.theme.hoverColor,
                              borderRadius: const BorderRadiusDirectional.only(
                                  bottomEnd: Radius.circular(18),
                                  bottomStart: Radius.circular(18),
                                  topEnd: Radius.circular(18),
                                  topStart: Radius.circular(18)),
                            ),
                            child: Column(
                              children: [
                                "NSS/NCC"
                                    .text
                                    .semiBold
                                    .textStyle(GoogleFonts.tiltNeon())
                                    .color(Vx.gray100)
                                    .makeCentered(),
                                "77.48%"
                                    .text
                                    .semiBold
                                    .textStyle(GoogleFonts.tiltNeon())
                                    .color(Vx.gray100)
                                    .makeCentered(),
                              ],
                            ).p8())
                        .pOnly(right: 16),
                  ],
                ),
              ),
            ).px12(),
            const HeightBox(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PDFScreen(
                                filePath: "assets/attendance.pdf")));
                  },
                  child: Container(
                    height: 40,
                    width: 95,
                    decoration: BoxDecoration(
                      color: context.canvasColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: "PDF"
                        .text
                        .color(context.theme.hintColor)
                        .size(18)
                        .bold
                        .textStyle(GoogleFonts.tiltNeon())
                        .makeCentered(),
                  ),
                ),
              ],
            ),
            const HeightBox(5),
                 Card(
                  elevation: 2.0,
                  color: context.theme.splashColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "-Green color indicates that your attendance is okay.".text.size(22).semiBold.color(context.primaryColor).textStyle(GoogleFonts.tiltNeon()).make(),
                      const HeightBox(8),
                      "-Red color indicates that your\nattendance is low.".text.size(22).semiBold.color(context.primaryColor).textStyle(GoogleFonts.tiltNeon()).make(),
                    ],
                    ).p24()
                 ).p24(),
                   InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Dailypunch()));
                      },
                      child: Container(
                        height: 120,
                        width: 380,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: context.canvasColor),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // const HeightBox(18),
                                "Daily Punch Record"
                                    .text
                                    .color(context.theme.hintColor)
                                    .size(25)
                                    .bold
                                    .textStyle(GoogleFonts.tiltNeon())
                                    .make()
                                    ,
                                "Shows punch record for\ndaily sessions"
                                    .text
                                    .color(context.theme.hintColor)
                                    .size(15)
                                    .semiBold
                                    .textStyle(GoogleFonts.tiltNeon())
                                    .make(),
                              ],
                            ).pOnly(bottom: 10),
                            Image.asset(
                              "assets/attendence/calendar.png",
                              height: 95,
                              width: 70,
                            ),
                          ],
                        ),
                      ).px16().py12(),
                    ),
          ],
        ));
  }
}
