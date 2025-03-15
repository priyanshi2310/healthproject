import 'package:flutter/material.dart';

import 'package:healthproject/res/comman/comman_text.dart';
import 'package:healthproject/res/comman/comman_textfield.dart';
import 'package:healthproject/res/constant/app_color.dart';
import 'package:healthproject/res/constant/app_images.dart';
import 'package:healthproject/res/constant/app_text.dart';

class ST6Screen extends StatefulWidget {
  const ST6Screen({super.key});

  @override
  State<ST6Screen> createState() => _ST6ScreenState();
}

class _ST6ScreenState extends State<ST6Screen> {
  bool currentvalue = false;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.st6,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 109, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommanText(
                  text: 'Let’s Sign In to\nhealthDrug.ai',
                  weight: 0.030 * height,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff1E293A),
                ),
                SizedBox(
                  height: 0.064 * height,
                ),
                CommanText(
                  text: 'Email Address',
                  weight: 0.016 * height,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff1E293A),
                ),
                SizedBox(
                  height: 0.008 * height,
                ),
                Container(
                  width: double.infinity,
                  height: 0.058 * height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xffF1F5F9),
                  ),
                  child: const CommanTextField(
                    labetlText: 'email',
                    prefixicon: Icon(Icons.mail_outline),
                  ),
                ),
                SizedBox(
                  height: 0.022 * height,
                ),
                CommanText(
                  text: 'Password',
                  weight: 0.016 * height,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff1E293A),
                ),
                Container(
                  width: double.infinity,
                  height: 0.058 * height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xffF1F5F9),
                  ),
                  child: const CommanTextField(
                    labetlText: 'password',
                    prefixicon: Icon(Icons.lock_outline),
                    suffixicon: Icon(Icons.visibility_off_outlined),
                  ),
                ),
                SizedBox(
                  height: 0.019 * height,
                ),
                Row(
                  children: [
                    Checkbox(
                      activeColor: Colors.black,
                      fillColor: MaterialStateProperty.all(Colors.grey),
                      side: const BorderSide(color: Colors.grey),
                      value: currentvalue,
                      onChanged: (value) {
                        setState(
                          () {
                            currentvalue = value!;
                          },
                        );
                      },
                    ),
                    SizedBox(
                      height: 0.004 * height,
                    ),
                    CommanText(
                      text: 'Remember for 30 days',
                      weight: 0.016 * height,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff1E293A),
                    )
                  ],
                ),
                SizedBox(
                  height: 0.047 * height,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 38, right: 35),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.only(left: 95),
                      height: 0.058 * height,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColor.greencolor,
                      ),
                      child: Row(
                        children: [
                          Center(
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, 'ST10Screen');
                              },
                              child: CommanText(
                                text: AppText.signin,
                                weight: 0.016 * height,
                                fontWeight: FontWeight.w500,
                                color: AppColor.white,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: AppColor.white,
                            size: 0.020 * height,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.066 * height,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 0.030 * height,
                      width: 0.370 * width,
                      child: Image.asset('images/Mask group (25).png'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 0.022 * height,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'ST7Screen');
                  },
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: AppText.signup,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 0.016 * height,
                            fontWeight: FontWeight.w500,
                            color: AppColor.greencolor,
                          ),
                        ),
                      ],
                      text: '                   Don’t have an account? ',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 0.016 * height,
                        fontWeight: FontWeight.w500,
                        color: AppColor.blackcolor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.006 * height,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'ST8Screen');
                  },
                  child: Center(
                    child: CommanText(
                      text: AppText.forgetpassword,
                      weight: 0.016 * height,
                      fontWeight: FontWeight.w500,
                      color: AppColor.greencolor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.107 * height,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
