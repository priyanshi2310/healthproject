import 'package:flutter/material.dart';

import 'package:healthproject/res/comman/comman_text.dart';
import 'package:healthproject/view/st2/st_2_screen.dart';

class ST1Screen extends StatefulWidget {
  const ST1Screen({super.key});

  @override
  State<ST1Screen> createState() => _ST1ScreenState();
}

class _ST1ScreenState extends State<ST1Screen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const ST2Screen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'images/health drug-01 2 (2).png',
              // scale: 1.2,
            ),
          ),
          SizedBox(
            height: 0.020 * height,
          ),
          CommanText(
            text: 'AI Medical & E- Pharmacy Solutions For All.',
            weight: 0.016 * height,
            fontWeight: FontWeight.w400,
            color: const Color(0xff525F71),
          )
        ],
      ),
    );
  }
}
