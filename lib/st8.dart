import 'package:flutter/material.dart';
// import 'package:health_drug/res/comman/comman_text.dart';
// import 'package:health_drug/res/constant/app_color.dart';
// import 'package:health_drug/res/constant/app_images.dart';
import 'package:healthproject/res/comman/comman_text.dart';
import 'package:healthproject/res/constant/app_color.dart';
import 'package:healthproject/res/constant/app_images.dart';

class ST8Screen extends StatefulWidget {
  const ST8Screen({super.key});

  @override
  State<ST8Screen> createState() => _ST8ScreenState();
}

class _ST8ScreenState extends State<ST8Screen> {
  int selectindex = 0;

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
            padding: const EdgeInsets.only(left: 30, top: 85, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context, 'ST6Screen');
                  },
                  child: Container(
                    height: 0.044 * height,
                    width: 0.094 * width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xffD9D9D9),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 0.020 * height,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.034 * height,
                ),
                CommanText(
                  text: 'Forgot Password',
                  weight: 0.030 * height,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff1E293A),
                ),
                SizedBox(
                  height: 0.026 * height,
                ),
                CommanText(
                  text: 'Forgot your password? Then let’s ',
                  weight: 0.016 * height,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff5E6A7B),
                ),
                Row(
                  children: [
                    CommanText(
                      text: 'submit password reset',
                      weight: 0.016 * height,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff5E6A7B),
                    ),
                    SizedBox(
                      height: 0.020 * height,
                      width: 0.040 * width,
                      child: Image.asset('images/Mask group.jpg'),
                    ),
                  ],
                ),
                SizedBox(height: 0.063 * height),
                InkWell(
                  onTap: () {
                    setState(() {
                      selectindex = 0;
                    });
                  },
                  child: Card(
                    child: ListTile(
                      tileColor: const Color(0xffF1F5F9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(
                          color: selectindex == 0
                              ? AppColor.greencolor
                              : Colors.transparent,
                        ),
                      ),
                      leading: Container(
                        height: 0.069 * height,
                        width: 0.150 * width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xffFFFFFF),
                        ),
                        child: Icon(
                          Icons.mail_outline,
                          size: 0.030 * height,
                          color: AppColor.blackcolor,
                        ),
                      ),
                      title: Text(
                        'Email Address',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 0.016 * height,
                          fontWeight: FontWeight.w500,
                          color: AppColor.purple,
                        ),
                      ),
                      subtitle: Text(
                        'Seamlessly reset your password via Email Address',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 0.016 * height,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff5E6A7B),
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 0.020 * height,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.020 * height,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      selectindex = 1;
                    });
                  },
                  child: Card(
                    child: ListTile(
                      tileColor: const Color(0xffF1F5F9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(
                          color: selectindex == 1
                              ? AppColor.greencolor
                              : Colors.transparent,
                        ),
                      ),
                      leading: Container(
                        height: 0.069 * height,
                        width: 0.150 * width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xffFFFFFF),
                        ),
                        child: Icon(
                          Icons.lock_outline,
                          size: 0.030 * height,
                          color: AppColor.blackcolor,
                        ),
                      ),
                      title: Text(
                        '2FA Authentication',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 0.016 * height,
                          fontWeight: FontWeight.w500,
                          color: AppColor.blackcolor,
                        ),
                      ),
                      subtitle: Text(
                        'Seamlessly reset your password via 2 Factor Auth',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 0.016 * height,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff5E6A7B),
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 0.020 * height,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 0.023 * height),
                InkWell(
                  onTap: () {
                    setState(() {
                      selectindex = 2;
                    });
                  },
                  child: Card(
                    child: ListTile(
                      tileColor: const Color(0xffF1F5F9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(
                          color: selectindex == 2
                              ? AppColor.greencolor
                              : Colors.transparent,
                        ),
                      ),
                      leading: Container(
                        height: 0.069 * height,
                        width: 0.150 * width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xffFFFFFF),
                        ),
                        child: Icon(
                          Icons.verified_user_outlined,
                          size: 0.030 * height,
                          color: AppColor.blackcolor,
                        ),
                      ),
                      title: Text(
                        'Email Address',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 0.016 * height,
                          fontWeight: FontWeight.w500,
                          color: AppColor.blackcolor,
                        ),
                      ),
                      subtitle: Text(
                        'Seamlessly reset your password via Email Address',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 0.016 * height,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff5E6A7B),
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 0.020 * height,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.042 * height,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 66, right: 66),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'ST9Screen');
                    },
                    child: Container(
                      height: 0.060 * height,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColor.greencolor,
                      ),
                      child: Center(
                        child: CommanText(
                          text: 'Submit Reset',
                          weight: 0.016 * height,
                          fontWeight: FontWeight.w500,
                          color: AppColor.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
