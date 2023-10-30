import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/AuthServices/Authentication.dart';
import 'package:flutter_application_4/ontapscreens/pdf.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';

class Syllabus extends StatefulWidget {
  const Syllabus({super.key});

  @override
  State<Syllabus> createState() => _SyllabusState();
}

class _SyllabusState extends State<Syllabus> {
  final Authentication auth = Authentication();

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User?>(context);
    return StreamBuilder<DocumentSnapshot>(
        stream: auth.userDetails(user!.uid),
        builder: (context, snapshot) {
          String course = snapshot.data?.get("course") ?? " ";
          return Scaffold(
              appBar: AppBar(
                elevation: 0.0,
                backgroundColor: const Color.fromARGB(255, 217, 45, 45),
                title:
                    "MMDU".text.xl4.textStyle(GoogleFonts.lilitaOne()).make(),
              ),
              body: Container(
                height: 500,
                decoration: const BoxDecoration(
                  color: Vx.white,
                ),
                child: Card(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.only(
                                bottomEnd: Radius.circular(80),
                                bottomStart: Radius.circular(80),
                                topEnd: Radius.circular(80),
                                topStart: Radius.circular(80))),
                        color: const Color.fromARGB(255, 217, 45, 45),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const HeightBox(20),
                            "Semesters list ($course)"
                                .text
                                .semiBold
                                .textStyle(GoogleFonts.tiltNeon())
                                .size(24)
                                .color(Vx.white)
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
                                                                "assets/syllabus/first.pdf")));
                                          },
                                          child: Image.asset(
                                            "assets/syllabus/number-one.png",
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
                                                        const PDFScreen(filePath: "assets/syllabus/third.pdf",
                                                            )));          
                                          },
                                          child: Image.asset(
                                            "assets/syllabus/number-3.png",
                                            height: 80,
                                            width: 80,
                                          )),
                                      const HeightBox(18),
                                      InkWell(
                                          onTap: () {
                                           
                                          },
                                          child: Image.asset(
                                            "assets/syllabus/number-5.png",
                                            height: 80,
                                            width: 80,
                                          )),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      InkWell(
                                          onTap: () {
                                            // Navigator.push(
                                            //     context,
                                            //     MaterialPageRoute(
                                            //         builder: (context) =>
                                            //             const PDFScreen(
                                            //                 filePath:
                                            //                     "assets/schedule/B.pdf")));
                                          },
                                          child: Image.asset(
                                            "assets/syllabus/number-2.png",
                                            height: 80,
                                            width: 80,
                                          )),
                                      const HeightBox(18),
                                      InkWell(
                                          onTap: () {
                                            // Navigator.push(
                                            //     context,
                                            //     MaterialPageRoute(
                                            //         builder: (context) =>
                                            //             const PDFScreen(
                                            //                 filePath:
                                            //                     "assets/schedule/D.pdf")));
                                          },
                                          child: Image.asset(
                                            "assets/syllabus/number-four.png",
                                            height: 80,
                                            width: 80,
                                          )),
                                      const HeightBox(18),
                                      InkWell(
                                          onTap: () {
                                            // Navigator.push(
                                            //     context,
                                            //     MaterialPageRoute(
                                            //         builder: (context) =>
                                            //             const PDFScreen(
                                            //                 filePath:
                                            //                     "assets/schedule/F.pdf")));
                                          },
                                          child: Image.asset(
                                            "assets/syllabus/six.png",
                                            height: 80,
                                            width: 80,
                                          )
                                          ),
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
