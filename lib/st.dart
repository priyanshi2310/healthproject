import 'package:flutter/material.dart';
import 'package:healthproject/res/comman/comman_text.dart';
import 'package:healthproject/res/constant/app_color.dart';

class STScreen extends StatefulWidget {
  const STScreen({super.key});

  @override
  State<STScreen> createState() => _STScreenState();
}

class _STScreenState extends State<STScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
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
              child: Padding(
                padding: const EdgeInsets.only(top: 72, left: 20, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Back Arrow Icon
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColor.white1,
                      ),
                      child:
                          Icon(Icons.arrow_forward_ios, color: AppColor.purple),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 155), 
                      child: Stack(
                        children: [
                          Container(
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
                        ],
                      ),
                    ),
                    // Additional content can go here
                  ],
                ),
              ),
            ),
          ),
          // Empty space in the second expanded widget
          Expanded(child: Container())
        ],
      ),
    );
  }
}
