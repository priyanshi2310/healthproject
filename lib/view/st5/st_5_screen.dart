import 'package:flutter/material.dart';
import 'package:healthproject/view/st6/st_6_screen.dart';
// import 'package:health_drug/view/st6/st6_screen.dart';

class ST5Screen extends StatefulWidget {
  const ST5Screen({super.key});

  @override
  State<ST5Screen> createState() => _ST5ScreenState();
}

class _ST5ScreenState extends State<ST5Screen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const ST6Screen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/ST-5.png'),
          ),
        ),
      ),
    );
  }
}
