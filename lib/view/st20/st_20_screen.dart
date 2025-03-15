import 'package:flutter/material.dart';

import 'package:healthproject/res/comman/comman_text.dart';
import 'package:healthproject/res/constant/app_color.dart';
class ST20Screen extends StatefulWidget {
  const ST20Screen({super.key});

  @override
  State<ST20Screen> createState() => _ST20ScreenState();
}

class _ST20ScreenState extends State<ST20Screen> {
  int selectcolor = 0;

  Widget _buildImageContainer(String imagePath, double height, double width) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColor.white,
      ),
      child: Image.asset(imagePath),
    );
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 0.221 * height,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35),
              ),
              color: AppColor.white1,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: CommanText1(
                      text: 'Upload Prescription',
                      weight: 0.020 * height,
                      fontWeight: FontWeight.w500,
                      color: AppColor.purple,
                    ),
                  ),
                  SizedBox(height: 0.029 * height),
                  Container(
                    height: 0.067 * height,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xffE2E8F0),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                selectcolor = 0;
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.all(8),
                              height: 0.055 * height,
                              width: 0.300 * width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: selectcolor == 0
                                    ? AppColor.white
                                    : const Color(0xffE2E8F0),
                              ),
                              child: Center(
                                child: CommanText(
                                  text: 'Local',
                                  weight: 0.016 * height,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.blackcolor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                selectcolor = 1;
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.all(8),
                              height: 0.055 * height,
                              width: 0.300 * width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: selectcolor == 1
                                    ? AppColor.white
                                    : const Color(0xffE2E8F0),
                              ),
                              child: Center(
                                child: CommanText(
                                  text: 'Open',
                                  weight: 0.016 * height,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.blackcolor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 0.023 * height),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '(5)',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 0.016 * height,
                      fontWeight: FontWeight.w400,
                      color: AppColor.darkgrey,
                    ),
                  ),
                ],
                text: 'Today ',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 0.016 * height,
                  fontWeight: FontWeight.w400,
                  color: AppColor.blackcolor,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 17,
                crossAxisSpacing: 15,
                children: List.generate(5, (index) {
                  return _buildImageContainer('images/Mask group (36).png', 0.110 * height, 0.220 * width);
                }),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '(0)',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 0.016 * height,
                          fontWeight: FontWeight.w400,
                          color: AppColor.darkgrey,
                        ),
                      ),
                    ],
                    text: 'Last Week ',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 0.016 * height,
                        fontWeight: FontWeight.w400,
                        color: AppColor.blackcolor),
                  ),
                ),

                SizedBox(height: 0.020 * height,),
                _buildImageContainer('images/Mask group (36).png', 0.110 * height, 0.220 * width),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'ST21Screen');
                  },
                  child: Container(
                    height: 0.067 * height,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColor.greencolor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CommanText(
                          text: 'Upload Prescription',
                          weight: 0.020 * height,
                          fontWeight: FontWeight.w500,
                          color: AppColor.white,
                        ),
                        Icon(
                          Icons.file_upload_outlined,
                          color: AppColor.white,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 0.086 * height),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
