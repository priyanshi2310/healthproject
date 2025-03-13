import 'package:flutter/material.dart';
import 'package:healthproject/res/comman/comman_text.dart';
import 'package:healthproject/res/constant/app_color.dart';

class ST28Screen extends StatefulWidget {
  const ST28Screen({super.key});

  @override
  State<ST28Screen> createState() => _ST28ScreenState();
}

class _ST28ScreenState extends State<ST28Screen> {
  int selectedIndex = -1;
  List<String> images = [
    "images/Rectangle 199.png",
    "images/Rectangle 200.png",
    "images/Rectangle 201.png",
    "images/Rectangle 202.png",
    "images/Rectangle 199.png",
    "images/Rectangle 200.png",
    "images/Rectangle 201.png",
    "images/Rectangle 202.png",
    "images/Rectangle 199.png",
    "images/Rectangle 200.png",
    "images/Rectangle 201.png",
    "images/Rectangle 202.png",
    "images/Rectangle 199.png",
    "images/Rectangle 200.png",
    "images/Rectangle 201.png",
    "images/Rectangle 202.png",
  ];
  final List<String> items = ['Drug Details', 'Purchases'];
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 349,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                ),
              ),
              child: Image.asset(
                'images/Rectangle 191.png',
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommanText(
                    text: 'Neurobion Forte Injection',
                    weight: 20,
                    fontWeight: FontWeight.w500,
                    color: AppColor.purple,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommanText(
                        text: '\$78.99',
                        weight: 20,
                        fontWeight: FontWeight.w500,
                        color: AppColor.purple,
                      ),
                      Container(
                        height: 41,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: AppColor.darkgrey),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  number--;
                                });
                              },
                              icon: Icon(Icons.remove),
                            ),
                            Text(number.toString()),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  number++;
                                });
                              },
                              icon: Icon(Icons.add),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColor.white1,
                    ),
                    child: Row(
                      children: List.generate(items.length, (index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex =
                                  (selectedIndex == index) ? -1 : index;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.all(8),
                            height: 51,
                            width: 169,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: selectedIndex == index
                                  ? AppColor.primaryColor
                                  : AppColor.white1,
                            ),
                            child: Center(
                              child: CommanText(
                                text: items[index],
                                weight: 16,
                                fontWeight: FontWeight.w500,
                                color: selectedIndex == index
                                    ? AppColor.purple
                                    : AppColor.darkgrey,
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '\n Tablet',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                            text: 'Google from',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff475568),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        VerticalDivider(
                          thickness: 1,
                          color: Color(0xff787878),
                        ),
                        SizedBox(
                          width: 22,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '\n100mg',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                            text: 'Strength',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff475568),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        VerticalDivider(
                          thickness: 1,
                          color: Color(0xff787878),
                        ),
                        SizedBox(
                          width: 22,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '\n  25',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                            text: 'Delivery',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff475568),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  CommanText(
                    text: 'Descriptions',
                    weight: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColor.purple,
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  CommanText(
                    text:
                        'Neurobion RF Forte Injection is a combination of medicines that are prescribed to treat vitamin and other nutritional deficiencies. It ensures the proper growth and functioning of the body.',
                    weight: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColor.purple,
                  ),
                  SizedBox(
                    height: 27,
                  ),
                  CommanText(
                    text: 'Side Effects',
                    weight: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColor.purple,
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 29,
                        width: 64,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xffFFE4E6),
                        ),
                        child: Center(
                          child: CommanText(
                            text: 'Pain',
                            weight: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffF87289),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 9,
                      ),
                      Container(
                        height: 29,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xffFFE4E6),
                        ),
                        child: Center(
                          child: CommanText(
                            text: 'Swelling',
                            weight: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffF87289),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 9,
                      ),
                      Container(
                        height: 29,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xffFFE4E6),
                        ),
                        child: Center(
                          child: CommanText(
                            text: 'Redness',
                            weight: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffF87289),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  CommanText(
                    text: 'Dosing',
                    weight: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColor.purple,
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  CommanText(
                    text:
                        'Neurobion RF Forte Injection is a combination of three nutritional supplements: Me thylcobalamin, Vitamin B6 (Pyridoxine) and Nicotinamide. Together, these replenish the body\'s stores of important nutrients.',
                    weight: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColor.darkgrey,
                  ),
                  SizedBox(
                    height: 31,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 8, left: 10, right: 10),
                    height: 88,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Color(0xff87DCCD),
                      ),
                      color: Color(0xffCCFBF1),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CommanText(
                              text: 'Storage Introductions ',
                              weight: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColor.purple,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          'Store At room temperature only from macitence and host.  Keep it word ',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.darkgrey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  CommanText(
                    text: 'Gallery [12+]',
                    weight: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColor.purple,
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: images.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: EdgeInsets.all(10),
                            height: 80,
                            width: 80,
                            child: Image.asset(images[index]),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 27,
                  ),
                  CommanText(
                    text: 'Declaration for use',
                    weight: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColor.purple,
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  CommanText(
                    text:
                        'Neurobion RF Forte Injection contains nutritionalsupplements that help the body perform variousvital functions like formation of red blood cells andabsorption of iron in the body. ',
                    weight: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColor.darkgrey,
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
