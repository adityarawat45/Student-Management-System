import 'package:flutter/material.dart';
import 'package:flutter_application_4/ontapscreens/dmc.dart';
import 'package:flutter_application_4/ontapscreens/examform.dart';
import 'package:flutter_application_4/ontapscreens/fees.dart';
import 'package:flutter_application_4/ontapscreens/holidays.dart';
import 'package:flutter_application_4/ontapscreens/report.dart';
import 'package:flutter_application_4/ontapscreens/schedule.dart';
import 'package:flutter_application_4/ontapscreens/syllabus.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Session extends StatefulWidget {
  const Session({super.key});
  @override
  State<Session> createState() => _SessionState();
}

class _SessionState extends State<Session> {
  void _showModalBottom(context) {
    showModalBottomSheet(
        backgroundColor: Vx.blue500,
        context: context,
        elevation: 2.0,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        builder: (BuildContext context) {
          return const Settinsform();
        });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeightBox(20),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Examform()));
            },
            child: Container(
              height: 120,
              width: 370,
              decoration: BoxDecoration(
                color: Vx.red500,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Exam Form"
                          .text
                          .color(Vx.white)
                          .size(25)
                          .bold
                          .textStyle(GoogleFonts.tiltNeon())
                          .make()
                          .pOnly(top: 18),
                      "Click to see more details \nrelated to your exams form"
                          .text
                          .color(Vx.gray100)
                          .size(15)
                          .semiBold
                          .textStyle(GoogleFonts.tiltNeon())
                          .make(),
                    ],
                  ),
                  Image.asset("assets/session/exam.png", height: 95, width: 70),
                ],
              ),
            ).px16().pOnly(left: 4),
          ),
          const HeightBox(25),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Syllabus()));
            },
            child: Container(
              height: 120,
              width: 370,
              decoration: BoxDecoration(
                color: Vx.yellow400,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Syllabus"
                          .text
                          .color(Vx.white)
                          .size(25)
                          .bold
                          .textStyle(GoogleFonts.tiltNeon())
                          .make()
                          .pOnly(top: 18),
                      "Syllabus for current session\nand other sessions"
                          .text
                          .color(Vx.gray100)
                          .size(15)
                          .semiBold
                          .textStyle(GoogleFonts.tiltNeon())
                          .make(),
                    ],
                  ),
                  Image.asset("assets/session/checklist.png",
                      height: 95, width: 70),
                ],
              ),
            ).px16().pOnly(left: 4),
          ),
          const HeightBox(10),
          "Get your fee status\non your fingertips with ease!!"
              .text
              .color(Vx.red500)
              .size(30)
              .textStyle(GoogleFonts.lilitaOne())
              .make()
              .pOnly(top: 10, left: 20),
          const HeightBox(14),
          Card(
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: Vx.blue100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Schedule()));
                  },
                  child: Container(
                    height: 120,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Vx.blue400,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "assets/session/schedule.png",
                          height: 90,
                          width: 65,
                        ),
                        "Schedule"
                            .text
                            .color(Vx.white)
                            .size(18)
                            .bold
                            .textStyle(GoogleFonts.tiltNeon())
                            .make()
                            .pOnly(bottom: 5),
                      ],
                    ),
                  ).px12().py12(),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Fees()));
                  },
                  child: Container(
                    height: 120,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Vx.blue400,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "assets/session/fee.png",
                          height: 90,
                          width: 65,
                        ),
                        "Fees"
                            .text
                            .color(Vx.white)
                            .size(18)
                            .bold
                            .textStyle(GoogleFonts.tiltNeon())
                            .make()
                            .pOnly(bottom: 5),
                      ],
                    ),
                  ).px12().py12(),
                ),
              ],
            ),
          ).px12(),
          const HeightBox(14),
          Card(
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: Vx.blue100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const Holidays())));
                  },
                  child: Container(
                    height: 120,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Vx.blue400,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "assets/session/holiday.png",
                          height: 90,
                          width: 65,
                        ),
                        "Holidays list"
                            .text
                            .color(Vx.white)
                            .size(18)
                            .bold
                            .textStyle(GoogleFonts.tiltNeon())
                            .make()
                            .pOnly(bottom: 5),
                      ],
                    ),
                  ).px12().py12(),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Dmc()));
                  },
                  child: Container(
                    height: 120,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Vx.blue400,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "assets/session/test.png",
                          height: 90,
                          width: 65,
                        ),
                        "DMC"
                            .text
                            .color(Vx.white)
                            .size(18)
                            .bold
                            .textStyle(GoogleFonts.tiltNeon())
                            .make()
                            .pOnly(bottom: 5),
                      ],
                    ),
                  ).px12().py12(),
                ),
              ],
            ),
          ).px12(),
          const HeightBox(10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: ElevatedButton.icon(
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                      alignment: Alignment.center),
                  onPressed: () {
                    return _showModalBottom(context);
                  },
                  label: "Report issue"
                      .text
                      .semiBold
                      .textStyle(GoogleFonts.tiltNeon())
                      .make(),
                  icon: Image.asset(
                    "assets/session/think.png",
                    height: 25,
                    width: 20,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
