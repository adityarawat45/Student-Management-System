import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/AuthServices/Authentication.dart';
import 'package:flutter_application_4/ontapscreens/pdf.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';

class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  final Authentication auth = Authentication();

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User?>(context);
    return StreamBuilder<DocumentSnapshot>(
        stream: auth.userDetails(user!.uid),
        builder: (context, snapshot) {
          String sem = snapshot.data?.get("semester") ?? " ";
          String course = snapshot.data?.get("course") ?? " ";
          return Scaffold(
            backgroundColor: context.theme.shadowColor,
              appBar: AppBar(
                elevation: 0.0,
                backgroundColor: context.theme.secondaryHeaderColor,
                title:
                    "MMDU".text.xl4.color(context.theme.hintColor).textStyle(GoogleFonts.lilitaOne()).make(),
              ),
              body: Container(
                height: 500,
                decoration:  BoxDecoration(
                  color: context.theme.shadowColor,
                ),
                child: Card(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.only(
                                bottomEnd: Radius.circular(80),
                                bottomStart: Radius.circular(80),
                                topEnd: Radius.circular(80),
                                topStart: Radius.circular(80))),
                        color: context.theme.hoverColor,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const HeightBox(20),
                            "Section list ($course,Sem-$sem)"
                                .text
                                .semiBold
                                .textStyle(GoogleFonts.tiltNeon())
                                .size(24)
                                .color(context.theme.hintColor)
                                .makeCentered()
                                .pOnly(top: 8),
                            const HeightBox(20),
                            SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const PDFScreen(
                                                            filePath:
                                                                "assets/schedule/A.pdf")));
                                          },
                                          child: Image.asset(
                                            "assets/schedule/letter-a.png",
                                            height: 80,
                                            width: 80,
                                          )),
                                      const HeightBox(18),
                                      InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const PDFScreen(
                                                            filePath:
                                                                "assets/schedule/C.pdf")));
                                          },
                                          child: Image.asset(
                                            "assets/schedule/letter-c.png",
                                            height: 80,
                                            width: 80,
                                          )),
                                      const HeightBox(18),
                                      InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const PDFScreen(
                                                            filePath:
                                                                "assets/schedule/E.pdf")));
                                          },
                                          child: Image.asset(
                                            "assets/schedule/letter-e.png",
                                            height: 80,
                                            width: 80,
                                          )),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const PDFScreen(
                                                            filePath:
                                                                "assets/schedule/B.pdf")));
                                          },
                                          child: Image.asset(
                                            "assets/schedule/letter-b.png",
                                            height: 80,
                                            width: 80,
                                          )),
                                      const HeightBox(18),
                                      InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const PDFScreen(
                                                            filePath:
                                                                "assets/schedule/D.pdf")));
                                          },
                                          child: Image.asset(
                                            "assets/schedule/letter-d.png",
                                            height: 80,
                                            width: 80,
                                          )),
                                      const HeightBox(18),
                                      InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const PDFScreen(
                                                            filePath:
                                                                "assets/schedule/F.pdf")));
                                          },
                                          child: Image.asset(
                                            "assets/schedule/letter-f.png",
                                            height: 80,
                                            width: 80,
                                          )),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ).pOnly(bottom: 40))
                    .px16()
                    .py24(),
              ));
        });
  }
}
