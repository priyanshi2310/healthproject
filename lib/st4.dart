import 'package:flutter/material.dart';

import 'package:healthproject/res/constant/app_images.dart';
import 'package:healthproject/st5.dart';

class ST4Screen extends StatefulWidget {
  const ST4Screen({super.key});

  @override
  State<ST4Screen> createState() => _ST4ScreenState();
}

class _ST4ScreenState extends State<ST4Screen> {
  double _progress = 0.0;

  @override
  void initState() {
    super.initState();
    _startLoading();
  }

  void _startLoading() {
    Future.delayed(const Duration(milliseconds: 100), () {
      _incrementProgress();
    });
  }

  void _incrementProgress() {
    if (_progress < 100) {
      setState(() {
        _progress += 1;
      });

      if (_progress < 100) {
        Future.delayed(const Duration(milliseconds: 100), () {
          _incrementProgress();
        });
      } else {
        _navigateToNextScreen();
      }
    }
  }

  void _navigateToNextScreen() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const ST5Screen()));
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.st4,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '%',
                    style: TextStyle(
                      fontSize: 0.040 * height,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff000000),
                    ),
                  ),
                ],
                text: _progress.toStringAsFixed(1),
                style: TextStyle(
                  fontSize: 0.064 * height,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff000000),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
