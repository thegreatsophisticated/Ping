// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:irebe_great/firebase_options.dart';

import 'package:flutter/material.dart';
// import 'package:irebe_great/screens/authscreen.dart';
import 'package:irebe_great/screens/bottom_bar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(MaterialApp(
    title: "Irebe Mall",
    theme: ThemeData().copyWith(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.blue,
        brightness: Brightness.light,
        surface: Colors.white,
      ),
      scaffoldBackgroundColor: Colors.blue,
      textTheme: const TextTheme()
          .copyWith(bodyText2: const TextStyle(decorationColor: Colors.white)),
    ),
    home: const Row(
      // children: [Expanded(child: BottomBar())],
      children: [
        // Text("data"),
        Expanded(
          child: BottomBar(),
          // StreamBuilder(
          //   stream: FirebaseAuth.instance.authStateChanges(),
          //   builder: ((context, snapshot) {
          //     // if (snapshot.connectionState == ConnectionState.waiting) {
          //     //   return const SplashScreen();
          //     // }
          //     // if (snapshot.hasData) {
          //     //   return const BottomBar();
          //     // }
          //     // return const BottomBar();
          //     return const Text("data");
          //     // return const AuthScreen();
          //   }),
          // ),
        ),
      ],
    ),
  ));
}
