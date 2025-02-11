import 'package:flutter/material.dart';
import 'package:healthproject/res/comman/comman_text.dart';
import 'package:healthproject/res/constant/app_color.dart';

class ST25Screen extends StatefulWidget {
  const ST25Screen({super.key});

  @override
  State<ST25Screen> createState() => _ST25ScreenState();
}

class _ST25ScreenState extends State<ST25Screen> {
  int selectcolor = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 20, top: 70, right: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColor.white1,
                      ),
                      child: Icon(Icons.arrow_back_ios),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CommanText(
                      text: 'Pharmacy Details',
                      fontWeight: FontWeight.w500,
                      weight: 20,
                      color: AppColor.purple,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      height: 46,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffF1F5F9),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                selectcolor = 0;
                              });
                            },
                            child: Container(
                              height: 33,
                              width: 64,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: selectcolor == 0
                                    ? Color(0xffFFFFFF)
                                    : Color(0xffF1F5F9),
                              ),
                              child: Center(
                                child: CommanText(
                                  text: 'Info',
                                  weight: 16,
                                  fontWeight: FontWeight.w400,
                                  color: selectcolor == 0
                                      ? Color(0xff1E293A)
                                      : Color(0xff475568),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                selectcolor = 1;
                              });
                            },
                            child: Container(
                              height: 33,
                              width: 64,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: selectcolor == 1
                                    ? Color(0xffFFFFFF)
                                    : Color(0xffF1F5F9),
                              ),
                              child: Center(
                                child: CommanText(
                                  text: 'Review',
                                  weight: 16,
                                  fontWeight: FontWeight.w400,
                                  color: selectcolor == 0
                                      ? Color(0xff1E293A)
                                      : Color(0xff475568),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                selectcolor = 2;
                              });
                            },
                            child: Container(
                              height: 33,
                              width: 64,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: selectcolor == 2
                                    ? Color(0xffFFFFFF)
                                    : Color(0xffF1F5F9),
                              ),
                              child: Center(
                                child: CommanText(
                                  text: 'FAQ',
                                  weight: 16,
                                  fontWeight: FontWeight.w400,
                                  color: selectcolor == 0
                                      ? Color(0xff1E293A)
                                      : Color(0xff475568),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 81,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColor.grey,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('images/Rectangle 162.png'),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CommanText(
                                text: 'Stone Pharmacy',
                                weight: 16,
                                fontWeight: FontWeight.w500,
                                color: AppColor.purple,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              CommanText(
                                text: '53, Cherry Court, Harrow, NY ',
                                weight: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColor.darkgrey,
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    CommanText(
                      text: 'Order & Delivery',
                      weight: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColor.purple,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: AppColor.darkgrey,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        CommanText(
                          text: 'Delivery Access your area',
                          weight: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColor.darkgrey,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_month,
                          color: Color(0xffA855F7),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        CommanText(
                          text: 'Online evrey day delivery',
                          weight: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColor.darkgrey,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.cancel,
                          color: Color(0xffF43F5E),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        CommanText(
                          text: 'Tight Cancellation Policy',
                          weight: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColor.darkgrey,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'images/Mask group (39).png',
                          scale: 0.9,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        CommanText(
                          text: 'Other Promo Code',
                          weight: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColor.darkgrey,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommanText(
                          text: 'Tags',
                          weight: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColor.purple,
                        ),
                        CommanText(
                          text: '18+',
                          weight: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColor.darkgrey,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 33,
                          width: 97,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColor.grey,
                          ),
                          child: Center(
                            child: CommanText(
                              text: 'Pharmacy+',
                              weight: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColor.darkgrey,
                            ),
                          ),
                        ),
                        Container(
                          height: 33,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColor.grey,
                          ),
                          child: Center(
                            child: CommanText(
                              text: 'Personal Care',
                              weight: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColor.darkgrey,
                            ),
                          ),
                        ),
                        Container(
                          height: 33,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColor.grey,
                          ),
                          child: Center(
                            child: CommanText(
                              text: 'Pagination Care',
                              weight: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColor.darkgrey,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 33,
                          width: 97,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColor.grey,
                          ),
                          child: Center(
                            child: CommanText(
                              text: 'Pharmacy+',
                              weight: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColor.darkgrey,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Container(
                          height: 33,
                          width: 64,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColor.grey,
                          ),
                          child: Center(
                            child: CommanText(
                              text: 'Drugs',
                              weight: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColor.darkgrey,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Container(
                          height: 33,
                          width: 64,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColor.grey,
                          ),
                          child: Center(
                            child: CommanText(
                              text: 'ATML',
                              weight: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColor.darkgrey,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    CommanText(
                      text: 'Cancellation Policy',
                      weight: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColor.purple,
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    CommanText(
                      text:
                          'While filling the cancellation form, you will need to fill in certain information like the reason for the  cancellation of the policy, policy details, date of receipt of the policy document, etc.',
                      weight: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColor.darkgrey,
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: 16,
                      ),
                      height: 45,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Color(0xffF44764),
                        ),
                        color: Color(0xffFFE4E6),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.warning,
                            color: Color(0xffF54360),
                          ),
                          SizedBox(
                            width: 9,
                          ),
                          CommanText(
                            text: 'We only cancel within 24 hours',
                            weight: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.darkgrey,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    CommanText(
                      text: 'Store Information',
                      weight: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColor.purple,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: AppColor.blackcolor,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        CommanText(
                          text: '53, Cherry Court, Harrow, NY ',
                          weight: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColor.darkgrey,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.phone_in_talk,
                          color: AppColor.blackcolor,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        CommanText(
                          text: '+44 74420 97823',
                          weight: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColor.darkgrey,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.email,
                          color: AppColor.blackcolor,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        CommanText(
                          text: 'stonepharma@.com',
                          weight: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColor.darkgrey,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.schedule,
                          color: AppColor.blackcolor,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        CommanText(
                          text: '8:00 AM - 6:00 PM PST Time',
                          weight: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColor.darkgrey,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
