// ignore_for_file: deprecated_member_use

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/AuthServices/Authentication.dart';
import 'package:flutter_application_4/ontapscreens/fees.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDrawer extends StatefulWidget {
  const HomeDrawer({super.key});

  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  final Authentication auth = Authentication();
  Future<void> _launchurl(String url) async {
    final Uri uri = Uri.parse("https:/$url");
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can not launch url";
    }
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User?>(context);
    return StreamBuilder<DocumentSnapshot>(
        stream: auth.userDetails(user!.uid),
        builder: (context, snapshot) {
          final rollno = snapshot.data?.get("rollNo") ?? " ";
          final username = snapshot.data?.get("name") ?? "";
          return Drawer(
            backgroundColor: context.theme.highlightColor,
            child: ListView(
              shrinkWrap: true,
              addAutomaticKeepAlives: true,
              children: [
                DrawerHeader(
                  decoration:
                      BoxDecoration(color: context.theme.secondaryHeaderColor),
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
                          .color(context.theme.hintColor)
                          .make(),
                      // const HeightBox(10),
                      "Roll no: $rollno"
                          .text
                          .xl
                          .bold
                          .color(context.theme.hintColor)
                          .make(),
                    ],
                  ),
                ),
                ListTile(
                  titleAlignment: ListTileTitleAlignment.center,

                  // shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(15)),
                  leading: const Icon(Icons.password),
                  iconColor: context.theme.dividerColor,
                  title: "Change password"
                      .text
                      .lg
                      .color(
                        context.theme.dividerColor,
                      )
                      .make(),
                  onTap: () {},
                ),
                ListTile(
                  titleAlignment: ListTileTitleAlignment.center,

                  // shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(15)),
                  leading: const Icon(Icons.settings),
                  iconColor: context.theme.dividerColor,
                  title: "Settings"
                      .text
                      .lg
                      .color(
                        context.theme.dividerColor,
                      )
                      .make(),
                  onTap: () {},
                ),
                ListTile(
                  titleAlignment: ListTileTitleAlignment.center,

                  // shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(15)),
                  leading: const Icon(Icons.attach_money),
                  iconColor: context.theme.dividerColor,
                  title: "Fee and Payment"
                      .text
                      .lg
                      .color(
                        context.theme.dividerColor,
                      )
                      .make(),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Fees()));
                  },
                ),
                ListTile(
                  titleAlignment: ListTileTitleAlignment.center,

                  // shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(15)),
                  leading: const Icon(Icons.language),
                  iconColor: context.theme.dividerColor,
                  title: "Theme Mode"
                      .text
                      .lg
                      .color(
                        context.theme.dividerColor,
                      )
                      .make(),
                  onTap: () {
                   
                  },
                ),
                ListTile(
                  titleAlignment: ListTileTitleAlignment.center,

                  // shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(15)),
                  leading: const Icon(Icons.help_center),
                  iconColor: context.theme.dividerColor,
                  title: "Help"
                      .text
                      .lg
                      .color(
                        context.theme.dividerColor,
                      )
                      .make(),
                  onTap: () {},
                ),
                ListTile(
                  titleAlignment: ListTileTitleAlignment.center,

                  // shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(15)),
                  leading: const Icon(Icons.feedback),
                  iconColor: context.theme.dividerColor,
                  title: "Feedback"
                      .text
                      .lg
                      .color(
                        context.theme.dividerColor,
                      )
                      .make(),
                  onTap: () async {},
                ),
                ListTile(
                  titleAlignment: ListTileTitleAlignment.center,

                  // shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(15)),
                  leading: const Icon(Icons.web_asset_outlined),
                  iconColor: context.theme.dividerColor,
                  title: "ERP Portal"
                      .text
                      .lg
                      .color(
                        context.theme.dividerColor,
                      )
                      .make(),
                  onTap: () {
                    _launchurl("/erp.mmumullana.org/");
                  },
                ),
                ListTile(
                  titleAlignment: ListTileTitleAlignment.center,

                  // shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(15)),
                  leading: const Icon(Icons.exit_to_app),
                  title: "Sign Out".text.lg.make(),
                  iconColor: context.theme.dividerColor,
                  textColor: context.theme.dividerColor,
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
