import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/ontapscreens/report.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
class Hostel extends StatefulWidget {
  const Hostel({super.key});

  @override
  State<Hostel> createState() => _HostelState();
}

class _HostelState extends State<Hostel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
          elevation: 0.0,
          backgroundColor: context.theme.secondaryHeaderColor,
          title: "MMDU".text.xl4.color(context.theme.hintColor).textStyle(GoogleFonts.lilitaOne()).make(),),
          body:Container(
            color: context.canvasColor,
            child: Column(
                  children: [
            const HeightBox(20),
            "Apply for Hostel here"
                .text
                .size(24)
                .semiBold
                .textStyle(GoogleFonts.tiltNeon())
                .color(Vx.white)
                .makeCentered(),
            const HeightBox(20),
            Container(
                    height: 70,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Vx.gray50,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const TextField(
                      maxLines: 10,
                      maxLength: 200,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            color: Vx.gray800
                          ),
                          hintText: "Apply here"),
                    ).px12().pOnly(bottom: 3))
                .px32(),
            const HeightBox(20),
            InkWell(
              onTap: () {
                setState(() {
                  isClicked = !isClicked;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                height: 35,
                width: isClicked? 50: 90,
                decoration: BoxDecoration(
                  color: Vx.yellow400,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: isClicked? const Icon(CupertinoIcons.check_mark_circled_solid,color: Vx.green600,size: 30,): "Apply"
                    .text
                    .color(Vx.gray100)
                    .size(15)
                    .semiBold
                    .textStyle(GoogleFonts.tiltNeon())
                    .makeCentered(),
              ),
            ),
            const HeightBox(30),
            Image.asset("assets/hostel.png",height: 130,width: 130,)
                  ],
                ),
          ),
    );
    
  }
}