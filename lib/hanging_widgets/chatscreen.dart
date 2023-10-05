import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Chatscreen extends StatefulWidget {
  const Chatscreen({Key? key}) : super(key: key);

  @override
  State<Chatscreen> createState() => _ChatscreenState();
}

class _ChatscreenState extends State<Chatscreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/chatwp.avif"), fit: BoxFit.cover)),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: const Color.fromARGB(93, 0, 0, 0),
        appBar: AppBar(
          elevation: 1.0,
          backgroundColor: const Color.fromARGB(255, 55, 65, 81),
          title:
              "ChatScreen".text.xl3.textStyle(GoogleFonts.lilitaOne()).make(),
        ),
        body: Column(
          children: [
            Expanded(child: Container()),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                    child: Card(
                  color: Vx.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.smiley_fill,
                          color: Vx.gray700,
                        )),
                    const Expanded(
                        child: TextField(
                      cursorColor: Vx.black,
                      decoration: InputDecoration(
                        hintMaxLines: 5,
                        border: InputBorder.none,
                        hintText: "Text a message",
                        hintStyle: TextStyle(
                          color: Vx.black,
                        ),
                      ),
                    )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.link,
                          color: Vx.gray700,
                        )),
                  ]),
                ).pOnly(left: 10, bottom: 12)),
                MaterialButton(
                        shape: const CircleBorder(),
                        minWidth: 5,
                        color: Vx.gray700,
                        onPressed: () {},
                        child: const Icon(
                          CupertinoIcons.paperplane_fill,
                          color: Vx.white,
                          size: 25,
                        ).pOnly(right: 3))
                    .pOnly(bottom: 10)
              ],
            )
          ],
        ),
      ),
    );
  }
}
