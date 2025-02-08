import 'package:flutter/material.dart';
// import 'package:health_drug/res/comman/comman_text.dart';
// import 'package:health_drug/res/constant/app_color.dart';
// import 'package:health_drug/view/st19/st19_screen.dart';
import 'package:healthproject/res/comman/comman_text.dart';
import 'package:healthproject/res/constant/app_color.dart';
import 'package:healthproject/view/st19/st_19_screen.dart';

class ST18Screen extends StatefulWidget {
  const ST18Screen({super.key});

  @override
  State<ST18Screen> createState() => _ST18ScreenState();
}

class _ST18ScreenState extends State<ST18Screen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const ST19Screen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.greencolor,
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'images/Mask group (34).png',
              scale: 3.5,
            ),
          ),
          SizedBox(
            height: 0.008 * height,
          ),
          CommanText(
            text: 'Scanning Prescription',
            weight: 0.020 * height,
            fontWeight: FontWeight.w500,
            color: AppColor.white,
          ),
          SizedBox(
            height: 0.008 * height,
          ),
          CommanText(
            text:
                '       Please Wait.. We’re Currently \nanalyzing your scanner prescription ',
            weight: 0.016 * height,
            fontWeight: FontWeight.w300,
            color: AppColor.white,
          )
        ],
      ),
    );
  }
}
