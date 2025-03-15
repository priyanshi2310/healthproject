import 'package:flutter/material.dart';
import 'package:healthproject/res/comman/comman_text.dart';
import 'package:healthproject/res/constant/app_color.dart';
import 'package:healthproject/view/st20/st_20_screen.dart';

class ST19Screen extends StatefulWidget {
  const ST19Screen({super.key});

  @override
  State<ST19Screen> createState() => _ST19ScreenState();
}

class _ST19ScreenState extends State<ST19Screen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const ST20Screen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 73, left: 30, right: 30),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 0.050 * height,
                  width: 0.110 * width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColor.white1,
                  ),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 0.020 * height,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 0.056 * width,
                ),
                CommanText(
                  text: 'Upload Prescription',
                  weight: 0.020 * height,
                  fontWeight: FontWeight.w500,
                  color: AppColor.purple,
                )
              ],
            ),
            SizedBox(
              height: 0.065 * height,
            ),
            Image.asset(
              'images/Mask group (35).png',
              scale: 1.2,
            ),
            SizedBox(
              height: 0.023 * height,
            ),
            CommanText(
              text: '   Upload Prescription',
              weight: 0.020 * height,
              fontWeight: FontWeight.w500,
              color: AppColor.purple,
            ),
            SizedBox(
              height: 0.027 * height,
            ),
            Text(
              textAlign: TextAlign.center,
              'Before uploading your prescription please \ninsure the following',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 0.016 * height,
                  fontWeight: FontWeight.w500,
                  color: AppColor.darkgrey),
            ),
            SizedBox(
              height: 0.050 * height,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 0.035 * height,
                  width: 0.070 * width,
                  child: Image.asset('images/Mask group (36).png'),
                ),
                SizedBox(
                  height: 0.035 * height,
                  width: 0.070 * width,
                  child: Image.asset('images/Mask group (37).png'),
                ),
                SizedBox(
                  height: 0.035 * height,
                  width: 0.070 * width,
                  child: Image.asset('images/Mask group (38).png'),
                ),
              ],
            ),
            SizedBox(
              height: 0.011 * height,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CommanText(
                  text: 'Large Hi-pass \n\t\t\t\t\tImage',
                  weight: 0.013 * height,
                  fontWeight: FontWeight.w400,
                  color: AppColor.darkgrey,
                ),
                CommanText(
                  text: 'Prescription \n\t\t\tType',
                  weight: 0.013 * height,
                  fontWeight: FontWeight.w400,
                  color: AppColor.darkgrey,
                ),
                CommanText(
                  text: ' Doctor’s \nSignature',
                  weight: 0.013 * height,
                  fontWeight: FontWeight.w400,
                  color: AppColor.darkgrey,
                ),
              ],
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'ST20Screen');
              },
              child: Container(
                height: 0.065 * height,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColor.greencolor,
                ),
                child: Center(
                  child: CommanText(
                    text: 'Continue',
                    weight: 0.020 * height,
                    fontWeight: FontWeight.w500,
                    color: AppColor.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 0.036 * height,
            ),
          ],
        ),
      ),
    );
  }
}
