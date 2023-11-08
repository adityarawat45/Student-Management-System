// ignore_for_file: file_names, non_constant_identifier_names, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/AuthServices/Authentication.dart';
import 'package:flutter_application_4/ontapscreens/hostel.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<String> Videoids = [
    'ZIUi_2IOIgSo',
    'qMR1VVcqP7c',
    '87-5LJBMxTs',
    'Ja7CmZrmGeA',
    'ohCOIISoVDY',
    'oGLTQkNuNVT',
    'RurABV-xWdb',
  ];
  final yt = YoutubeExplode();
  final List<Image> CarouselPics = [
    Image.asset("assets/carrousel1.jpg"),
    Image.asset("assets/carrousel2.jpg"),
    Image.asset("assets/carrousel3.jpg"),
    Image.asset("assets/carrousel4.jpg"),
  ];
  Future<void> _launchurl(String url) async {
    final Uri uri = Uri.parse("https:/$url");
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can not launch url";
    }
  }

  final Authentication auth = Authentication();
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User?>(context);
    return StreamBuilder<DocumentSnapshot>(
        stream: auth.userDetails(user!.uid),
        builder: (context, snapshot) {
          // final course = snapshot.data?.get("course") ?? "(No Details)";
          return Scaffold(
            backgroundColor: context.theme.shadowColor,
            floatingActionButton: FloatingActionButton(
              elevation: 2.0,
              onPressed: () {
                auth.UserSignOut(); // Add your sign out logic here
              },
              child: Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
              backgroundColor: context.theme.secondaryHeaderColor,
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
            body: SingleChildScrollView(
              clipBehavior: Clip.antiAlias,
              scrollDirection: Axis.vertical,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                        aspectRatio: 24 / 9,
                        viewportFraction: 0.8,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 4),
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 1800),
                        autoPlayCurve: Curves.decelerate,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                      ),
                      items: CarouselPics,
                    ),
                    HeightBox(10),
                    Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: context.canvasColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                _launchurl(
                                    "www.instagram.com/mmdumullana/?igshid=YmMyMTA2M2Y%3D");
                              },
                              child: Image.asset(
                                "assets/instagram.png",
                                height: 39,
                                width: 39,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                _launchurl("www.facebook.com/MMDUMullana/");
                              },
                              child: Image.asset(
                                "assets/facebook.png",
                                height: 40,
                                width: 40,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                _launchurl(
                                    "www.linkedin.com/school/maharishi-markandeshwar-university-mullana");
                              },
                              child: Image.asset(
                                "assets/linkedin.png",
                                height: 45,
                                width: 45,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                _launchurl(
                                    "www.youtube.com/MaharishiMarkandeshwarUniversityMullana");
                              },
                              child: Image.asset(
                                "assets/youtube.png",
                                height: 40,
                                width: 40,
                              ),
                            ),
                          ],
                        ).pOnly(
                          top: 7,
                          bottom: 7,
                        )).px12(),
                    HeightBox(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            _launchurl("/erp.mmumullana.org/");
                          },
                          child: Container(
                            height: 120,
                            width: 130,
                            decoration: BoxDecoration(
                                color: context.canvasColor,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  "assets/internet.png",
                                  height: 90,
                                  width: 65,
                                ),
                                "ERP Portal"
                                    .text
                                    .color(context.theme.hintColor)
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
                            _launchurl("/hartrans.gov.in/bus-passes/");
                          },
                          child: Container(
                            height: 120,
                            width: 130,
                            decoration: BoxDecoration(
                                color: context.canvasColor,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  "assets/id-card.png",
                                  height: 90,
                                  width: 65,
                                ),
                                "Bus Pass"
                                    .text
                                    .color(context.theme.hintColor)
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
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Hostel()));
                      },
                      child: Container(
                        width: 390,
                        height: 110,
                        decoration: BoxDecoration(
                          color: context.theme.hoverColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          // crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                "Hostel"
                                    .text
                                    .color(context.theme.hintColor)
                                    .size(25)
                                    .bold
                                    .textStyle(GoogleFonts.tiltNeon())
                                    .make()
                                    .pOnly(top: 18),
                                "Apply for hostel or,request\nfor a hostel change."
                                    .text
                                    .color(context.theme.hintColor)
                                    .size(15)
                                    .semiBold
                                    .textStyle(GoogleFonts.tiltNeon())
                                    .make(),
                              ],
                            ),
                            Image.asset("assets/hostel.png",
                                height: 95, width: 70),
                          ],
                        ),
                      ).p16(),
                    ),
                    InkWell(
                      onTap: () {
                         ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                backgroundColor: Vx.blue500,
                                content: const Text(
                                  "This feature will be available soon",
                                  style:
                                      TextStyle(color: Vx.white, fontSize: 14),
                                ),
                                behavior: SnackBarBehavior.floating,
                                margin: const EdgeInsets.only(bottom: 40),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            );
                      },
                      child: Container(
                        width: 390,
                        height: 110,
                        decoration: BoxDecoration(
                          color: context.cardColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          // crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                "Course"
                                    .text
                                    .color(context.theme.hintColor)
                                    .size(25)
                                    .bold
                                    .textStyle(GoogleFonts.tiltNeon())
                                    .make()
                                    .pOnly(top: 18),
                                "Apply for masters or,any\nother available course."
                                    .text
                                    .color(context.theme.hintColor)
                                    .size(15)
                                    .semiBold
                                    .textStyle(GoogleFonts.tiltNeon())
                                    .make(),
                              ],
                            ),
                            Image.asset("assets/online-course.png",
                                height: 95, width: 70),
                          ],
                        ),
                      ).p16(),
                    ),
                  ]),
            ),
          );
        });
  }
}
