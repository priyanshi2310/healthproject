import 'package:flutter/material.dart';
// import 'package:health_drug/res/constant/app_color.dart';
import 'package:healthproject/res/constant/app_color.dart';

class ST15Screen extends StatefulWidget {
  const ST15Screen({super.key});

  @override
  State<ST15Screen> createState() => _ST15ScreenState();
}

class _ST15ScreenState extends State<ST15Screen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 72),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(9),
                  height: 0.160 * height,
                  width: 0.175 * width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColor.white1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 0.061 * height,
                        width: 0.130 * width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColor.greencolor,
                        ),
                        child: Image.asset('images/Mask group (33).png'),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '\nmmhg',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 0.016 * height,
                                fontWeight: FontWeight.w400,
                                color: AppColor.darkgrey,
                              ),
                            ),
                          ],
                          text: '  128',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 0.016 * height,
                            fontWeight: FontWeight.w400,
                            color: AppColor.blackcolor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 0.160 * height,
                  width: 0.175 * width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColor.white1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 0.061 * height,
                        width: 0.130 * width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xffF43F5E),
                        ),
                        child: Icon(
                          Icons.favorite,
                          color: AppColor.white,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '\nkgh',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 0.016 * height,
                                fontWeight: FontWeight.w400,
                                color: AppColor.darkgrey,
                              ),
                            ),
                          ],
                          text: ' 87',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 0.016 * height,
                            fontWeight: FontWeight.w400,
                            color: AppColor.blackcolor,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 0.094 * height,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'ST18Screen');
              },
              child: Container(
                height: 0.350 * height,
                width: 0.700 * width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: AppColor.blackcolor),
                ),
                child: Image.asset(
                  'images/Barcode (1).png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Spacer(),
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColor.white1,
              ),
              child: const Icon(Icons.camera_alt_sharp),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColor.white1,
                    ),
                    child: Image.asset(
                      'images/clock (2) 1 (1).png',
                      color: AppColor.blackcolor,
                      scale: 1.1,
                    )),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColor.white1,
                  ),
                  child: const Icon(Icons.settings),
                ),
              ],
            ),
            const SizedBox(
              height: 85,
            )
          ],
        ),
      ),
    );
  }
}
