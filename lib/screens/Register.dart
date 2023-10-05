// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/AuthServices/Authentication.dart';
import 'package:flutter_application_4/hanging_widgets/Loading.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:velocity_x/velocity_x.dart';

class Register extends StatefulWidget {
  const Register({super.key, required this.toggleview});
  final Function toggleview;

  @override
  State<Register> createState() => _LoginState();
}

class _LoginState extends State<Register> {
  final Authentication _auth = Authentication();
  String email = "";
  String password = "";
  String error = "";
  dynamic result = "";
  bool isLoading = false;
  final _formkey = GlobalKey<FormState>();
  bool _obsecuretext = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/loginbg.jpg"), fit: BoxFit.cover),
      ),
      child: SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: const Color.fromARGB(48, 0, 0, 0),
          body: isLoading
              ? const Loading()
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Register"
                              .text
                              .textStyle(GoogleFonts.lilitaOne())
                              .color(Vx.white)
                              .xl6
                              .make()
                              .px20()
                              .pOnly(top: 20),
                          .8.heightBox,
                          "to SMS Portal of        "
                              .text
                              .textStyle(GoogleFonts.lilitaOne())
                              .color(Vx.white)
                              .size(30)
                              .make()
                              .px24(),
                          .8.heightBox,
                          "MMDU"
                              .text
                              .textStyle(GoogleFonts.lilitaOne())
                              .color(Vx.white)
                              .xl5
                              .make()
                              .px20(),
                          const SizedBox(
                            height: 82,
                          ),
                        ]),
                    Column(
                      children: [
                        Form(
                          key: _formkey,
                          child: Container(
                              height: 50,
                              width: 320,
                              decoration: BoxDecoration(
                                  color: Vx.white,
                                  borderRadius: BorderRadius.circular(18)),
                              child: TextFormField(
                                onChanged: (value) {
                                  setState(() {
                                    email = value;
                                  });
                                },
                                validator: (value) =>
                                    value!.isEmpty ? 'Enter an E-mail' : null,
                                cursorColor: Colors.black,
                                decoration: const InputDecoration(
                                    hintText: "Enter your E-mail",
                                    hintStyle: TextStyle(color: Colors.black),
                                    icon: Icon(Icons.mail),
                                    iconColor: Colors.red,
                                    border: InputBorder.none,
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                    alignLabelWithHint: true),
                              ).px16()),
                        ),
                        const SizedBox(
                          height: 36,
                        ),
                        Container(
                            height: 50,
                            width: 320,
                            decoration: BoxDecoration(
                                color: Vx.white,
                                borderRadius: BorderRadius.circular(18)),
                            child: TextFormField(
                              onChanged: (value) {
                                setState(() {
                                  password = value;
                                });
                              },
                              validator: (value) => value!.length < 6
                                  ? "Length should be longer than 6"
                                  : null,
                              obscureText: _obsecuretext,
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                  hintText: "Enter your password",
                                  hintStyle:
                                      const TextStyle(color: Colors.black),
                                  icon: const Icon(CupertinoIcons.padlock),
                                  iconColor: Colors.red,
                                  border: InputBorder.none,
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.never,
                                  alignLabelWithHint: true,
                                  suffixIconColor: Colors.red,
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _obsecuretext = !_obsecuretext;
                                      });
                                    },
                                    child: Icon(_obsecuretext
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                  )),
                            ).px16()),
                        const SizedBox(
                          height: 36,
                        ),
                        InkWell(
                            onTap: () async {
                              if (_formkey.currentState!.validate()) {
                                setState(() {
                                  isLoading = true;
                                });
                                result = await _auth.UserRegistrationEmail(
                                    email, password);
                                isLoading = false;
                              }
                              if (result == null) {
                                setState(() {
                                  isLoading = false;
                                });
                                // ignore: use_build_context_synchronously
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor: Colors.white,
                                    content: 'Unable to Sign Up currently'
                                        .text
                                        .color(Vx.black)
                                        .make(), // Set your message here
                                  ),
                                );
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 217, 45, 45),
                                  borderRadius: BorderRadius.circular(25)),
                              width: 120,
                              height: 50,
                              child: "Sign Up"
                                  .text
                                  .lg
                                  .semiBold
                                  .color(Vx.white)
                                  .makeCentered(),
                            )),
                        const HeightBox(20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 80),
                          child: InkWell(
                            onTap: () {
                              widget.toggleview();
                            },
                            child: "Sign In".text.color(Vx.white).make(),
                          ),
                        )
                      ],
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
