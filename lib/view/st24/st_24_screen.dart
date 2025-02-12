import 'package:flutter/material.dart';
import 'package:healthproject/res/comman/comman_text.dart';
import 'package:healthproject/res/constant/app_color.dart';
import 'package:healthproject/view/st25/st_25_screen.dart';


class ST24Screen extends StatefulWidget {
  const ST24Screen({super.key});

  @override
  State<ST24Screen> createState() => _ST24ScreenState();
}

class _ST24ScreenState extends State<ST24Screen> {
  List<String> text2 = ["Maxtra Syrup", "Montair-LC Tablet", "Maxtra Syrup"];
  List<String> text3 = ["5 mg", "1 mg", "5 mg"];
  List<String> text4 = ["\$109.99", "\$99.99", "\$109.99"];
  List<String> images1 = [
    "images/Rectangle 120 (1).png",
    "images/Rectangle 119 (1).png",
    "images/Rectangle 126 (1).png"
  ];
  List<String> text1 = [
    "Medication",
    "OTD Drugs",
    "Vitamins",
    "BP",
    "HEART RATE"
  ];
  List<String> text5 = [
    "Kryxana 200mg Tablet",
    "Kadcyla 100mg Injection",
    "Kixta 125mg Capsule",
  ];
  List<String> text6 = [
    "\$230.00",
    "\$170.00",
    "\$499.00",
  ];
  List<String> images2 = [
    "images/Rectangle 148 (3).png",
    "images/Rectangle 148 (4).png",
    "images/Rectangle 148 (5).png",
  ];

  TextEditingController _searchController = TextEditingController();

  List<String> filteredText2 = [];
  List<String> filteredText3 = [];
  List<String> filteredText4 = [];
  List<String> filteredImages1 = [];

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ST25Screen()));
    });
    super.initState();

    filteredText2 = text2;
    filteredText3 = text3;
    filteredText4 = text4;
    filteredImages1 = images1;

    _searchController.addListener(_onSearchChanged);
  }

  void _onSearchChanged() {
    setState(() {
      String query = _searchController.text.toLowerCase();

      if (query.isEmpty) {
        filteredText2 = text2;
        filteredText3 = text3;
        filteredText4 = text4;
        filteredImages1 = images1;
      } else {
        List<int> matchingIndexes = [];
        for (int i = 0; i < text2.length; i++) {
          if (text2[i].toLowerCase().contains(query)) {
            matchingIndexes.add(i);
          }
        }

        filteredText2 = matchingIndexes.map((index) => text2[index]).toList();
        filteredText3 = matchingIndexes.map((index) => text3[index]).toList();
        filteredText4 = matchingIndexes.map((index) => text4[index]).toList();
        filteredImages1 =
            matchingIndexes.map((index) => images1[index]).toList();
      }
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                    child:
                        Icon(Icons.arrow_forward_ios, color: AppColor.purple),
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
                        ),
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
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommanText(
                    text: 'Search Products',
                    weight: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColor.purple,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search),
                      hintText: 'Search for products in this store',
                      hintStyle: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          color: AppColor.darkgrey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: AppColor.white1,
                      filled: true,
                    ),
                  ),
                  SizedBox(
                    height: 27,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommanText(
                        text: 'Newest products',
                        weight: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColor.purple,
                      ),
                      CommanText(
                        text: '${filteredText2.length} items',
                        weight: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColor.darkgrey,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 252,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: filteredText2.length,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {},
                            child: Container(
                              margin: const EdgeInsets.only(top: 10, right: 20),
                              padding: const EdgeInsetsDirectional.all(8),
                              height: 252,
                              width: 157,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: AppColor.white1),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset(
                                    filteredImages1[index],
                                  ),
                                  CommanText(
                                    text: filteredText2[index],
                                    weight: 13,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.purple,
                                  ),
                                  CommanText(
                                    text: filteredText3[index],
                                    weight: 13,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.purple,
                                  ),
                                  CommanText(
                                    text: filteredText4[index],
                                    weight: 13,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.purple,
                                  ),
                                  Container(
                                    height: 32,
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
                                          weight: 13,
                                          fontWeight: FontWeight.w400,
                                          color: AppColor.white,
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          color: AppColor.white,
                                          size: 15,
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
                  SizedBox(
                    height: 17,
                  ),
                  Row(
                    children: [
                      CommanText(
                        text: 'All Products',
                        fontWeight: FontWeight.w400,
                        weight: 16,
                        color: AppColor.purple,
                      ),
                      Spacer(),
                      CommanText(
                        text: 'Most Popular',
                        weight: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColor.darkgrey,
                      ),
                      Image.asset(
                        'images/Mask group (31).png',
                        color: AppColor.greencolor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  SizedBox(
                    height: 40,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: text1.length,
                      itemBuilder: (context, index) {
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
                  SizedBox(
                    height: 164,
                    child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 164,
                          width: double.infinity,
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColor.white1,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: CommanText(
                                      text: text5[index],
                                      weight: 16,
                                      fontWeight: FontWeight.w500,
                                      color: AppColor.purple,
                                    ),
                                  ),
                                  CommanText(
                                    text: text6[index],
                                    weight: 16,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.purple,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Color(0xffF59E09),
                                      ),
                                      CommanText(
                                        text: ' 4.5',
                                        weight: 14,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.darkgrey,
                                      ),
                                      SizedBox(width: 17),
                                      Icon(
                                        Icons.person,
                                      ),
                                      CommanText(
                                        text: ' John',
                                        weight: 14,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.darkgrey,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 32,
                                        width: 91,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: AppColor.greencolor,
                                        ),
                                        child: Center(
                                          child: CommanText(
                                            text: 'Add +',
                                            weight: 13,
                                            fontWeight: FontWeight.w400,
                                            color: AppColor.white,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 12,
                                      ),
                                      Container(
                                        height: 32,
                                        width: 91,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          border: Border.all(
                                              color: AppColor.darkgrey),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CommanText(
                                              text: 'Save',
                                              weight: 13,
                                              fontWeight: FontWeight.w400,
                                              color: AppColor.darkgrey,
                                            ),
                                            Icon(
                                              Icons.bookmark_outline,
                                              color: AppColor.darkgrey,
                                              size: 16,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Expanded(
                                flex: 1,
                                child: SizedBox(
                                  height: 138,
                                  width: 103,
                                  child: Image.asset(
                                    images2[index],
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
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
