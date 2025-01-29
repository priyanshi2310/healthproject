import 'package:flutter/material.dart';

import 'package:healthproject/res/comman/comman_text.dart';
import 'package:healthproject/res/constant/app_color.dart';
import 'package:healthproject/res/constant/app_images.dart';
import 'package:healthproject/st4.dart';

class ST3Screen extends StatefulWidget {
  const ST3Screen({super.key});

  @override
  State<ST3Screen> createState() => _ST3ScreenState();
}

class _ST3ScreenState extends State<ST3Screen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const ST4Screen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.st3,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            top: 571,
            left: 54,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 0.096 * height,
                  width: 0.096 * width,
                  child: CommanText(
                    text: '“',
                    weight: 0.096 * height,
                    fontWeight: FontWeight.w400,
                    color: AppColor.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 11),
                  child: SizedBox(
                    height: 0.110 * height,
                    width: 0.650 * width,
                    child: CommanText(
                      text:
                          'Medicine is a science of uncertainty and an art of probability.',
                      weight: 0.024 * height,
                      fontWeight: FontWeight.w400,
                      color: AppColor.white,
                    ),
                  ),
                ),
                CommanText(
                  text: '              -FLORENCE NIGHTINGALE',
                  weight: 0.016 * height,
                  fontWeight: FontWeight.w400,
                  color: AppColor.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
