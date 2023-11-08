import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.shadowColor,
      appBar: AppBar(
        centerTitle: true,
         elevation: 0.0,
          backgroundColor: context.theme.secondaryHeaderColor,
          title: "Notifications".text.xl3.color(context.theme.hintColor).bold.textStyle(GoogleFonts.tiltNeon()).make(),
      ),
      body:  Container(
        color: context.theme.shadowColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/notification.png",height: 400,width: 250,),
            HeightBox(20),
            // ignore: deprecated_member_use
            "No Notifications".text.color(context.theme.errorColor).size(18).semiBold.textStyle(GoogleFonts.tiltNeon()).makeCentered(),
          ],
        ),
      ) ,
    );
  }
}