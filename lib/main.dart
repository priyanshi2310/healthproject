import 'package:flutter/material.dart';
import 'package:healthproject/view/st13/st_13_screen.dart';
import 'package:healthproject/view/st24/st_screen.dart';
import 'package:healthproject/view/st1/st_1_screen.dart';
import 'package:healthproject/view/st10/st_10_screen.dart';
import 'package:healthproject/view/st11/st_11_screen.dart';
import 'package:healthproject/view/st12/st_12_screen.dart';
// import 'package:healthproject/view/st13/st13.dart';
import 'package:healthproject/view/st14/st_14_screen.dart';
import 'package:healthproject/view/st15/st_15_screen.dart';
import 'package:healthproject/view/st18/st_18_screen.dart';
import 'package:healthproject/view/st2/st_2_screen.dart';
import 'package:healthproject/view/st20/st_20_screen.dart';
import 'package:healthproject/view/st21/st_21_screen.dart';
import 'package:healthproject/view/st22/st_22_screen.dart';
import 'package:healthproject/view/st23/st_23_screen.dart';
import 'package:healthproject/view/st24/st_24_screen.dart';

// import 'package:healthproject/st24.dart';
import 'package:healthproject/view/st3/st_3_screen.dart';
import 'package:healthproject/view/st4/st_4_screen.dart';
import 'package:healthproject/view/st5/st_5_screen.dart';
import 'package:healthproject/view/st6/st_6_screen.dart';
import 'package:healthproject/view/st7/st_7_screen.dart';
import 'package:healthproject/view/st8/st_8_screen.dart';
import 'package:healthproject/view/st9/st_9_screen.dart';

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
        'ST9Screen': (context) => const ST9Screen(),
        'ST10Screen': (context) => ST10Screen(),
        'ST11Screen': (context) => ST11Screen(),
        'ST12Screen': (context) => ST12Screen(),
        'ST13Screen': (context) => ST13Screen(),
        'ST14Screen': (context) => ST14Screen(),
        'ST15Screen': (context) => ST15Screen(),
        'ST18Screen': (context) => ST18Screen(),
        'ST19Screen': (context) => ST20Screen(),
        'ST20Screen': (context) => ST21Screen(),
        'ST21Screen': (context) => ST22Screen(),
        'ST23Screen': (context) => ST23Screen(),
        'STScreen': (context) => STScreen(),
        'ST24Screen': (context) => ST24Screen(),
      },
    );
  }
}
