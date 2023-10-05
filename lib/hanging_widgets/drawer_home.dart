import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/AuthServices/Authentication.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDrawer extends StatefulWidget {
  const HomeDrawer({super.key});

  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  final Authentication auth = Authentication();

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User?>(context);
    // ignore: no_leading_underscores_for_local_identifiers
    // void _showModalBottomSheet(context) {
    //   showModalBottomSheet(
    //       // backgroundColor: Vx.red400,
    //       context: context,
    //       builder: (BuildContext context) {
    //         return const Profsetup();
    //       });
    // }

    return StreamBuilder<DocumentSnapshot>(
        stream: auth.userDetails(user!.uid),
        builder: (context, snapshot) {
          final rollno = snapshot.data?.get("rollNo") ?? " ";
          final username = snapshot.data?.get("name") ?? "";
          return Drawer(
            backgroundColor: Vx.white,
            child: ListView(
              shrinkWrap: true,
              addAutomaticKeepAlives: true,
              children: [
                DrawerHeader(
                  decoration: const BoxDecoration(color: Vx.red500),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage("assets/avatar.png"),
                        radius: 35,
                      ),
                      const HeightBox(10),
                      "$username's Profile"
                          .text
                          .xl2
                          .bold
                          .color(Vx.white)
                          .make(),
                      // const HeightBox(10),
                      "Roll no: $rollno".text.xl.bold.color(Vx.white).make(),
                    ],
                  ),
                ),
                ListTile(
                  titleAlignment: ListTileTitleAlignment.center,

                  // shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(15)),
                  leading: const Icon(Icons.password),
                  iconColor: Vx.black,
                  title: "Change password".text.lg.color(Vx.black).make(),
                  onTap: () {},
                ),
                ListTile(
                  titleAlignment: ListTileTitleAlignment.center,

                  // shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(15)),
                  leading: const Icon(Icons.settings),
                  iconColor: Vx.black,
                  title: "Settings".text.lg.color(Vx.black).make(),
                  onTap: () {},
                ),
                ListTile(
                  titleAlignment: ListTileTitleAlignment.center,

                  // shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(15)),
                  leading: const Icon(Icons.attach_money),
                  iconColor: Vx.black,
                  title: "Fee and Payment".text.lg.color(Vx.black).make(),
                  onTap: () {},
                ),
                ListTile(
                  titleAlignment: ListTileTitleAlignment.center,

                  // shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(15)),
                  leading: const Icon(Icons.language),
                  iconColor: Colors.black,
                  title: "App Language".text.lg.color(Vx.black).make(),
                  onTap: () {},
                ),
                ListTile(
                  titleAlignment: ListTileTitleAlignment.center,

                  // shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(15)),
                  leading: const Icon(Icons.help_center),
                  iconColor: Vx.black,
                  title: "Help".text.lg.color(Vx.black).make(),
                  onTap: () {},
                ),
                ListTile(
                  titleAlignment: ListTileTitleAlignment.center,

                  // shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(15)),
                  leading: const Icon(Icons.feedback),
                  iconColor: Vx.black,
                  title: "Feedback".text.lg.color(Vx.black).make(),
                  onTap: () async {},
                ),
                ListTile(
                  titleAlignment: ListTileTitleAlignment.center,

                  // shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(15)),
                  leading: const Icon(Icons.web_asset_outlined),
                  iconColor: Vx.black,
                  title: "ERP Portal".text.lg.color(Vx.black).make(),
                  onTap: () {},
                ),
                ListTile(
                  titleAlignment: ListTileTitleAlignment.center,

                  // shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(15)),
                  leading: const Icon(Icons.exit_to_app),
                  title: "Sign Out".text.lg.make(),
                  iconColor: Vx.black,
                  textColor: Vx.black,
                  onTap: () async {
                    await auth.UserSignOut();
                  },
                ),
              ],
            ),
          );
        });
  }
}
