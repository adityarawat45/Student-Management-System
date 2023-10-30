import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
class Dmc extends StatefulWidget {
  const Dmc({super.key});

  @override
  State<Dmc> createState() => _DmcState();
}

class _DmcState extends State<Dmc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: const Color.fromARGB(255, 217, 45, 45),
          title: "MMDU".text.xl4.textStyle(GoogleFonts.lilitaOne()).make(),),
      body : SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const HeightBox(10),
             Container(
                height: 100,
                width: 380,
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
                        "Odd Semester-1"
                            .text
                            .color(Vx.white)
                            .size(25)
                            .bold
                            .textStyle(GoogleFonts.tiltNeon())
                            .make()
                            .pOnly(top: 18),
                        "Detailed Marksheet"
                            .text
                            .color(Vx.gray100)
                            .size(15)
                            .semiBold
                            .textStyle(GoogleFonts.tiltNeon())
                            .make(),
                      ],
                    ),
                    Image.asset("assets/syllabus/number-one.png", height: 75, width: 60),
                  ],
                ),
              ).px16().pOnly(bottom: 10),
             
             Container(
                height: 100,
                width: 380,
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
                        "Even Semester-2"
                            .text
                            .color(Vx.white)
                            .size(25)
                            .bold
                            .textStyle(GoogleFonts.tiltNeon())
                            .make()
                            .pOnly(top: 18),
                        "Detailed Marksheet"
                            .text
                            .color(Vx.gray100)
                            .size(15)
                            .semiBold
                            .textStyle(GoogleFonts.tiltNeon())
                            .make(),
                      ],
                    ),
                    Image.asset("assets/syllabus/number-2.png", height: 75, width: 60),
                  ],
                ),
              ).px16().pOnly(bottom: 10),
             Container(
                height: 100,
                width: 380,
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
                        "Odd Semester-3"
                            .text
                            .color(Vx.white)
                            .size(25)
                            .bold
                            .textStyle(GoogleFonts.tiltNeon())
                            .make()
                            .pOnly(top: 18),
                        "Detailed Marksheet"
                            .text
                            .color(Vx.gray100)
                            .size(15)
                            .semiBold
                            .textStyle(GoogleFonts.tiltNeon())
                            .make(),
                      ],
                    ),
                    Image.asset("assets/syllabus/number-3.png", height: 75, width: 60),
                  ],
                ),
              ).px16().pOnly(bottom: 10),
             Container(
                height: 100,
                width: 380,
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
                        "Even Semester-4"
                            .text
                            .color(Vx.white)
                            .size(25)
                            .bold
                            .textStyle(GoogleFonts.tiltNeon())
                            .make()
                            .pOnly(top: 18),
                        "Detailed Marksheet"
                            .text
                            .color(Vx.gray100)
                            .size(15)
                            .semiBold
                            .textStyle(GoogleFonts.tiltNeon())
                            .make(),
                      ],
                    ),
                    Image.asset("assets/syllabus/number-four.png", height: 75, width: 60),
                  ],
                ),
              ).px16().pOnly(bottom: 10),
             Container(
                height: 100,
                width: 380,
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
                        "Odd Semester-5"
                            .text
                            .color(Vx.white)
                            .size(25)
                            .bold
                            .textStyle(GoogleFonts.tiltNeon())
                            .make()
                            .pOnly(top: 18),
                        "Detailed Marksheet"
                            .text
                            .color(Vx.gray100)
                            .size(15)
                            .semiBold
                            .textStyle(GoogleFonts.tiltNeon())
                            .make(),
                      ],
                    ),
                    Image.asset("assets/syllabus/number-5.png", height: 75, width: 60),
                  ],
                ),
              ).px16().pOnly(bottom: 10),
             Container(
                height: 100,
                width: 380,
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
                        "Even Semester-6"
                            .text
                            .color(Vx.white)
                            .size(25)
                            .bold
                            .textStyle(GoogleFonts.tiltNeon())
                            .make()
                            .pOnly(top: 18),
                        "Detailed Marksheet"
                            .text
                            .color(Vx.gray100)
                            .size(15)
                            .semiBold
                            .textStyle(GoogleFonts.tiltNeon())
                            .make(),
                      ],
                    ),
                    Image.asset("assets/syllabus/six.png", height: 75, width: 60),
                  ],
                ),
              ).px16().pOnly(bottom: 10),
          ],
        ),
      ) ,
    );
  }
}