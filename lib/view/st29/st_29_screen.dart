import 'package:flutter/material.dart';
import 'package:healthproject/res/comman/comman_text.dart';
import 'package:healthproject/res/constant/app_color.dart';

class ST29Screen extends StatefulWidget {
  const ST29Screen({super.key});

  @override
  State<ST29Screen> createState() => _ST29ScreenState();
}

class _ST29ScreenState extends State<ST29Screen> {
  List<String> images = [
    "images/Rectangle 211.png",
    "images/Rectangle 214.png",
    "images/Rectangle 217.png",
    "images/Rectangle 220.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 72, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  text: 'My Cart',
                  weight: 20,
                  fontWeight: FontWeight.w500,
                  color: AppColor.purple,
                )
              ],
            ),
            SizedBox(
              height: 32,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '(4)',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColor.darkgrey,
                    ),
                  ),
                ],
                text: 'All Items',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColor.blackcolor,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 600,
              child: ListView.builder(
                  itemCount: images.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      height: 112,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColor.white1,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 88,
                            width: 88,
                            child: Image.asset(images[index]),
                          ),
                          SizedBox(width: 10,),
                          
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
