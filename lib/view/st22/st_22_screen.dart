import 'package:flutter/material.dart';
// import 'package:health_drug/res/comman/comman_text.dart';
// import 'package:health_drug/res/constant/app_color.dart';
import 'package:healthproject/res/comman/comman_text.dart';
import 'package:healthproject/res/constant/app_color.dart';

class ST22Screen extends StatefulWidget {
  const ST22Screen({super.key});

  @override
  State<ST22Screen> createState() => _ST22ScreenState();
}

class _ST22ScreenState extends State<ST22Screen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff3C4657),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Container(
              padding: const EdgeInsets.only(left: 17, right: 17, top: 13),
              height: 0.486 * height,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColor.white,
              ),
              child: Column(
                children: [
                  Image.asset('images/Rectangle 75 (1).png'),
                  SizedBox(
                    height: 0.022 * height,
                  ),
                  CommanText(
                    text:
                        '  Prescription Uploaded & \n\t\t\t\t\t\t\t\tSent Successfully.',
                    weight: 0.020 * height,
                    fontWeight: FontWeight.w600,
                    color: AppColor.purple,
                  ),
                  SizedBox(
                    height: 0.006 * height,
                  ),
                  CommanText(
                    text:
                        '  You can check the prescription status on you profile and you can notified once the store prescription your order.',
                    weight: 0.016 * height,
                    fontWeight: FontWeight.w300,
                    color: const Color(0xff5E6A7B),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'ST23Screen');
                    },
                    child: Container(
                      height: 0.059 * height,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColor.greencolor),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CommanText(
                            text: 'Great, Thanks!',
                            weight: 0.020 * height,
                            fontWeight: FontWeight.w500,
                            color: AppColor.white,
                          ),
                          Icon(
                            Icons.check,
                            color: AppColor.white,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 0.027 * height,
                  )
                ],
              ),
            ),
            const Spacer(),
            Container(
              height: 0.050 * height,
              width: 0.110 * width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColor.white,
              ),
              child: const Icon(Icons.close),
            ),
            SizedBox(
              height: 0.059 * height,
            )
          ],
        ),
      ),
    );
  }
}
