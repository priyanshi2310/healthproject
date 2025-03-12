import 'package:flutter/material.dart';
import 'package:healthproject/res/comman/comman_text.dart';
import 'package:healthproject/res/constant/app_color.dart';

class ST28Screen extends StatefulWidget {
  const ST28Screen({super.key});

  @override
  State<ST28Screen> createState() => _ST28ScreenState();
}

class _ST28ScreenState extends State<ST28Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommanText(
                      text: 'Neurobion Forte Injection',
                      weight: 20,
                      fontWeight: FontWeight.w500,
                      color: AppColor.purple,
                    ),
                    Container(
                      height: 41,
                      width: 97,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: AppColor.darkgrey),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
