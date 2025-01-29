import 'package:flutter/material.dart';
// import 'package:health_drug/res/comman/comman_text.dart';
// import 'package:health_drug/res/constant/app_color.dart';
// import 'package:health_drug/res/constant/app_images.dart';
import 'package:healthproject/res/comman/comman_text.dart';
import 'package:healthproject/res/constant/app_color.dart';
import 'package:healthproject/res/constant/app_images.dart';
import 'package:healthproject/st22.dart';

// import 'package:health_drug/res/constant/app_images.dart';

class ST21Screen extends StatefulWidget {
  const ST21Screen({super.key});

  @override
  State<ST21Screen> createState() => _ST21ScreenState();
}

class _ST21ScreenState extends State<ST21Screen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const ST22Screen()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          AppImages.st21,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CommanText(
              text: '          Analysing Prescription',
              weight: 0.020 * height,
              fontWeight: FontWeight.w500,
              color: AppColor.white,
            ),
            SizedBox(
              height: 0.013 * height,
            ),
            Text(
              textAlign: TextAlign.center,
              '               Please wait... We’re using our ATML tech \n\t\t\t\t\t\t\t\t\t\t\t\tto analysing your prescription...',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 0.016 * height,
                  fontWeight: FontWeight.w400,
                  color: AppColor.white),
            )
          ],
        ),
      ]),
    );
  }
}
