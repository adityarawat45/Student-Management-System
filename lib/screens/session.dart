import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Session extends StatefulWidget {
  const Session({super.key});

  @override
  State<Session> createState() => _SessionState();
}

class _SessionState extends State<Session> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
              decoration: const BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("assets/Session.png"))),
              child: null),
        ),
        "No Session details"
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
