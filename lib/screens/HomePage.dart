// ignore_for_file: file_names, non_constant_identifier_names, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/AuthServices/Authentication.dart';
import 'package:flutter_application_4/hanging_widgets/BCA.dart';
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
          return SingleChildScrollView(
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
                  "Follow us on:"
                      .text
                      .color(Vx.red500)
                      .xl2
                      .textStyle(GoogleFonts.lilitaOne())
                      .make()
                      .px24(),
                  HeightBox(10),
                  Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Vx.red300,
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
                  bcaYT(),
                ]),
          );
        });
  }
}
