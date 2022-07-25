import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quotedemo/constant/colors.dart';
import 'package:quotedemo/gen/fonts.gen.dart';

/// Creates a Widget representing the day.
class DayItem extends StatelessWidget {
  final int dayNumber;
  final String shortName;
  final bool isSelected;
  final Function onTap;
  final Color? dayColor;
  final Color? activeDayColor;
  final Color? activeDayBackgroundColor;
  final bool available;
  final Color? dotsColor;
  final Color? dayNameColor;

  const DayItem({
    Key? key,
    required this.dayNumber,
    required this.shortName,
    required this.onTap,
    this.isSelected = false,
    this.dayColor,
    this.activeDayColor,
    this.activeDayBackgroundColor,
    this.available = true,
    this.dotsColor,
    this.dayNameColor,
  }) : super(key: key);

  final double height = 70.0;
  final double width = 60.0;

  _buildDay(BuildContext context) {
    var textStyle = TextStyle(
      color: Colors.black,
      fontSize: 16.sp,
      fontWeight: FontWeight.normal,
    );
    final selectedStyle = TextStyle(
      color: Colors.white,
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
    );

    return GestureDetector(
      onTap: available ? onTap as void Function()? : null,
      child: SizedBox(
        width: width,
        child: Column(
          children: <Widget>[
            Text(
              shortName[0],
              style: TextStyle(
                color: const Color(0xff757C90),
                fontWeight: FontWeight.w500,
                fontFamily: FontFamily.poppins,
                fontSize: 14.sp,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isSelected ? ColorsProvider.PRIMARY_COLOR : null),
              child: Text(
                dayNumber.toString(),
                style: isSelected ? selectedStyle : textStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildDay(context);
  }
}
