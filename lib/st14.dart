import 'package:flutter/material.dart';
// import 'package:health_drug/res/comman/comman_text.dart';
// import 'package:health_drug/res/comman/comman_textfield.dart';
// import 'package:health_drug/res/constant/app_color.dart';
import 'package:healthproject/res/comman/comman_text.dart';
import 'package:healthproject/res/comman/comman_textfield.dart';
import 'package:healthproject/res/constant/app_color.dart';

class ST14Screen extends StatefulWidget {
  const ST14Screen({super.key});

  @override
  State<ST14Screen> createState() => _ST14ScreenState();
}

class _ST14ScreenState extends State<ST14Screen> {
  List<String> images = [
    "images/Rectangle 116 (1).png",
    "images/Mask group (32).png"
  ];
  List<String> text1 = ["Healthy RX Pharmacy", "Pharmacie Pharmacy"];
  List<String> text2 = ["Maxtra Syrup", "Montair-LC Tablet", "Maxtra Syrup"];
  List<String> text3 = ["5 mg", "1 mg", "5 mg"];
  List<String> text4 = ["\$109.99", "\$99.99", "\$109.99"];
  List<String> images1 = [
    "images/Rectangle 119 (1).png",
    "images/Rectangle 120 (1).png",
    "images/Rectangle 126 (1).png"
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 0.258 * height,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35),
                  ),
                  color: AppColor.greencolor),
              child: Padding(
                padding: const EdgeInsets.only(left: 31, top: 71, right: 31),
                child: Column(
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 0.071 * height,
                          width: 0.120 * width,
                          decoration: BoxDecoration(
                            color: AppColor.white,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.person,
                            size: 0.025 * height,
                          ),
                        ),
                        SizedBox(
                          width: 0.018 * width,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommanText(
                              text: 'Morning, Holo!',
                              weight: 0.020 * height,
                              fontWeight: FontWeight.w400,
                              color: AppColor.white,
                            ),
                            SizedBox(
                              height: 0.012 * height,
                            ),
                            CommanText(
                              text: '252bpm   61% Healthy',
                              weight: 0.016 * height,
                              fontWeight: FontWeight.w400,
                              color: AppColor.white,
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          height: 0.065 * height,
                          width: 0.140 * width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: AppColor.white, width: 1),
                          ),
                          child: Icon(
                            Icons.notification_add,
                            color: AppColor.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 0.017 * height,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 12, top: 7),
                      height: 0.073 * height,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xff2DD4Bf),
                      ),
                      child: CommanTextField(
                        labetlText: 'Delivers To',
                        weight: 0.016 * height,
                        fontWeight: FontWeight.w400,
                        color: AppColor.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 39, left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 0.094 * height,
                        width: 0.188 * height,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xffCCFBF1),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.file_upload_outlined,
                              color: AppColor.greencolor,
                            ),
                            CommanText(
                              text: 'Upload Prescription',
                              weight: 0.016 * height,
                              fontWeight: FontWeight.w400,
                              color: AppColor.purple,
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, 'ST15Screen');
                        },
                        child: Container(
                          height: 0.094 * height,
                          width: 0.188 * height,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xffFEF3C7),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.camera_alt_rounded,
                                color: Color(0xffF59E0B),
                              ),
                              CommanText(
                                text: 'Scan Prescription',
                                weight: 0.016 * height,
                                fontWeight: FontWeight.w400,
                                color: AppColor.purple,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 0.039 * height,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommanText(
                        text: 'Promos',
                        weight: 0.016 * height,
                        fontWeight: FontWeight.w400,
                        color: AppColor.purple,
                      ),
                      CommanText(
                        text: 'See All',
                        weight: 0.016 * height,
                        fontWeight: FontWeight.w400,
                        color: AppColor.greencolor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 0.012 * height,
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    height: 0.139 * height,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColor.white1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CommanText(
                              text: 'Avastin 100mg Injection',
                              weight: 0.016 * height,
                              fontWeight: FontWeight.w400,
                              color: AppColor.purple,
                            ),
                            CommanText(
                              text: '\$120.99',
                              weight: 0.016 * height,
                              fontWeight: FontWeight.w400,
                              color: AppColor.purple,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Color(0xffF59E0B),
                                  size: 0.018 * height,
                                ),
                                SizedBox(
                                  width: 0.008 * width,
                                ),
                                CommanText(
                                  text: '4.5',
                                  weight: 0.016 * height,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.darkgrey,
                                ),
                                SizedBox(
                                  width: 0.011 * width,
                                ),
                                Icon(
                                  Icons.person,
                                  color: AppColor.blackcolor,
                                  size: 0.018 * height,
                                ),
                                SizedBox(
                                  width: 0.008 * width,
                                ),
                                CommanText(
                                  text: '18.2 K',
                                  weight: 0.016 * height,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.darkgrey,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 0.026 * height,
                                    width: 0.152 * width,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: AppColor.greencolor),
                                    child: Center(
                                      child: CommanText(
                                        text: 'Add +',
                                        weight: 0.014 * height,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.white,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.028 * width,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 0.026 * height,
                                    width: 0.160 * width,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          color: AppColor.darkgrey, width: 1),
                                    ),
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CommanText(
                                            text: 'Save',
                                            weight: 0.014 * height,
                                            fontWeight: FontWeight.w400,
                                            color: AppColor.darkgrey,
                                          ),
                                          Icon(
                                            Icons.bookmark,
                                            color: AppColor.darkgrey,
                                            size: 0.018 * height,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Image.asset(
                            'images/Rectangle 92 (1).png',
                            width: 0.164 * width,
                            height: 0.103 * height,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 0.039 * height,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommanText(
                        text: 'My Prescription',
                        weight: 0.016 * height,
                        fontWeight: FontWeight.w400,
                        color: AppColor.purple,
                      ),
                      CommanText(
                        text: 'See All',
                        weight: 0.016 * height,
                        fontWeight: FontWeight.w400,
                        color: AppColor.greencolor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 0.012 * height,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 0.157 * height,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColor.white1,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CommanText(
                              text: 'Jue 15, 2022',
                              weight: 0.013 * height,
                              fontWeight: FontWeight.w400,
                              color: AppColor.darkgrey,
                            ),
                            Container(
                              height: 0.024 * height,
                              width: 0.130 * width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    color: AppColor.darkgrey, width: 1),
                              ),
                              child: Center(
                                child: CommanText(
                                  text: 'Pending',
                                  weight: 0.010 * height,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.darkgrey,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 0.009 * height,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('images/Rectangle 96 (1).png'),
                            Expanded(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CommanText(
                                        text: '  Sirolimus DX',
                                        weight: 0.016 * height,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.purple,
                                      ),
                                      CommanText(
                                        text: '\$180',
                                        weight: 0.016 * height,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.purple,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 0.009 * height,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CommanText(
                                        text: '   25 mg',
                                        weight: 0.013 * height,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.darkgrey,
                                      ),
                                      CommanText(
                                        text: 'Paypal',
                                        weight: 0.013 * height,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.darkgrey,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 0.009 * height,
                                  ),
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          height: 0.032 * height,
                                          width: 0.204 * width,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: const Color(0xffF43F5E),
                                          ),
                                          child: Center(
                                            child: CommanText(
                                              text: 'Cancel',
                                              weight: 0.013 * height,
                                              fontWeight: FontWeight.w400,
                                              color: AppColor.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 0.015 * width,
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          height: 0.032 * height,
                                          width: 0.204 * width,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: AppColor.greencolor,
                                          ),
                                          child: Center(
                                            child: CommanText(
                                              text: 'Add',
                                              weight: 0.013 * height,
                                              fontWeight: FontWeight.w400,
                                              color: AppColor.white,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 0.013 * height,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 0.131 * height,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColor.white1,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CommanText(
                              text: 'Jue 24, 2023',
                              weight: 0.013 * height,
                              fontWeight: FontWeight.w400,
                              color: AppColor.darkgrey,
                            ),
                            Container(
                              height: 0.024 * height,
                              width: 0.130 * width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    color: AppColor.greencolor, width: 1),
                              ),
                              child: Center(
                                child: CommanText(
                                  text: 'Complete',
                                  weight: 0.010 * height,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.greencolor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 0.009 * height,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 0.070 * height,
                              width: 0.140 * width,
                              child:
                                  Image.asset('images/Rectangle 101 (1).png'),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CommanText(
                                        text: '  Actorise 200 Injection',
                                        weight: 0.016 * height,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.purple,
                                      ),
                                      CommanText(
                                        text: '\$199',
                                        weight: 0.016 * height,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.purple,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 0.009 * height,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CommanText(
                                        text: '   200 mg',
                                        weight: 0.013 * height,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.darkgrey,
                                      ),
                                      CommanText(
                                        text: 'Paypal',
                                        weight: 0.013 * height,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.darkgrey,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 0.013 * height,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 0.131 * height,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColor.white1,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CommanText(
                              text: 'Jue 15, 2022',
                              weight: 0.013 * height,
                              fontWeight: FontWeight.w400,
                              color: AppColor.darkgrey,
                            ),
                            Container(
                              height: 0.024 * height,
                              width: 0.130 * width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    color: const Color(0xffF43F5E), width: 1),
                              ),
                              child: Center(
                                child: CommanText(
                                  text: 'Canceled',
                                  weight: 0.010 * height,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffF43F5E),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 0.009 * height,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 0.070 * height,
                              width: 0.140 * width,
                              child:
                                  Image.asset('images/Rectangle 106 (1).png'),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CommanText(
                                        text: '  Armotraz Tablet',
                                        weight: 0.016 * height,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.purple,
                                      ),
                                      CommanText(
                                        text: '\$200',
                                        weight: 0.016 * height,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.purple,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 0.009 * height,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CommanText(
                                        text: '   1 mg',
                                        weight: 0.013 * height,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.darkgrey,
                                      ),
                                      CommanText(
                                        text: 'Paypal',
                                        weight: 0.013 * height,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.darkgrey,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 0.039 * height,
                  ),
                  CommanText(
                    text: 'Featured Banner',
                    weight: 0.016 * height,
                    fontWeight: FontWeight.w400,
                    color: AppColor.purple,
                  ),
                  SizedBox(
                    height: 0.013 * height,
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    height: 0.175 * height,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/Rectangle 112 (1).png'),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '\nLimited Time',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 0.016 * height,
                                    fontWeight: FontWeight.w600,
                                    color: AppColor.white),
                              ),
                            ],
                            text: '       50% OFF',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 0.016 * height,
                                fontWeight: FontWeight.w600,
                                color: AppColor.greencolor),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 0.025 * height,
                            width: 0.200 * width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: AppColor.white),
                            child: Center(
                              child: CommanText(
                                text: 'Registered',
                                weight: 0.014 * height,
                                fontWeight: FontWeight.w400,
                                color: AppColor.darkgrey,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 0.024 * height,
                            width: 0.176 * width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: AppColor.greencolor),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CommanText(
                                  text: 'Try Now',
                                  weight: 0.014 * height,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.white,
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  size: 0.016 * height,
                                  color: AppColor.white,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 0.039 * height,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommanText(
                        text: 'Pharmacies',
                        weight: 0.016 * height,
                        fontWeight: FontWeight.w400,
                        color: AppColor.purple,
                      ),
                      Spacer(),
                      CommanText(
                        text: 'Most Popular',
                        weight: 0.013 * height,
                        fontWeight: FontWeight.w400,
                        color: AppColor.darkgrey,
                      ),
                      Image.asset(
                        'images/Mask group (31).png',
                        color: AppColor.greencolor,
                        scale: 1.5,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 0.207 * height,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 2,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: const EdgeInsets.only(top: 10, right: 10),
                            padding: const EdgeInsetsDirectional.all(8),
                            height: 0.180 * height,
                            width: 0.624 * width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: AppColor.white1),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset(
                                  images[index],
                                ),
                                CommanText(
                                  text: text1[index],
                                  weight: 0.016 * height,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.purple,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color(0xffF59E0B),
                                      size: 0.018 * height,
                                    ),
                                    CommanText(
                                      text: ' 4.5',
                                      weight: 0.013 * height,
                                      fontWeight: FontWeight.w400,
                                      color: AppColor.darkgrey,
                                    ),
                                    SizedBox(
                                      width: 0.011 * width,
                                    ),
                                    Icon(
                                      Icons.person,
                                      color: AppColor.blackcolor,
                                      size: 0.018 * height,
                                    ),
                                    CommanText(
                                      text: ' John lavis',
                                      weight: 0.013 * height,
                                      fontWeight: FontWeight.w400,
                                      color: AppColor.darkgrey,
                                    ),
                                    SizedBox(
                                      width: 0.011 * width,
                                    ),
                                    Icon(
                                      Icons.location_on,
                                      color: AppColor.greencolor,
                                      size: 0.018 * height,
                                    ),
                                    CommanText(
                                      text: ' 5.6 km',
                                      weight: 0.013 * height,
                                      fontWeight: FontWeight.w400,
                                      color: AppColor.darkgrey,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 0.011 * height,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommanText(
                        text: 'Most Popular ',
                        weight: 0.016 * height,
                        fontWeight: FontWeight.w400,
                        color: AppColor.purple,
                      ),
                      CommanText(
                        text: 'See All',
                        weight: 0.013 * height,
                        fontWeight: FontWeight.w400,
                        color: AppColor.greencolor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 0.25 * height,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {},
                            child: Container(
                              margin: const EdgeInsets.only(top: 10, right: 20),
                              padding: const EdgeInsetsDirectional.all(8),
                              height: 0.252 * height,
                              width: 0.304 * width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: AppColor.white1),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset(
                                    images1[index],
                                  ),
                                  CommanText(
                                    text: text2[index],
                                    weight: 0.013 * height,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.purple,
                                  ),
                                  CommanText(
                                    text: text3[index],
                                    weight: 0.013 * height,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.purple,
                                  ),
                                  CommanText(
                                    text: text4[index],
                                    weight: 0.013 * height,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.purple,
                                  ),
                                  Container(
                                    height: 0.032 * height,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: AppColor.greencolor,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CommanText(
                                          text: 'Add',
                                          weight: 0.013 * height,
                                          fontWeight: FontWeight.w400,
                                          color: AppColor.white,
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          color: AppColor.white,
                                          size: 0.015 * height,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
