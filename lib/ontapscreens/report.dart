import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Settinsform extends StatefulWidget {
  const Settinsform({super.key});

  @override
  State<Settinsform> createState() => _SettinsformState();
}

bool isClicked = false;

class _SettinsformState extends State<Settinsform> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: Column(
        children: [
          const HeightBox(20),
          "Submit your issues here"
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
                        hintText: "Write your issue here"),
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
              child: isClicked? const Icon(CupertinoIcons.check_mark_circled_solid,color: Vx.green600,size: 30,): "Submit"
                  .text
                  .color(Vx.gray100)
                  .size(15)
                  .semiBold
                  .textStyle(GoogleFonts.tiltNeon())
                  .makeCentered(),
            ),
          ),
          const HeightBox(30),
          Image.asset("assets/attendence/help-desk.png",height: 130,width: 130,)
        ],
      ),
    );
  }
}
