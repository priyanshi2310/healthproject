import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:healthproject/res/comman/comman_text.dart';
import 'package:healthproject/res/comman/comman_textfield.dart';
import 'package:healthproject/res/constant/app_color.dart';
import 'package:healthproject/res/constant/app_images.dart';
import 'package:healthproject/res/constant/app_text.dart';

class ST7Screen extends StatefulWidget {
  const ST7Screen({super.key});

  @override
  State<ST7Screen> createState() => _ST7ScreenState();
}

class _ST7ScreenState extends State<ST7Screen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _validate = false;
  bool _passwordMatch = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
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
                  text: 'Sign Up For Free,\nRight Now.',
                  weight: 0.030 * height,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff1E293A),
                ),
                SizedBox(height: 0.064 * height),
                CommanText(
                  text: 'Name',
                  weight: 0.016 * height,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff1E293A),
                ),
                SizedBox(height: 0.008 * height),
                Container(
                  width: double.infinity,
                  height: 0.058 * height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xffF1F5F9),
                  ),
                  child: const CommanTextField(
                    labetlText: 'Email',
                    prefixicon: Icon(Icons.mail_outline),
                  ),
                ),
                SizedBox(height: 0.022 * height),
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
                    labetlText: 'Password',
                    prefixicon: Icon(Icons.lock_outline),
                    suffixicon: Icon(Icons.visibility_off_outlined),
                  ),
                ),
                SizedBox(height: 0.024 * height),
                CommanText(
                  text: 'Password Confirmation',
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
                    labetlText: 'Confirm Password',
                    prefixicon: Icon(Icons.lock_outline),
                    suffixicon: Icon(Icons.visibility_off_outlined),
                  ),
                ),
                SizedBox(height: 0.017 * height),
                _validate
                    ? Container(
                        height: 0.042 * height,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xffFFE4E6),
                          border: Border.all(color: Colors.red),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.warning_outlined,
                              color: Color(0xffF54360),
                            ),
                            Text(
                              _passwordMatch
                                  ? "ERROR: Password Do Not Match!"
                                  : "Passwords do not match!",
                              style: TextStyle(
                                color: const Color(0xff1E294A),
                                fontWeight: FontWeight.w500,
                                fontSize: 0.016 * height,
                              ),
                            ),
                          ],
                        ),
                      )
                    : const SizedBox(),
                SizedBox(
                  height: 0.032 * height,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 38, right: 35),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        _validate = _emailController.text.isEmpty ||
                            _passwordController.text.isEmpty ||
                            _confirmPasswordController.text.isEmpty;

                        _passwordMatch = _passwordController.text ==
                            _confirmPasswordController.text;

                        log(_validate.toString());
                        log(_passwordMatch.toString());
                      });
                    },
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
                            child: CommanText(
                              text: AppText.signup,
                              weight: 0.016 * height,
                              fontWeight: FontWeight.w500,
                              color: AppColor.white,
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
                SizedBox(height: 0.028 * height),
                InkWell(
                  onTap: () {
                    Navigator.pop(context, 'ST6Screen');
                  },
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: AppText.signin,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 0.016 * height,
                            fontWeight: FontWeight.w500,
                            color: AppColor.greencolor,
                          ),
                        ),
                      ],
                      text: '                   Already have an account? ',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 0.016 * height,
                        fontWeight: FontWeight.w500,
                        color: AppColor.blackcolor,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 0.113 * height),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
