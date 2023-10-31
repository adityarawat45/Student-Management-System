import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
class Dailypunch extends StatefulWidget {
  const Dailypunch({super.key});

  @override
  State<Dailypunch> createState() => _DailypunchState();
}

class _DailypunchState extends State<Dailypunch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
          backgroundColor: const Color.fromARGB(255, 217, 45, 45),
          title: "MMDU".text.xl4.textStyle(GoogleFonts.lilitaOne()).make(),
      ),
      body: Container(
        height: 700,
        color: Vx.white,
        child: Card(
          color: Vx.blue500,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
         child: 
         SingleChildScrollView(
          scrollDirection: Axis.horizontal,
           child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                  color: Vx.red400,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        "29 oct".text.color(Vx.white).bold.size(25).textStyle(GoogleFonts.tiltNeon()).makeCentered(),
                        const HeightBox(15),
                        Image.asset("assets/checked.png",height: 40,width: 40,),
                        const HeightBox(5),
                        "BCA-306".text.color(Vx.white).bold.size(15).textStyle(GoogleFonts.tiltNeon()).makeCentered(),
                        const HeightBox(20),
                        Image.asset("assets/checked.png",height: 40,width: 40,),
                        const HeightBox(5),
                        "BCA-305".text.color(Vx.white).bold.size(15).textStyle(GoogleFonts.tiltNeon()).makeCentered(),
                        const HeightBox(20),
                        Image.asset("assets/checked.png",height: 40,width: 40,),
                        const HeightBox(5),
                        "BCA-302".text.color(Vx.white).bold.size(15).textStyle(GoogleFonts.tiltNeon()).makeCentered(),
                        const HeightBox(20),
                        Image.asset("assets/checked.png",height: 40,width: 40,),
                        const HeightBox(5),
                        "NSS".text.color(Vx.white).bold.size(15).textStyle(GoogleFonts.tiltNeon()).makeCentered(),
                        const HeightBox(20), 
                      ],
                    ).px12().pOnly(top: 8),
                  ),
                ).p12(),
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                  color: Vx.red400,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        "28 oct".text.color(Vx.white).bold.size(25).textStyle(GoogleFonts.tiltNeon()).makeCentered(),
                        const HeightBox(15),
                        Image.asset("assets/checked.png",height: 40,width: 40,),
                        const HeightBox(5),
                        "BCA-303".text.color(Vx.white).bold.size(15).textStyle(GoogleFonts.tiltNeon()).makeCentered(),
                        const HeightBox(20),
                        Image.asset("assets/checked.png",height: 40,width: 40,),
                        const HeightBox(5),
                        "BCA-308".text.color(Vx.white).bold.size(15).textStyle(GoogleFonts.tiltNeon()).makeCentered(),
                        const HeightBox(20),
                        Image.asset("assets/checked.png",height: 40,width: 40,),
                        const HeightBox(5),
                        "BCA-304-T".text.color(Vx.white).bold.size(15).textStyle(GoogleFonts.tiltNeon()).makeCentered(),
                        const HeightBox(20),
                        Image.asset("assets/checked.png",height: 40,width: 40,),
                        const HeightBox(5),
                        "BCA-305".text.color(Vx.white).bold.size(15).textStyle(GoogleFonts.tiltNeon()).makeCentered(),
                        const HeightBox(20), 
                        Image.asset("assets/checked.png",height: 40,width: 40,),
                        const HeightBox(5),
                        "BCA-301".text.color(Vx.white).bold.size(15).textStyle(GoogleFonts.tiltNeon()).makeCentered(),
                        const HeightBox(20), 
                      ],
                    ).px12().pOnly(top: 8),
                  ),
                ).p12(),
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                  color: Vx.red400,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        "27 oct".text.color(Vx.white).bold.size(25).textStyle(GoogleFonts.tiltNeon()).makeCentered(),
                        const HeightBox(15),
                        Image.asset("assets/checked.png",height: 40,width: 40,),
                        const HeightBox(5),
                        "BCA-306".text.color(Vx.white).bold.size(15).textStyle(GoogleFonts.tiltNeon()).makeCentered(),
                        const HeightBox(20),
                        Image.asset("assets/checked.png",height: 40,width: 40,),
                        const HeightBox(5),
                        "BCA-305".text.color(Vx.white).bold.size(15).textStyle(GoogleFonts.tiltNeon()).makeCentered(),
                        const HeightBox(20),
                        Image.asset("assets/checked.png",height: 40,width: 40,),
                        const HeightBox(5),
                        "BCA-302".text.color(Vx.white).bold.size(15).textStyle(GoogleFonts.tiltNeon()).makeCentered(),
                        const HeightBox(20),
                        Image.asset("assets/cross.png",height: 40,width: 40,),
                        const HeightBox(5),
                        "NSS".text.color(Vx.white).bold.size(15).textStyle(GoogleFonts.tiltNeon()).makeCentered(),
                        const HeightBox(20), 
                      ],
                    ).px12().pOnly(top: 8),
                  ),
                ).p12(),
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                  color: Vx.red400,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        "25 oct".text.color(Vx.white).bold.size(25).textStyle(GoogleFonts.tiltNeon()).makeCentered(),
                        const HeightBox(15),
                        Image.asset("assets/checked.png",height: 40,width: 40,),
                        const HeightBox(5),
                        "BCA-301".text.color(Vx.white).bold.size(15).textStyle(GoogleFonts.tiltNeon()).makeCentered(),
                        const HeightBox(20),
                        Image.asset("assets/checked.png",height: 40,width: 40,),
                        const HeightBox(5),
                        "BCA-307".text.color(Vx.white).bold.size(15).textStyle(GoogleFonts.tiltNeon()).makeCentered(),
                        const HeightBox(20),
                        Image.asset("assets/checked.png",height: 40,width: 40,),
                        const HeightBox(5),
                        "Project".text.color(Vx.white).bold.size(15).textStyle(GoogleFonts.tiltNeon()).makeCentered(),
                        const HeightBox(20),
                        Image.asset("assets/checked.png",height: 40,width: 40,),
                        const HeightBox(5),
                        "BCA-305".text.color(Vx.white).bold.size(15).textStyle(GoogleFonts.tiltNeon()).makeCentered(),
                        const HeightBox(20), 
                        Image.asset("assets/checked.png",height: 40,width: 40,),
                        const HeightBox(5),
                        "BCA-303".text.color(Vx.white).bold.size(15).textStyle(GoogleFonts.tiltNeon()).makeCentered(),
                        const HeightBox(20), 
                        Image.asset("assets/checked.png",height: 40,width: 40,),
                        const HeightBox(5),
                        "BCA-302".text.color(Vx.white).bold.size(15).textStyle(GoogleFonts.tiltNeon()).makeCentered(),
                        const HeightBox(20), 
                      ],
                    ).px12().pOnly(top: 8),
                  ),
                ).p12(),
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                  color: Vx.red400,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        "24 oct".text.color(Vx.white).bold.size(25).textStyle(GoogleFonts.tiltNeon()).makeCentered(),
                        const HeightBox(15),
                        Image.asset("assets/cross.png",height: 40,width: 40,),
                        const HeightBox(5),
                        "BCA-302".text.color(Vx.white).bold.size(15).textStyle(GoogleFonts.tiltNeon()).makeCentered(),
                        const HeightBox(20),
                        Image.asset("assets/cross.png",height: 40,width: 40,),
                        const HeightBox(5),
                        "BCA-304".text.color(Vx.white).bold.size(15).textStyle(GoogleFonts.tiltNeon()).makeCentered(),
                        const HeightBox(20),
                        Image.asset("assets/cross.png",height: 40,width: 40,),
                        const HeightBox(5),
                        "BCA-303".text.color(Vx.white).bold.size(15).textStyle(GoogleFonts.tiltNeon()).makeCentered(),
                        const HeightBox(20),
                        Image.asset("assets/cross.png",height: 40,width: 40,),
                        const HeightBox(5),
                        "BCA-306".text.color(Vx.white).bold.size(15).textStyle(GoogleFonts.tiltNeon()).makeCentered(),
                        const HeightBox(20), 
                        Image.asset("assets/cross.png",height: 40,width: 40,),
                        const HeightBox(5),
                        "BCA-306".text.color(Vx.white).bold.size(15).textStyle(GoogleFonts.tiltNeon()).makeCentered(),
                        const HeightBox(20), 
                      ],
                    ).px12().pOnly(top: 8),
                  ),
                ).p12(),
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                  color: Vx.red400,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        "23 oct".text.color(Vx.white).bold.size(25).textStyle(GoogleFonts.tiltNeon()).makeCentered(),
                        const HeightBox(15),
                        Image.asset("assets/checked.png",height: 40,width: 40,),
                        const HeightBox(5),
                        "BCA-302".text.color(Vx.white).bold.size(15).textStyle(GoogleFonts.tiltNeon()).makeCentered(),
                        const HeightBox(20),
                        Image.asset("assets/checked.png",height: 40,width: 40,),
                        const HeightBox(5),
                        "BCA-301".text.color(Vx.white).bold.size(15).textStyle(GoogleFonts.tiltNeon()).makeCentered(),
                        const HeightBox(20),
                        Image.asset("assets/checked.png",height: 40,width: 40,),
                        const HeightBox(5),
                        "BCA-305".text.color(Vx.white).bold.size(15).textStyle(GoogleFonts.tiltNeon()).makeCentered(),
                        const HeightBox(20),
                        Image.asset("assets/checked.png",height: 40,width: 40,),
                        const HeightBox(5),
                        "BCA-306".text.color(Vx.white).bold.size(15).textStyle(GoogleFonts.tiltNeon()).makeCentered(),
                        const HeightBox(20), 
                      ],
                    ).px12().pOnly(top: 8),
                  ),
                ).p12(),
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                  color: Vx.red400,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        "22 oct".text.color(Vx.white).bold.size(25).textStyle(GoogleFonts.tiltNeon()).makeCentered(),
                        const HeightBox(15),
                        Image.asset("assets/checked.png",height: 40,width: 40,),
                        const HeightBox(5),
                        "BCA-303".text.color(Vx.white).bold.size(15).textStyle(GoogleFonts.tiltNeon()).makeCentered(),
                        const HeightBox(20),
                        Image.asset("assets/checked.png",height: 40,width: 40,),
                        const HeightBox(5),
                        "BCA-307".text.color(Vx.white).bold.size(15).textStyle(GoogleFonts.tiltNeon()).makeCentered(),
                        const HeightBox(20),
                        Image.asset("assets/checked.png",height: 40,width: 40,),
                        const HeightBox(5),
                        "BCA-303".text.color(Vx.white).bold.size(15).textStyle(GoogleFonts.tiltNeon()).makeCentered(),
                        const HeightBox(20),
                        Image.asset("assets/checked.png",height: 40,width: 40,),
                        const HeightBox(5),
                        "BCA-302".text.color(Vx.white).bold.size(15).textStyle(GoogleFonts.tiltNeon()).makeCentered(),
                        const HeightBox(20), 
                      ],
                    ).px12().pOnly(top: 8),
                  ),
                ).p12(),
              ],
           ),
         ),
        ).px12().py24(),
      )
    );
  }
}