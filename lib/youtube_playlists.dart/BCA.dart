// ignore_for_file: file_names, camel_case_types

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/AuthServices/Authentication.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class bcaYT extends StatefulWidget {
  const bcaYT({super.key});

  @override
  State<bcaYT> createState() => _bcaYTState();
}

class _bcaYTState extends State<bcaYT> {
  Future<void> _launchurl(String url) async {
    final Uri uri = Uri.parse("https:/$url");
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can not launch url";
    }
  }

  final Authentication _auth = Authentication();
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User?>(context);
    return StreamBuilder<DocumentSnapshot>(
        stream: _auth.userDetails(user!.uid),
        builder: (context, snapshot) {
          dynamic course = snapshot.data?.get("course") ?? "NO data";
          // ignore: avoid_unnecessary_containers
          return Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const HeightBox(20),
                "See what's trending for "
                    .text
                    .xl4
                    .textStyle(GoogleFonts.lilitaOne())
                    .color(Vx.red500)
                    .make()
                    .px24(),
                "$course's grads !!"
                    .text
                    .xl3
                    .textStyle(GoogleFonts.lilitaOne())
                    .color(Vx.red500)
                    .make()
                    .px24(),
                const HeightBox(10),
                "#Youtube"
                    .text
                    .xl3
                    .textStyle(GoogleFonts.lilitaOne())
                    .color(Vx.black)
                    .make()
                    .px24(),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      InkWell(
                          onTap: () {
                            _launchurl(
                                "youtu.be/6M7jpiWJUXs?si=ZIUi_2lOIgSo-WRa");
                          },
                          child: Image.asset(
                            "assets/ytimages/dsa.jpg",
                            height: 180,
                            width: 300,
                          ).px16()),
                      InkWell(
                          onTap: () {
                            _launchurl(
                                "youtu.be/bj3rCZKbLgY?si=qMR1VVcqP7crybUK");
                          },
                          child: Image.asset(
                            "assets/ytimages/bca.jpg",
                            height: 180,
                            width: 300,
                          ).px16()),
                      InkWell(
                          onTap: () {
                            _launchurl(
                                "youtu.be/apGV9Kg7ics?si=87-5LJBMxTsZcgeZ");
                          },
                          child: Image.asset(
                            "assets/ytimages/github.jpg",
                            height: 180,
                            width: 320,
                          ).px16()),
                      InkWell(
                          onTap: () {
                            _launchurl(
                                "youtu.be/rb00g_CPY6U?si=ohCOIlSoVDYc8RDp");
                          },
                          child: Image.asset(
                            "assets/ytimages/mern.jpg",
                            height: 180,
                            width: 300,
                          ).px16()),
                      InkWell(
                          onTap: () {
                            _launchurl(
                                "youtu.be/xTSjk6Q6vrc?si=Ja7CmZrmGeAus3R4");
                          },
                          child: Image.asset(
                            "assets/ytimages/python.jpg",
                            height: 180,
                            width: 300,
                          ).px16()),
                      InkWell(
                          onTap: () {
                            _launchurl(
                                "youtu.be/QjG23rVyBNk?si=oGLTQkNuNVTvDibL");
                          },
                          child: Image.asset(
                            "assets/ytimages/kmm.jpg",
                            height: 180,
                            width: 300,
                          ).px16()),
                      InkWell(
                          onTap: () {
                            _launchurl(
                                "youtu.be/Z27llwBA0Uw?si=RurABV-xWdbfX2Wy");
                          },
                          child: Image.asset(
                            "assets/ytimages/ai.jpg",
                            height: 160,
                            width: 264,
                          ).px16()),
                    ],
                  ),
                ),
                "#Articles"
                    .text
                    .xl3
                    .textStyle(GoogleFonts.lilitaOne())
                    .color(Vx.black)
                    .make()
                    .px24(),
              ],
            ),
          );
        });
  }
}
