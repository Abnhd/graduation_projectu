import 'package:flutter/material.dart';
import 'package:sportify_application/Screen/HomeScreen.dart';
import 'package:sportify_application/Screen/homepage.dart';
import 'package:sportify_application/constants.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main (){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData(
        fontFamily: "Biofit",
        colorScheme: ColorScheme.fromSeed(seedColor: kprimaryColor),
        scaffoldBackgroundColor:kbackgroundColor,
        useMaterial3: true,
      ),
       home: const homepage(),
    );
  }
}
