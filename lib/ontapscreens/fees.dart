
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
      appBar: AppBar(
        elevation: 0.0,
              backgroundColor: const Color.fromARGB(255, 217, 45, 45),
              title: "MMDU".text.xl4.textStyle(GoogleFonts.lilitaOne()).make(),
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
                    color: const Color.fromARGB(255, 0, 205, 75),
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
                              .color(Vx.white)
                              .size(25)
                              .bold
                              .textStyle(GoogleFonts.tiltNeon())
                              .make()
                              .pOnly(top: 18),
                          "Amount to be paid before the end\nof current session"
                              .text
                              .color(Vx.gray100)
                              .size(15)
                              .semiBold
                              .textStyle(GoogleFonts.tiltNeon())
                              .make(),
                        ],  
                      ),
                       "₹32,650".text.color(Vx.gray100).bold.xl3.make(),
                    ],
                  ),
                ).px20().pOnly(bottom: 10),
              const HeightBox(10),
            "Pay your pending amount with\nmulitple payment methods!!"
                .text
                .color(Vx.red500)
                .size(27)
                .textStyle(GoogleFonts.lilitaOne())
                .make()
                .pOnly(left: 20),
                const HeightBox(18),
               
               const TextField(
                cursorColor: Vx.black,
                decoration: InputDecoration(
                  
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),  
                  hintText: "Pay Amount",
                  hoverColor: Vx.red500,
                  fillColor: Vx.gray100,
                  suffixIcon: Icon(Icons.currency_rupee,color: Vx.black,size: 25,),
                ),
               ).px64(),
               const HeightBox(20),
               Row(
               mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Container(
                    height: 40,
                    width: 93,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Vx.yellow400
                    ),
                    child: "Pay".text.color(Vx.white).size(18).bold.makeCentered(),
                   ),
                 ],
               ),
               const HeightBox(20),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Card(
                    
                    color: Vx.gray200,
                    elevation: 2,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                    child:SizedBox(
                      height: 300,
                      width: 360,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/no-data.png",height: 200,width: 200,),
                          const HeightBox(10),
                          "No previous records to show".text.color(Vx.black).size(18).textStyle(GoogleFonts.inconsolata()).makeCentered(),
                        ],
                      ),
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