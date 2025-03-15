import 'package:flutter/material.dart';

import 'package:healthproject/res/comman/comman_text.dart';
import 'package:healthproject/res/comman/comman_textfield.dart';
import 'package:healthproject/res/constant/app_color.dart';
import 'package:riff_switch/riff_switch.dart';



class ST12Screen extends StatefulWidget {
  const ST12Screen({super.key});

  @override
  State<ST12Screen> createState() => _ST12ScreenState();
}

class _ST12ScreenState extends State<ST12Screen> {
  // late bool _switchValue_5 = false;
  late bool _switchValue_6 = false;
  bool currentvalue = false;
  RangeValues _currentRangeValues = const RangeValues(20, 60);
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffCCFBF1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.only(right: 30, left: 30, top: 30),
            height: 0.636 * height,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
              color: AppColor.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommanText(
                  text: '  Filter Nightingale Score ',
                  weight: 0.020 * height,
                  fontWeight: FontWeight.w500,
                  color: AppColor.purple,
                ),
                SizedBox(
                  height: 0.018 * height,
                ),
                Row(
                  children: [
                    CommanText(
                      text: '  From',
                      weight: 0.016 * height,
                      fontWeight: FontWeight.w500,
                      color: AppColor.purple,
                    ),
                    SizedBox(
                      width: 0.152 * height,
                    ),
                    CommanText(
                      text: 'To',
                      weight: 0.016 * height,
                      fontWeight: FontWeight.w500,
                      color: AppColor.purple,
                    ),
                  ],
                ),
                SizedBox(
                  height: 0.012 * height,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 0.048 * height,
                      width: 0.351 * width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.white1,
                      ),
                      child: CommanTextField(
                        prefixicon: Icon(
                          Icons.calendar_month,
                          color: AppColor.blackcolor,
                          size: 0.020 * height,
                        ),
                        labetlText: 'yy/dd/mm',
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      height: 0.048 * height,
                      width: 0.351 * width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.white1,
                      ),
                      child: CommanTextField(
                        prefixicon: Icon(
                          Icons.calendar_month,
                          color: AppColor.blackcolor,
                          size: 0.020 * height,
                        ),
                        labetlText: 'yy/dd/mm',
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 0.026 * height,
                ),
                CommanText(
                  text: 'Include Metrics',
                  weight: 0.016 * height,
                  fontWeight: FontWeight.w500,
                  color: AppColor.purple,
                ),
                SizedBox(
                  height: 0.012 * height,
                ),
                Row(
                  children: [
                    Container(
                      height: 0.061 * height,
                      width: 0.351 * width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.white1,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'images/music (1) 1 (1).png',
                            scale: 1.9,
                          ),
                          CommanText(
                            text: 'Heart Rate',
                            weight: 0.016 * height,
                            fontWeight: FontWeight.w500,
                            color: AppColor.darkgrey,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 0.022 * height,
                    ),
                    Container(
                      height: 0.061 * height,
                      width: 0.351 * width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffF43F5E),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'images/Mask group (30).png',
                            scale: 1.5,
                          ),
                          CommanText(
                            text: 'Blood Pressure',
                            weight: 0.016 * height,
                            fontWeight: FontWeight.w500,
                            color: AppColor.white,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 0.026 * height,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommanText(
                      text: 'Metric Range',
                      weight: 0.016 * height,
                      fontWeight: FontWeight.w500,
                      color: AppColor.blackcolor,
                    ),
                    CommanText(
                      text: 'mmHg',
                      weight: 0.016 * height,
                      fontWeight: FontWeight.w500,
                      color: AppColor.darkgrey,
                    ),
                  ],
                ),
                SizedBox(
                  height: 0.026 * height,
                ),
                SliderTheme(
                  data: const SliderThemeData(
                    thumbShape: RectangularSliderValueIndicatorShape(),
                  ),
                  child: RangeSlider(
                    activeColor: Colors.green,
                    values: _currentRangeValues,
                    min: 0,
                    max: 100,
                    divisions: 10,
                    labels: RangeLabels(
                      _currentRangeValues.start.round().toString(),
                      _currentRangeValues.end.round().toString(),
                    ),
                    onChanged: (RangeValues values) {
                      setState(() {
                        _currentRangeValues = values;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 0.027 * height,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommanText(
                      text: '   Include AI Suggestions',
                      weight: 0.016 * height,
                      fontWeight: FontWeight.w500,
                      color: AppColor.purple,
                    ),
                    // RiffSwitch(
                    //   value: _switchValue_5,
                    //   onChanged: (value) => setState(() {
                    //     _switchValue_5 = value;
                    //   }),
                    //   type: RiffSwitchType.decorative,
                    //   thumbColor: MaterialStateProperty.all(AppColor.white),
                    //   trackColor:
                    //       MaterialStateProperty.all(AppColor.greencolor),
                    //   inactiveTrackColor: Colors
                    //       .grey,
                    //   height: 28,
                    //   width: 56,
                    //   borderWidth: 1.5,
                    //   borderRadius: 8,
                    // )
                    RiffSwitch(
                      value: _switchValue_6,
                      onChanged: (value) => setState(() {
                        _switchValue_6 = value;
                      }),
                      type: RiffSwitchType.decorative,
                      activeColor: AppColor.white,
                      activeTrackColor: AppColor.greencolor,
                      height: 0.028 * height,
                      width: 0.150 * width,
                      borderWidth: 2,
                      borderColor: Colors.white,
                      borderRadius: 8,
                      thumbMargin: 3,
                    ),
                  ],
                ),
                SizedBox(
                  height: 0.041 * height,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'ST13Screen');
                  },
                  child: Container(
                    height: 0.055 * height,
                    decoration: BoxDecoration(
                      color: AppColor.greencolor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CommanText(
                          text: 'Apply Filter (25)',
                          weight: 0.016 * height,
                          fontWeight: FontWeight.w500,
                          color: AppColor.white,
                        ),
                        Image.asset(
                          'images/Mask group (31).png',
                          scale: 1.2,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.050 * height,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
