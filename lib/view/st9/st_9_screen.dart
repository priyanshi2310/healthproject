import 'package:flutter/material.dart';

import 'package:healthproject/res/comman/comman_text.dart';
import 'package:healthproject/res/constant/app_color.dart';

class ST9Screen extends StatefulWidget {
  const ST9Screen({super.key});

  @override
  State<ST9Screen> createState() => _ST9ScreenState();
}

class _ST9ScreenState extends State<ST9Screen> {


  @override
  Widget build(BuildContext context) {
    print("12312313131");
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff4B5461),
      body: Padding(
        padding: const EdgeInsets.only(left: 32, right: 28, top: 159),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 42, left: 17, right: 18),
              height: 0.521 * height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: AppColor.white,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 0.218 * height,
                    width: 0.731 * width,
                    child: Image.asset(
                      'images/Mask group (26).png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 0.013 * height,
                  ),
                  CommanText(
                    text: 'Password sent to \n*****221b@gmail.com',
                    weight: 0.027 * height,
                    fontWeight: FontWeight.w500,
                    color: AppColor.blackcolor,
                  ),
                  SizedBox(
                    height: 0.008 * height,
                  ),
                  CommanText(
                    text: 'Didn’t recive the link? Then re-send the',
                    weight: 0.016 * height,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff5E6A7B),
                  ),
                  Row(
                    children: [
                      Center(
                        child: CommanText(
                          text: 'password below!',
                          weight: 0.016 * height,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff5E6A7B),
                        ),
                      ),
                      SizedBox(
                        height: 0.020 * height,
                        width: 0.040 * width,
                        child: Image.asset('images/Mask group.jpg'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 0.015 * height,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 17, right: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'ST9Screen');
                      },
                      child: Container(
                        height: 0.060 * height,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColor.greencolor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CommanText(
                              text: 'Re-Send Password',
                              weight: 0.016 * height,
                              fontWeight: FontWeight.w500,
                              color: AppColor.white,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: AppColor.white,
                              size: 0.020 * height,
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 0.084 * height,
            ),
            Container(
              height: 0.050 * height,
              width: 0.060 * width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColor.white,
              ),
              child: const Icon(Icons.close),
            ),
          ],
        ),
      ),
    );
  }
}
