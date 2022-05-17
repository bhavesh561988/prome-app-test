import 'package:flutter/material.dart';
import 'package:quotedemo/constant/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String text;
  VoidCallback? function;
  CustomButton({
    this.function,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        height: 51.92,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: ColorsProvider.PRIMARY_COLOR,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: Colors.white),
        )),
      ),
    );
  }
}
