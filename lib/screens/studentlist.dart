import 'package:flutter/material.dart';
import 'package:flutter_application_4/hanging_widgets/chatscreen.dart';
import 'package:velocity_x/velocity_x.dart';

class Groups extends StatefulWidget {
  const Groups({super.key});
  @override
  State<Groups> createState() => _GroupsState();
}
class _GroupsState extends State<Groups> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Chatscreen()),
            );
          },
          leading: const CircleAvatar(
            backgroundImage: AssetImage("assets/bcaicon.png"),
          ),
          title: "BCA-Section C".text.make(),
          subtitle: "2022-2025".text.make(),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(Icons.arrow_back_ios),
              "0 messages"
                  .text
                  .color(Vx.gray500)
                  .size(5)
                  .make()
                  .pOnly(right: 10),
            ],
          )),
      ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Chatscreen()),
            );
          },
          leading: const CircleAvatar(
            backgroundImage: AssetImage("assets/nss.jpeg"),
          ),
          title: "NSS-MMDU".text.make(),
          subtitle: "2022-2025".text.make(),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(Icons.arrow_back_ios),
              "0 messages"
                  .text
                  .color(Vx.gray500)
                  .size(5)
                  .make()
                  .pOnly(right: 10),
            ],
          )),
      ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Chatscreen()),
            );
          },
          leading: const CircleAvatar(
            backgroundImage: AssetImage("assets/ccc.png"),
          ),
          title: "Crew Coding Club".text.make(),
          subtitle: "App Devlopment".text.make(),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(Icons.arrow_back_ios),
              "0 messages"
                  .text
                  .color(Vx.gray500)
                  .size(5)
                  .make()
                  .pOnly(right: 10)
            ],
          )),
    ]);
  }
}
