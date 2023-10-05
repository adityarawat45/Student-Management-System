import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/AuthServices/Authentication.dart';
import 'package:flutter_application_4/screens/studentlist.dart';
import 'package:provider/provider.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    final Authentication auth = Authentication();
    final user = Provider.of<User?>(context);

    return StreamBuilder<DocumentSnapshot>(
        stream: auth.userDetails(user!.uid),
        builder: (context, snapshot) {
          // final course = snapshot.data?.get("course") ?? " ";
          // final section = snapshot.data?.get("section") ?? "";
          return ListView.builder(
              itemCount: 1,
              itemBuilder: ((context, index) {
                return const Groups();
              }));
        });
  }
}
