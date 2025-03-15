import 'package:flutter/material.dart';

import 'package:healthproject/res/comman/comman_text.dart';
import 'package:healthproject/res/constant/app_color.dart';

class ST11Screen extends StatefulWidget {
  const ST11Screen({super.key});

  @override
  State<ST11Screen> createState() => _ST11ScreenState();
}

class _ST11ScreenState extends State<ST11Screen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff4B5462),
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
                  Image.asset('images/Mask group (27).png'),
                  SizedBox(
                    height: 0.022 * height,
                  ),
                  CommanText(
                    text: 'What is nightingale Score?',
                    weight: 0.020 * height,
                    fontWeight: FontWeight.w500,
                    color: AppColor.purple,
                  ),
                  SizedBox(
                    height: 0.006 * height,
                  ),
                  CommanText(
                    text:
                        '  The nightingale Score is a comprehensive \n  health & medical score provide by AI. It \n  Summarizes overall health status based \n                         on your data.  ',
                    weight: 0.016 * height,
                    fontWeight: FontWeight.w300,
                    color: const Color(0xff5E6A7B),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'ST12Screen');
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
