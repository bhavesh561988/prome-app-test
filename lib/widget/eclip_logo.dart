import 'package:flutter/material.dart';
import 'package:quotedemo/gen/assets.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EclipeLogo extends StatelessWidget {
  const EclipeLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          Assets.images.eclips.path,
          width: 246.w,
        ),
        Positioned(
          top: 10.h,
          left: 72.w,
          right: 72.w,
          bottom: 40.h,
          child: Image.asset(
            Assets.images.logoHorizontal.path,
            width: 109.w,
          ),
        ),
      ],
    );
  }
}
