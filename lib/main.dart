import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sportsapp/sports-home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark().copyWith(
        primaryColorDark: Colors.white,
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.montserratTextTheme()),
      home: SportsHome(),
    );
  }
}
