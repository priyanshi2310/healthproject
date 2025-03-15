import 'package:flutter/material.dart';

import 'package:healthproject/res/comman/comman_text.dart';
import 'package:healthproject/res/constant/app_color.dart';

class ST13Screen extends StatefulWidget {
  const ST13Screen({super.key});

  @override
  State<ST13Screen> createState() => _ST13ScreenState();
}

class _ST13ScreenState extends State<ST13Screen> {
  int selectcolor = 0;
  int selctindex = 0;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 72, left: 32, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 0.075 * height,
                    width: 0.150 * width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColor.white1,
                    ),
                    child: const Icon(Icons.arrow_back_ios),
                  ),
                  CommanText(
                    text: 'Heart Rate',
                    weight: 0.020 * height,
                    fontWeight: FontWeight.w500,
                    color: AppColor.purple,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'ST14Screen');
                    },
                    child: Container(
                      height: 0.075 * height,
                      width: 0.150 * width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColor.white1,
                      ),
                      child: Icon(
                        Icons.equalizer,
                        color: AppColor.blackcolor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 0.030 * height,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 0.035 * height,
                  width: 0.070 * width,
                  child: Image.asset('images/like 1 (1).png'),
                ),
                SizedBox(
                  width: 0.008 * width,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'BPM',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 0.020 * height,
                          color: AppColor.darkgrey,
                        ),
                      ),
                    ],
                    text: '95',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 0.064 * height,
                      color: AppColor.purple,
                    ),
                  ),
                ),
              ],
            ),
            CommanText(
              text: 'No heart rate Irregularities',
              weight: 0.016 * height,
              fontWeight: FontWeight.w400,
              color: AppColor.darkgrey,
            ),
            SizedBox(
              height: 0.040 * height,
            ),
            SizedBox(
              height: 0.593 * height,
              width: double.infinity,
              child: Image.asset(
                'images/Vector 1 (1).png',
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(19),
              // height: 52,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColor.white1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 0.046 * height,
                    width: 0.077 * height,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: selectcolor == 0
                            ? AppColor.blackcolor
                            : AppColor.white),
                    child: Center(
                      child: CommanText(
                        text: '1 Day',
                        weight: 0.016 * height,
                        fontWeight: FontWeight.w500,
                        color: selectcolor == 0
                            ? AppColor.white
                            : AppColor.blackcolor,
                      ),
                    ),
                  ),
                  Container(
                    height: 0.046 * height,
                    width: 0.077 * height,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: selectcolor == 1
                            ? AppColor.blackcolor
                            : AppColor.white),
                    child: Center(
                      child: CommanText(
                        text: '1 Week',
                        weight: 0.016 * height,
                        fontWeight: FontWeight.w500,
                        color: selectcolor == 1
                            ? AppColor.white
                            : AppColor.blackcolor,
                      ),
                    ),
                  ),
                  Container(
                    height: 0.046 * height,
                    width: 0.077 * height,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: selectcolor == 2
                            ? AppColor.blackcolor
                            : AppColor.white),
                    child: Center(
                      child: CommanText(
                        text: '1 Month',
                        weight: 0.016 * height,
                        fontWeight: FontWeight.w500,
                        color: selectcolor == 2
                            ? AppColor.white
                            : AppColor.blackcolor,
                      ),
                    ),
                  ),
                  Container(
                    height: 0.046 * height,
                    width: 0.077 * height,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: selectcolor == 3
                            ? AppColor.blackcolor
                            : AppColor.white),
                    child: Center(
                      child: CommanText(
                        text: '1 Year',
                        weight: 0.016 * height,
                        fontWeight: FontWeight.w500,
                        color: selectcolor == 3
                            ? AppColor.white
                            : AppColor.blackcolor,
                      ),
                    ),
                  ),
                  Container(
                    height: 0.046 * height,
                    width: 0.077 * height,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: selectcolor == 4
                            ? AppColor.blackcolor
                            : AppColor.white),
                    child: Center(
                      child: CommanText(
                        text: 'All',
                        weight: 0.016 * height,
                        fontWeight: FontWeight.w500,
                        color: selectcolor == 4
                            ? AppColor.white
                            : AppColor.blackcolor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
