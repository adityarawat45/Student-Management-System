import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/AuthServices/Authentication.dart';
import 'package:flutter_application_4/screens/themes.dart';             
import 'package:provider/provider.dart';
import 'hanging_widgets/drawer_home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.system);
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User?>.value(
      value: Authentication().user,
      initialData: null,
      child: MaterialApp(
        home: const HomeDrawer(),
        themeMode: ThemeMode.system,
        theme: Mytheme.lighttheme(context),
        darkTheme: Mytheme.darktheme(context),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

