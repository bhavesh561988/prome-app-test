import 'package:flutter/material.dart';
import 'package:quotedemo/constant/colors.dart';
import 'package:quotedemo/constant/go.dart';
import 'package:quotedemo/gen/fonts.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quotedemo/models/onbording_model.dart';
import 'package:quotedemo/pages/onbording/onBordingScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Go.offAll(context, const OnBordingScreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "NSPIRE",
              style: TextStyle(
                color: Colors.white,
                fontFamily: FontFamily.poppins,
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Guided Motivation",
              style: TextStyle(
                color: Colors.white,
                fontFamily: FontFamily.poppins,
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        )),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: ColorsProvider.SPLASH_GREDIENT_COLOR,
          ),
        ),
      ),
    );
  }
}
