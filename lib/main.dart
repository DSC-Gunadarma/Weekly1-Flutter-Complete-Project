import 'package:flutter/material.dart';
import 'package:week1_complete_project/splash_page.dart';
import 'const.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Weekly DSC",
      // Untuk menghilangkan debug check di applikasi
      debugShowCheckedModeBanner: false,
      // ThemeData adalah kelas untuk mendefine basic tema dari aplikasi
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: kPrimaryColor,
      ),
      // Mendefinisikan page pertama yang akan tampil di aplikasi flutter
      home: SplashPage(),
    );
  }
}
