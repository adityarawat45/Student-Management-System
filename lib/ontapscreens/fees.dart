
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
class Fees extends StatefulWidget {
  const Fees({super.key});

  @override
  State<Fees> createState() => _FeesState();
}

class _FeesState extends State<Fees> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.shadowColor,
      appBar: AppBar(
        elevation: 0.0,
              backgroundColor: context.theme.secondaryHeaderColor,
              title: "MMDU".text.xl4.color(context.theme.hintColor).textStyle(GoogleFonts.lilitaOne()).make(),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const HeightBox(20),
            Container(
                  height: 100,
                  width: 380,
                  decoration: BoxDecoration(
                    color: context.theme.indicatorColor,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Pending Amount"
                              .text
                              .color(context.theme.hintColor)
                              .size(25)
                              .bold
                              .textStyle(GoogleFonts.tiltNeon())
                              .make()
                              .pOnly(top: 18),
                          "Amount to be paid before the\nend of current session"
                              .text
                              .color(context.theme.hintColor)
                              .size(15)
                              .semiBold
                              .textStyle(GoogleFonts.tiltNeon())
                              .make(),
                        ],  
                      ),
                       "₹32,650".text.color(context.theme.hintColor).bold.size(22).make(),
                    ],
                  ).px8()
                ).px20().pOnly(bottom: 10),
              const HeightBox(10),
            "Pay your pending amount with\nmulitple payment methods!!"
                .text
                .color(context.primaryColor)
                .size(27)
                .textStyle(GoogleFonts.lilitaOne())
                .make()
                .pOnly(left: 20),
                const HeightBox(18),
               
                
                Container(
                  color: Vx.white,
                  child: TextField(
                  cursorColor: context.theme.errorColor,
                  decoration: const InputDecoration(
                    
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(),  
                    hintText: "Pay Amount",
                    hintStyle: TextStyle(
                      color: Vx.gray800,
                    ),
                    hoverColor: Vx.red500,
                    fillColor: Vx.gray100,
                    suffixIcon: Icon(Icons.currency_rupee,color: Vx.black,size: 25,),
                  ),
                               ),
                ).px64(),
                HeightBox(20),
               Row(
               mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   InkWell(
                    onTap: () {
                       ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                backgroundColor: Vx.blue500,
                                content: const Text(
                                  "Payment through SMS App will be available soon,\nas of now this feature is disabled",
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
                      height: 40,
                      width: 93,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: context.cardColor,
                      ),
                      child: "Pay".text.color(Vx.white).size(18).bold.makeCentered(),
                     ),
                   ),
                 ],
               ),
               const HeightBox(20),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Card(
                    
                    color: context.theme.splashColor,
                    elevation: 2,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                    child:SizedBox(
                      height: 300,
                      width: 320,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/no-data.png",height: 200,width: 200,),
                          const HeightBox(10),
                          "No previous records to show".text.color(context.theme.errorColor).size(22).textStyle(GoogleFonts.tiltNeon()).makeCentered(),
                        ],
                      ).px12()
                    ),
                   ).px16(),
                 ],
               )
          ],
        ),
      ),
    );
  }
}