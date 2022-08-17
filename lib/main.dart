// ************************************************************
// ************************************************************
// ***         Copyright 2022. All rights reserved.         ***
// ***                by Jo@chim Ned@ouk@.                  ***
// ************************************************************
// ************************************************************

import 'package:flutter/material.dart';
import 'package:icloud/welcome_screens/loading_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget { 
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iCloud',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color.fromARGB(255, 226, 226, 226),
      ),
      debugShowCheckedModeBanner: false,
      home: LoadingScreen(),
    );
  }
}
