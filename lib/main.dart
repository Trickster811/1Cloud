// ************************************************************
// ************************************************************
// ***         Copyright 2022. All rights reserved.         ***
// ***                by Jo@chim Ned@ouk@.                  ***
// ************************************************************
// ************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:icloud/welcome_screens/loading_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'One Cloud',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color.fromARGB(255, 243, 243, 243),
      ),
      debugShowCheckedModeBanner: false,
      home: LoadingScreen(),
    );
  }
}
