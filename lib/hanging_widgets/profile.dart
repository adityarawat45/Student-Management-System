// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:flutter_application_4/AuthServices/Authentication.dart';
// import 'package:velocity_x/velocity_x.dart';

// class Profsetup extends StatefulWidget {
//   const Profsetup({super.key});

//   @override
//   State<Profsetup> createState() => _ProfsetupState();
// }

// class _ProfsetupState extends State<Profsetup> {
//   final Authentication auth = Authentication();
//   final List<String> coursesName = [
//     // "B.tech(CSE)",
//     // "B.tech(ECE)",
//     // "B.tech(Mech)",
//     // "B.tech(Civil)",
//     // "B.tech(Electrical)",
//     // "B.tech(BioTech)",
//     // "BBA",
//     // "BBA(RM)",
//     // "BCA",
//     // "BCA(AI)",
//     // "BCA(DS)",
//     // "B.Com(Hons)",
//     // "B.Sc(Phy)",
//     // "B.Sc(Math)",
//     // "B.Sc(Chem)",
//     // "B.Sc(BioTech)",
//     // "B.Sc(Nusring)",
//     // "B.Sc(Agri)",
//     // "BA-LLB",
//     // "BBA-LLB",
//     // "B.Com-LLb",
//     // "LLM",
//     // "M.tech(CSE)",
//     // "M.tech(ECE)",
//     // "M.tech(Mech)",
//     // "M.tech(Civil)",
//     // "M.tech(Electrical)",
//     // "M.tech(BioTech)",
//     // "MBA",
//     // "MCA",
//     // "M.Com(Hons)",
//     // "M.Sc(Phy)",
//     // "M.Sc(Math)",
//     // "M.Sc(Chem)",
//     // "M.Sc(BioTech)",
//     // "M.Sc(Nusring)",
//     // "M.Sc(Agri)",
//     "BCA",
//     "BCA(AI)",
//     "BCA(DS)",
//     "MCA",
//   ];
//   bool isUpdated = false;
//   final List<String> sections = ["A", "B", "C", 'D', 'E', 'F', 'G'];
//   final List<String> semesters = ['1', '2', '3', '4', '5', '6', '7', '8'];
//   late String name = "";
//   late String course = "";
//   late String rollNo = "";
//   late String semester = "";
//   late String section = "";
//   final _formkey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     // ignore: avoid_unnecessary_containers
//     return Container(
//       child: Form(
//         key: _formkey,
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               HeightBox(20),
//               TextFormField(
//                 validator: (value) =>
//                     value!.isEmpty ? "Roll No cant be empty" : null,
//                 decoration: const InputDecoration(
//                   label: Text("Enter your Roll No."),
//                   border: OutlineInputBorder(),
//                   // errorBorder: InputBorder.none?
//                 ),
//                 onChanged: (value) {
//                   rollNo = value;
//                 },
//               ).px32(),
//               const HeightBox(10),
//               TextFormField(
//                 validator: (value) =>
//                     value!.isEmpty ? "Name can't be empty" : null,
//                 decoration: const InputDecoration(
//                   label: Text("Enter your name"),
//                   border: OutlineInputBorder(),
//                   // enabledBorder: OutlineInputBorder()
//                 ),
//                 onChanged: (value) {
//                   name = value;
//                 },
//               ).px32(),
//               HeightBox(10),
//               DropdownButtonFormField(
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return "Course cant be empty";
//                     }
//                     return null;
//                   },
//                   decoration: InputDecoration(
//                     label: "Select your course".text.make(),
//                     border: OutlineInputBorder(),
//                   ),
//                   items: coursesName
//                       .map(
//                         (courses) => DropdownMenuItem(
//                           value: courses,
//                           child: Text(courses),
//                         ),
//                       )
//                       .toList(),
//                   onChanged: (value) {
//                     setState(() {
//                       course = value as String;
//                     });
//                   }).px32(),
//               HeightBox(10),
//               DropdownButtonFormField(
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return "Section cant be empty";
//                     }
//                     return null;
//                   },
//                   decoration: InputDecoration(
//                     label: "Select your section".text.make(),
//                     border: OutlineInputBorder(),
//                   ),
//                   items: sections
//                       .map(
//                         (sectionsName) => DropdownMenuItem(
//                           value: sectionsName,
//                           child: Text(sectionsName),
//                         ),
//                       )
//                       .toList(),
//                   onChanged: (value) {
//                     setState(() {
//                       section = value as String;
//                     });
//                   }).px32(),
//               HeightBox(10),
//               DropdownButtonFormField(
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return "Semester cant be empty";
//                     }
//                     return null;
//                   },
//                   decoration: InputDecoration(
//                     label: "Select your semester".text.make(),
//                     border: OutlineInputBorder(),
//                   ),
//                   items: semesters
//                       .map(
//                         (sems) => DropdownMenuItem(
//                           value: sems,
//                           child: Text(sems),
//                         ),
//                       )
//                       .toList(),
//                   onChanged: (value) {
//                     setState(() {
//                       semester = value as String;
//                     });
//                   }).px32(),
//               HeightBox(20),
//               InkWell(
//                 onTap: () async {
//                   if (_formkey.currentState!.validate()) {
//                     setState(() {
//                       isUpdated = true;
//                     });
//                     await auth.updateUserDetails(
//                         rollNo, course, semester, name, section);
//                     isUpdated = false;
//                   } else {
//                     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                       backgroundColor: Vx.red500,
//                       content: "Error to update the data"
//                           .text
//                           .color(Vx.white)
//                           .make(),
//                     ));
//                   }
//                 },
//                 child: AnimatedContainer(
//                   decoration: BoxDecoration(
//                       color: Vx.red500,
//                       borderRadius: isUpdated
//                           ? BorderRadius.circular(25)
//                           : BorderRadius.circular(5)),
//                   height: 37,
//                   width: isUpdated ? 100 : 150,
//                   duration: Duration(milliseconds: 500),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(
//                         isUpdated
//                             ? Icons.check_circle_rounded
//                             : Icons.upload_rounded,
//                         color: Vx.white,
//                       ),
//                       isUpdated
//                           ? "Updated".text.semiBold.color(Vx.white).make()
//                           : "Update Data".text.semiBold.color(Vx.white).make()
//                     ],
//                   ),
//                 ),
//               ).pOnly(bottom: 20),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
