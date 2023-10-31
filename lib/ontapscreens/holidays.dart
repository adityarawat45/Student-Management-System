import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
class Holidays extends StatefulWidget {
  const Holidays({super.key});

  @override
  State<Holidays> createState() => _HolidaysState();
}

class _HolidaysState extends State<Holidays> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          elevation: 0.0,
          backgroundColor: const Color.fromARGB(255, 217, 45, 45),
          title: "MMDU".text.xl4.textStyle(GoogleFonts.lilitaOne()).make(),
       ),
      body: Container(
        
        decoration: const BoxDecoration(
          color: Vx.white,
        ),
        child : Card(shape: const RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.only(bottomEnd: Radius.circular(180),bottomStart: Radius.circular(180),topEnd: Radius.circular(30),topStart: Radius.circular(30)),),
        color:  const Color.fromARGB(255, 217, 45, 45),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
           const HeightBox(20),
            "Holidays list(2023)".text.semiBold.textStyle(GoogleFonts.tiltNeon()).size(24).color(Vx.white).makeCentered().pOnly(top: 8),
            const HeightBox(20),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  "• Republic Day, 26 jan,Thursday".text.textStyle(GoogleFonts.tiltNeon()).size(16).color(Vx.white).makeCentered().pOnly(top: 5),
                  "• Maha Shivratri, 18 feb, Saturday".text.textStyle(GoogleFonts.tiltNeon()).size(16).color(Vx.white).makeCentered().pOnly(top: 5),
                  "• Holi, 8 mar, Wednesday".text.textStyle(GoogleFonts.tiltNeon()).size(16).color(Vx.white).makeCentered().pOnly(top: 5),
                  "• Ram Navami, 30 mar, Thursday".text.textStyle(GoogleFonts.tiltNeon()).size(16).color(Vx.white).makeCentered().pOnly(top: 5),
                  "• Maha Shivratri, 18 feb, Saturday".text.textStyle(GoogleFonts.tiltNeon()).size(16).color(Vx.white).makeCentered().pOnly(top: 5),
                  "• Dr. B.R Ambedkar jayanti, 14 apr, Friday".text.textStyle(GoogleFonts.tiltNeon()).size(16).color(Vx.white).makeCentered().pOnly(top: 5),
                  "• Idu'l Zuha, 29 jun, Thrusday".text.textStyle(GoogleFonts.tiltNeon()).size(16).color(Vx.white).makeCentered().pOnly(top: 5),
                  "• Independence Day, 15 Aug, Tuesday".text.textStyle(GoogleFonts.tiltNeon()).size(16).color(Vx.white).makeCentered().pOnly(top: 5),
                  "• Janmashtami, 7 sep, Thursday".text.textStyle(GoogleFonts.tiltNeon()).size(16).color(Vx.white).makeCentered().pOnly(top: 5),
                  "• Gandhi Jayanti, 2 oct, Monday".text.textStyle(GoogleFonts.tiltNeon()).size(16).color(Vx.white).makeCentered().pOnly(top: 5),
                  "• Dussehra, 24 oct, Tuesday".text.textStyle(GoogleFonts.tiltNeon()).size(16).color(Vx.white).makeCentered().pOnly(top: 5),
                  "• Maharishi Markandeshwar Jayanti,\n 29 oct, Saturday".text.textBaseLine(TextBaseline.ideographic).textStyle(GoogleFonts.tiltNeon()).size(16).color(Vx.white).makeCentered().pOnly(top: 5),
                  "• Haryana Day, 1 nov, Wednesday".text.textStyle(GoogleFonts.tiltNeon()).size(16).color(Vx.white).makeCentered().pOnly(top: 5),
                  "• Diwali , 12 nov, Sunday".text.textStyle(GoogleFonts.tiltNeon()).size(16).color(Vx.white).makeCentered().pOnly(top: 5),
                  "• Guru Nanak Dev Jayanti, 27 nov, Monday".text.textStyle(GoogleFonts.tiltNeon()).size(16).color(Vx.white).makeCentered().pOnly(top: 5),
                  "• Christman, 25 dec, Monday".text.textStyle(GoogleFonts.tiltNeon()).size(16).color(Vx.white).makeCentered().pOnly(top: 5),
                ],
              ),
            ),
          ],
        ),).px16().py24(),
      )
      
    );
  }
}

