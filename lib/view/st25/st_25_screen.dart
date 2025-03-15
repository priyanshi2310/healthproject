import 'package:flutter/material.dart';
import 'package:healthproject/res/comman/comman_text.dart';
import 'package:healthproject/res/constant/app_color.dart';
import 'package:healthproject/view/st28/st_28_screen.dart';



class ST25Screen extends StatefulWidget {
  const ST25Screen({super.key});

  @override
  State<ST25Screen> createState() => _ST25ScreenState();
}

class _ST25ScreenState extends State<ST25Screen> {
  int selectcolor = 0;

  List<String> text = ['FR', 'WH', 'DG', 'AI', 'AB'];
  List<String> text1 = ['Frahan Rakhel', 'Whitney', 'Dean', 'Alis', 'Aabid'];
  List<String> text2 = ['8d ago', '10d ago', '11d ago', '15d ago', '20d ago'];
  List<String> text3 = [
    'Doctor on Demand is a telemedicine service\nthat provides care on-demand and by \nappointment, for various physical and mental.',
    'Talkspace is an online therapy platform \nthat gives users access to licensed \ntherapists and psychiatrists from..',
    'Teladoc is an on-demand telehealth \nservice that connects patients with \nvirtual care for non-life-threatening',
    'he Healow app is designed to give \nusers immediate access to consolidated \nhealthcare records from participating',
    'Based on the popular website,the WebMD\ngives users access to information and\nresources,including a Symptom Checker..',
  ];
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ST28Screen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 20, top: 70, right: 20),
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
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 46,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffF1F5F9),
                ),
                child: TabBar(
                  dividerColor: AppColor.white1,
                  indicatorPadding: EdgeInsets.all(5),
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: AppColor.greencolor,
                  unselectedLabelColor: AppColor.blackcolor,
                  indicator: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  tabs: [
                    Tab(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selectcolor = 0;
                          });
                        },
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
                    Tab(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selectcolor = 1;
                          });
                        },
                        child: CommanText(
                          text: 'Review',
                          weight: 16,
                          fontWeight: FontWeight.w400,
                          color: selectcolor == 1
                              ? Color(0xff1E293A)
                              : Color(0xff475568),
                        ),
                      ),
                    ),
                    Tab(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selectcolor = 2;
                          });
                        },
                        child: CommanText(
                          text: 'FAQ',
                          weight: 16,
                          fontWeight: FontWeight.w400,
                          color: selectcolor == 2
                              ? Color(0xff1E293A)
                              : Color(0xff475568),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                            height: 37,
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
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            padding:
                                EdgeInsets.only(top: 10, bottom: 10, left: 7),
                            height: 115,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColor.grey,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 95,
                                  width: 95,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color(0xffF59E0B),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: '\n352 Review',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColor.primaryColor,
                                                ),
                                              ),
                                            ],
                                            text: ' 4.5',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 40,
                                              fontWeight: FontWeight.w400,
                                              color: AppColor.primaryColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // Spacer(),
                                // RatingSummary(
                                //   counter: 13,
                                //   average: 3.846,
                                //   counterFiveStars: 5,
                                //   counterFourStars: 4,
                                //   counterThreeStars: 2,
                                //   counterTwoStars: 1,
                                //   counterOneStars: 1,
                                // ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 43,
                          ),
                          Row(
                            children: [
                              CommanText(
                                text: 'All Reviews',
                                weight: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColor.purple,
                              ),
                              Spacer(),
                              Icon(
                                Icons.calendar_month_outlined,
                                color: AppColor.greencolor,
                                size: 15,
                              ),
                              CommanText(
                                text: ' Newest',
                                weight: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColor.purple,
                              ),
                              Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: AppColor.greencolor,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          SizedBox(
                            height: 400,
                            child: ListView.builder(
                                itemCount: text.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    padding: EdgeInsets.all(8),
                                    margin: EdgeInsets.all(10),
                                    height: 115,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: AppColor.grey,
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 54,
                                          width: 54,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: AppColor.white,
                                          ),
                                          child: Center(
                                            child: CommanText(
                                              text: text[index],
                                              weight: 20,
                                              fontWeight: FontWeight.bold,
                                              color: AppColor.blackcolor,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 13,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CommanText(
                                              text: text1[index],
                                              weight: 16,
                                              fontWeight: FontWeight.w500,
                                              color: AppColor.purple,
                                            ),
                                            Row(
                                              children: [
                                                CommanText(
                                                  text: text2[index],
                                                  weight: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColor.darkgrey,
                                                ),
                                                SizedBox(
                                                  width: 16,
                                                ),
                                                CommanText(
                                                  text: 'Verified',
                                                  weight: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColor.darkgrey,
                                                ),
                                              ],
                                            ),
                                            CommanText(
                                              text: text3[index],
                                              weight: 11,
                                              fontWeight: FontWeight.w400,
                                              color: AppColor.darkgrey,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                          )
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                selectcolor = 0;
                              });
                            },
                            child: Card(
                              color: AppColor.grey,
                              margin: EdgeInsets.all(10),
                              child: ExpansionTile(
                                title: CommanText(
                                  text:
                                      'How can I place an order for my prescription medications?',
                                  weight: 16,
                                  fontWeight: FontWeight.w500,
                                  color: selectcolor == 0
                                      ? AppColor.white
                                      : AppColor.purple,
                                ),
                                trailing: Container(
                                  height: 22,
                                  width: 22,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: AppColor.primaryColor,
                                  ),
                                  child:
                                      Icon(Icons.keyboard_arrow_down_rounded),
                                ),
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'To place an order for your prescription medications, you can follow these steps: ...', // Your answer text here
                                      style: TextStyle(
                                        color: selectcolor == 0
                                            ? AppColor.primaryColor
                                            : Color(0xff1E293A),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                selectcolor = 1;
                              });
                            },
                            child: Card(
                              color: AppColor.grey,
                              margin: EdgeInsets.all(10),
                              child: ExpansionTile(
                                title: CommanText(
                                  text: 'Do you accept insurance?',
                                  weight: 16,
                                  fontWeight: FontWeight.w500,
                                  color: selectcolor == 1
                                      ? AppColor.primaryColor
                                      : Color(0xff1E293A),
                                ),
                                trailing: Container(
                                  height: 22,
                                  width: 22,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: AppColor.primaryColor,
                                  ),
                                  child:
                                      Icon(Icons.keyboard_arrow_down_rounded),
                                ),
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Yes, I have insurance, During theCharacter you’ll have the options.',
                                      style: TextStyle(
                                        color: selectcolor == 1
                                            ? AppColor.primaryColor
                                            : Color(0xff1E293A),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            color: AppColor.grey,
                            margin: EdgeInsets.all(10),
                            child: ExpansionTile(
                              title: CommanText(
                                text: 'What payment methods do you accept?',
                                weight: 16,
                                fontWeight: FontWeight.w500,
                                color: selectcolor == 2
                                    ? AppColor.primaryColor
                                    : Color(0xff1E293A),
                              ),
                              trailing: Container(
                                height: 22,
                                width: 22,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: AppColor.primaryColor,
                                ),
                                child: Icon(Icons.keyboard_arrow_down_rounded),
                              ),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Yes, we accept multiple payment methods including credit cards.',
                                    style: TextStyle(
                                      color: selectcolor == 2
                                          ? AppColor.primaryColor
                                          : Color(0xff1E293A),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Card(
                            color: AppColor.grey,
                            margin: EdgeInsets.all(10),
                            child: ExpansionTile(
                              title: CommanText(
                                text: 'Can I refill my prescriptions online?',
                                weight: 16,
                                fontWeight: FontWeight.w500,
                                color: selectcolor == 3
                                    ? AppColor.primaryColor
                                    : Color(0xff1E293A),
                              ),
                              trailing: Container(
                                height: 22,
                                width: 22,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: AppColor.primaryColor,
                                ),
                                child: Icon(Icons.keyboard_arrow_down_rounded),
                              ),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Yes, you can refill your prescriptions online through our website.',
                                    style: TextStyle(
                                      color: selectcolor == 3
                                          ? AppColor.primaryColor
                                          : Color(0xff1E293A),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Card(
                            color: AppColor.grey,
                            margin: EdgeInsets.all(10),
                            child: ExpansionTile(
                              title: CommanText(
                                text:
                                    'How long will the prescription order take to process?',
                                weight: 16,
                                fontWeight: FontWeight.w500,
                                color: selectcolor == 4
                                    ? AppColor.primaryColor
                                    : Color(0xff1E293A),
                              ),
                              trailing: Container(
                                height: 22,
                                width: 22,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: AppColor.primaryColor,
                                ),
                                child: Icon(Icons.keyboard_arrow_down_rounded),
                              ),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Orders are usually processed within 1-2 business days.',
                                    style: TextStyle(
                                      color: selectcolor == 4
                                          ? AppColor.primaryColor
                                          : Color(0xff1E293A),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Card(
                            color: AppColor.grey,
                            margin: EdgeInsets.all(10),
                            child: ExpansionTile(
                              title: CommanText(
                                text:
                                    'Do you offer prescription delivery services?',
                                weight: 16,
                                fontWeight: FontWeight.w500,
                                color: selectcolor == 5
                                    ? AppColor.primaryColor
                                    : Color(0xff1E293A),
                              ),
                              trailing: Container(
                                height: 22,
                                width: 22,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: AppColor.primaryColor,
                                ),
                                child: Icon(Icons.keyboard_arrow_down_rounded),
                              ),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Yes, we offer delivery services within certain locations.',
                                    style: TextStyle(
                                      color: selectcolor == 5
                                          ? AppColor.primaryColor
                                          : Color(0xff1E293A),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Card(
                            color: AppColor.grey,
                            margin: EdgeInsets.all(10),
                            child: ExpansionTile(
                              title: CommanText(
                                text:
                                    'Can I return or exchange medicines that I’ve purchased?',
                                weight: 16,
                                fontWeight: FontWeight.w500,
                                color: selectcolor == 6
                                    ? AppColor.primaryColor
                                    : Color(0xff1E293A),
                              ),
                              trailing: Container(
                                height: 22,
                                width: 22,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: AppColor.primaryColor,
                                ),
                                child: Icon(Icons.keyboard_arrow_down_rounded),
                              ),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'No, medicines purchased cannot be returned or exchanged.',
                                    style: TextStyle(
                                      color: selectcolor == 6
                                          ? AppColor.primaryColor
                                          : Color(0xff1E293A),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
