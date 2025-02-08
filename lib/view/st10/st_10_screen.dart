import 'package:flutter/material.dart';
// import 'package:health_drug/res/comman/comman_text.dart';
// import 'package:health_drug/res/constant/app_color.dart';
import 'package:healthproject/res/comman/comman_text.dart';
import 'package:healthproject/res/constant/app_color.dart';

class ST10Screen extends StatefulWidget {
  const ST10Screen({Key? key}) : super(key: key);

  @override
  ST10ScreenState createState() => ST10ScreenState();
}

class ST10ScreenState extends State<ST10Screen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 0.380 * height,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColor.greencolor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 60, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 0.070 * height,
                      width: 0.150 * width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xff60CFC3),
                      ),
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context, 'ST9Screen');
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: AppColor.white,
                            size: 0.025 * height,
                          ),
                        ),
                      ),
                    ),
                    CommanText(
                      text: 'Nightingale Score',
                      weight: 0.016 * height,
                      fontWeight: FontWeight.w400,
                      color: AppColor.white,
                    ),
                    Container(
                      height: 0.070 * height,
                      width: 0.150 * width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xff60CFC3),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.help,
                          color: AppColor.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 0.022 * height,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 0.080 * height,
                      width: 0.160 * width,
                      child: Image.asset('images/Mask group (28).png'),
                    ),
                    CommanText(
                      text: '80.2',
                      weight: 0.064 * height,
                      fontWeight: FontWeight.bold,
                      color: AppColor.white,
                    ),
                  ],
                ),
                SizedBox(
                  height: 0.036 * height,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CommanText(
                      text: '    Mild Hypertension',
                      weight: 0.016 * height,
                      fontWeight: FontWeight.w400,
                      color: AppColor.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            left: 170,
            top: 290,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'ST11Screen');
              },
              child: Container(
                height: 0.070 * height,
                width: 0.150 * width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColor.purple,
                ),
                child: Icon(
                  Icons.bar_chart_outlined,
                  size: 0.025 * height,
                  color: AppColor.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommanText(
                  text: 'Health Overview',
                  weight: 0.016 * height,
                  fontWeight: FontWeight.w400,
                  color: AppColor.purple,
                ),
                SizedBox(
                  height: 0.025 * height,
                ),
                Card(
                  child: ListTile(
                    tileColor: const Color(0xffF1F5F9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    leading: Container(
                      height: 0.070 * height,
                      width: 0.150 * width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColor.white,
                      ),
                      child: Icon(
                        Icons.favorite,
                        color: AppColor.greencolor,
                      ),
                    ),
                    title: CommanText(
                      text: 'Heart Rate',
                      weight: 0.016 * height,
                      fontWeight: FontWeight.w400,
                      color: AppColor.purple,
                    ),
                    subtitle: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'bpm',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 0.016 * height,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff5E6A7B),
                            ),
                          ),
                        ],
                        text: '95',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 0.024 * height,
                          fontWeight: FontWeight.w400,
                          color: AppColor.purple,
                        ),
                      ),
                    ),
                    trailing: Image.asset('images/music (1) 1 (1).png'),
                  ),
                ),
                SizedBox(
                  height: 0.020 * height,
                ),
                Card(
                  child: ListTile(
                    trailing: Image.asset('images/music 1 (1).png'),
                    tileColor: const Color(0xffF1F5F9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    leading: Container(
                        height: 0.070 * height,
                        width: 0.150 * width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColor.white,
                        ),
                        child: Image.asset(
                          'images/blood (2) 1 (1).png',
                          scale: 1.3,
                        )),
                    title: CommanText(
                      text: 'Blood Pressure',
                      weight: 0.016 * height,
                      fontWeight: FontWeight.w400,
                      color: AppColor.purple,
                    ),
                    subtitle: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'mmg',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 0.016 * height,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff5E6A7B),
                            ),
                          ),
                        ],
                        text: '121',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 0.024 * height,
                          fontWeight: FontWeight.w400,
                          color: AppColor.purple,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.020 * height,
                ),
                Card(
                  child: ListTile(
                    trailing: Image.asset('images/music (1) 2 (1).png'),
                    tileColor: const Color(0xffF1F5F9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    leading: Container(
                        height: 0.070 * height,
                        width: 0.150 * width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColor.white,
                        ),
                        child: Image.asset(
                          'images/zzz-sleep-symbol 1 (1).png',
                          scale: 1.3,
                        )),
                    title: CommanText(
                      text: 'Sleep',
                      weight: 0.016 * height,
                      fontWeight: FontWeight.w400,
                      color: AppColor.purple,
                    ),
                    subtitle: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'hr/day',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 0.016 * height,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff5E6A7B),
                            ),
                          ),
                        ],
                        text: '6.5',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 0.024 * height,
                          fontWeight: FontWeight.w400,
                          color: AppColor.purple,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.020 * height,
                ),
                Card(
                  child: ListTile(
                    trailing: Image.asset('images/music (1) 2 (1).png'),
                    tileColor: const Color(0xffF1F5F9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    leading: Container(
                        height: 0.070 * height,
                        width: 0.150 * width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColor.white,
                        ),
                        child: Image.asset(
                          'images/calories 1 (1).png',
                          scale: 1.3,
                        )),
                    title: CommanText(
                      text: 'Calorie',
                      weight: 0.016 * height,
                      fontWeight: FontWeight.w400,
                      color: AppColor.purple,
                    ),
                    subtitle: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'kcal',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 0.016 * height,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff5E6A7B),
                            ),
                          ),
                        ],
                        text: '1,578',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 0.024 * height,
                          fontWeight: FontWeight.w400,
                          color: AppColor.purple,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.068 * height,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
