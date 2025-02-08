import 'package:flutter/material.dart';

import 'package:healthproject/res/comman/comman_text.dart';
import 'package:healthproject/res/constant/app_color.dart';
import 'package:healthproject/res/constant/app_images.dart';
import 'package:healthproject/view/st3/st_3_screen.dart';
import 'package:simple_progress_indicators/simple_progress_indicators.dart';

class ST2Screen extends StatefulWidget {
  const ST2Screen({super.key});

  @override
  State<ST2Screen> createState() => _ST2ScreenState();
}

class _ST2ScreenState extends State<ST2Screen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const ST3Screen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.st2,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: ProgressBarAnimation(
                  duration: const Duration(seconds: 3),
                  color: AppColor.white,
                  backgroundColor: const Color(0xff7E7F7F),
                ),
              ),
              SizedBox(
                height: 0.016 * height,
              ),
              CommanText(
                text: 'Loading...',
                color: AppColor.white,
                weight: 0.016 * height,
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
