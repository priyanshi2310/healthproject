import 'package:flutter/material.dart';
import 'package:healthproject/res/comman/comman_text.dart';
import 'package:healthproject/res/constant/app_color.dart';

class ST24Screen extends StatefulWidget {
  const ST24Screen({super.key});

  @override
  State<ST24Screen> createState() => _ST24ScreenState();
}

class _ST24ScreenState extends State<ST24Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 457,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/Rectangle 149.png'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35),
                  ),
                ),
              ),
              Positioned(
                top: 72,
                left: 30,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColor.white1,
                  ),
                  child: Icon(Icons.arrow_forward_ios, color: AppColor.purple),
                ),
              ),
              Positioned(
                top: 171,
                left: 20,
                right: 20,
                child: Container(
                  padding: EdgeInsets.only(
                    top: 29,
                    left: 20,
                    bottom: 10,
                  ),
                  height: 255,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColor.white,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 24),
                            height: 29,
                            width: 126,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColor.white1,
                            ),
                            child: Center(
                              child: CommanText(
                                text: 'Product Care',
                                weight: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColor.blackcolor,
                              ),
                            ),
                          ),
                          Container(
                            height: 29,
                            width: 59,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColor.white1,
                            ),
                            child: Center(
                              child: CommanText(
                                text: 'Drug',
                                weight: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColor.blackcolor,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 24),
                            height: 29,
                            width: 72,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffFEF6D5),
                            ),
                            child: Center(
                              child: CommanText(
                                text: '25% OFF',
                                weight: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffF8B846),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      CommanText(
                        text: 'Dr. Stone Pharmacy',
                        weight: 20,
                        fontWeight: FontWeight.w600,
                        color: AppColor.purple,
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      CommanText(
                        text:
                            'Welcome to Dr. Stone Pharmacy Your trusted Knighthood Pharmacy outdoors to broken... ',
                        weight: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColor.darkgrey,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 36,
                            width: 149,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColor.greencolor,
                            ),
                            child: Center(
                              child: CommanText(
                                text: 'Favourite',
                                weight: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColor.blackcolor,
                              ),
                            ),
                          ),
                          Container(
                            height: 36,
                            width: 149,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColor.purple,
                            ),
                            child: Center(
                              child: CommanText(
                                text: 'Learn More',
                                weight: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColor.white,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: AppColor.darkgrey,
                        indent: 10,
                        endIndent: 15,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CommanText(
                            text: '  Free Delivery',
                            weight: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.darkgrey,
                          ),
                          CommanText(
                            text: '    Every Day',
                            weight: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.darkgrey,
                          ),
                          CommanText(
                            text: '  Promo Code',
                            weight: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.darkgrey,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 139,
                left: 165,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColor.white1,
                  ),
                  child: Image.asset(
                    'images/Mask group (34).png',
                    color: AppColor.greencolor,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 27,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              children: [
                CommanText(
                  text: 'Search Products',
                  weight: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColor.purple,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
