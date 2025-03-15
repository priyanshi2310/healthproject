import 'package:flutter/material.dart';
import 'package:healthproject/res/comman/comman_text.dart';
import 'package:healthproject/res/constant/app_color.dart';
import 'package:healthproject/res/constant/app_images.dart';

import 'package:healthproject/view/st24/st_24_screen.dart';

class ST23Screen extends StatefulWidget {
  const ST23Screen({super.key});

  @override
  State<ST23Screen> createState() => _ST23ScreenState();
}

class _ST23ScreenState extends State<ST23Screen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ST24Screen()));
    });
    super.initState();
  }

  List<String> text1 = [
    "Medication",
    "OTD Drugs",
    "Vitamins",
    "BP",
    "HEART RATE"
  ];
  List<String> images = [
    "images/Rectangle 148.png",
    "images/Rectangle 148 (1).png",
    "images/Rectangle 148 (2).png",
  ];
  List<String> text2 = [
    "Dr. Stone Pharmacy",
    "Medipool Drugstore",
    "Life Life Pharmacy",
  ];
  List<String> text3 = [
    " 4.5",
    " 5",
    " 4.5",
  ];
  List<String> text4 = [
    " John",
    " Adi",
    " Alina",
  ];
  List<String> text5 = [
    "12 km",
    "5 km",
    "7 km",
  ];
  List<String> text6 = [
    "Pinner, NY",
    "Harrow, NY",
    "Brent , NY",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 800,
            width: double.infinity,
            child: Image.asset(
              AppImages.st6,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 76, right: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context, 'ST22Screen');
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColor.white1,
                        ),
                        child: Icon(Icons.arrow_back_ios),
                      ),
                    ),
                    SizedBox(width: 64),
                    CommanText(
                      text: 'Personal Care',
                      weight: 20,
                      fontWeight: FontWeight.w500,
                      color: AppColor.purple,
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      text1.length,
                      (index) {
                        return Container(
                          height: 32,
                          width: 112,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColor.white1,
                          ),
                          child: Center(
                            child: CommanText(
                              text: text1[index],
                              weight: 16,
                              fontWeight: FontWeight.w400,
                              color: AppColor.darkgrey,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '(15)',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColor.darkgrey,
                            ),
                          ),
                        ],
                        text: 'All Pharmacies ',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColor.blackcolor,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 51,
                    ),
                    CommanText(
                      text: 'Most Popular',
                      weight: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColor.purple,
                    ),
                    Image.asset(
                      'images/Mask group (31).png',
                      color: AppColor.greencolor,
                    )
                  ],
                ),
                Expanded(
                  child: SizedBox(
                    height: 185,
                    child: ListView.builder(
                        itemCount: images.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(5),
                            width: double.infinity,
                            height: 185,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColor.white1,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 155,
                                  width: 103,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Image.asset(images[index]),
                                ),
                                SizedBox(
                                  width: 11,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          CommanText(
                                            text: text2[index],
                                            weight: 16,
                                            fontWeight: FontWeight.w500,
                                            color: AppColor.purple,
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Icon(Icons.bookmark_outline)
                                        ],
                                      ),
                                      CommanText(
                                        text:
                                            'It is easy to get a thousand \nprescriptions, but hard to get \none single remedy ',
                                        weight: 14,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.darkgrey,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffE59E0B),
                                          ),
                                          CommanText(
                                            text: text3[index],
                                            weight: 14,
                                            fontWeight: FontWeight.w400,
                                            color: AppColor.darkgrey,
                                          ),
                                          SizedBox(
                                            width: 28,
                                          ),
                                          Icon(Icons.person),
                                          CommanText(
                                            text: text4[index],
                                            weight: 14,
                                            fontWeight: FontWeight.w400,
                                            color: AppColor.darkgrey,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.location_on),
                                          CommanText(
                                            text: text5[index],
                                            weight: 14,
                                            fontWeight: FontWeight.w400,
                                            color: AppColor.darkgrey,
                                          ),
                                          CommanText(
                                            text: '  |  ',
                                            weight: 14,
                                            fontWeight: FontWeight.w400,
                                            color: AppColor.darkgrey,
                                          ),
                                          CommanText(
                                            text: text6[index],
                                            weight: 14,
                                            fontWeight: FontWeight.w400,
                                            color: AppColor.darkgrey,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
