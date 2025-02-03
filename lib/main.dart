import 'package:flutter/material.dart';
import 'package:healthproject/st1.dart';
import 'package:healthproject/st10.dart';
import 'package:healthproject/st11.dart';
import 'package:healthproject/st12.dart';
import 'package:healthproject/st13.dart';
import 'package:healthproject/st14.dart';
import 'package:healthproject/st15.dart';
import 'package:healthproject/st18.dart';
import 'package:healthproject/st2.dart';
import 'package:healthproject/st20.dart';
import 'package:healthproject/st21.dart';
import 'package:healthproject/st22.dart';
import 'package:healthproject/st23.dart';
import 'package:healthproject/st24.dart';
import 'package:healthproject/st3.dart';
import 'package:healthproject/st4.dart';
import 'package:healthproject/st5.dart';
import 'package:healthproject/st6.dart';
import 'package:healthproject/st7.dart';
import 'package:healthproject/st8.dart';
import 'package:healthproject/st9.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: 'ST1Screen',
      routes: {
        'ST1Screen': (context) => const ST1Screen(),
        'ST2Screen': (context) => const ST2Screen(),
        'ST3Screen': (context) => const ST3Screen(),
        'ST4Screen': (context) => const ST4Screen(),
        'ST5Screen': (context) => const ST5Screen(),
        'ST6Screen': (context) => const ST6Screen(),
        'ST7Screen': (context) => const ST7Screen(),
        'ST8Screen': (context) => const ST8Screen(),
        'ST9Screen':(context) => const ST9Screen(),
        'ST10Screen':(context) => ST10Screen(),
        'ST11Screen':(context) => ST11Screen(),
        'ST12Screen':(context) => ST12Screen(),
        'ST13Screen':(context) => ST13Screen(),
        'ST14Screen':(context) => ST14Screen(),
        'ST15Screen':(context) => ST15Screen(),
        'ST18Screen':(context) => ST18Screen(),
        'ST19Screen':(context) => ST20Screen(),
        'ST20Screen':(context) => ST21Screen(),
        'ST21Screen':(context) => ST22Screen(),
        'ST23Screen':(context) => ST23Screen(),
        'ST24Screen':(context)=>ST24Screen(),
      },
    );
  }
}
