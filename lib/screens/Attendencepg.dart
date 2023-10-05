// ignore_for_file: file_nam, file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Attendencepg extends StatefulWidget {
  const Attendencepg({super.key});

  @override
  State<Attendencepg> createState() => _AttendencepgState();
}

class _AttendencepgState extends State<Attendencepg> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/attendence.png"))),
              child: null),
        ),
        "No Attendence record to show"
            .text
            .xl2
            .textStyle(GoogleFonts.signika())
            .color(Vx.black)
            .makeCentered()
            .pOnly(bottom: 64),
      ],
    );
  }
}
