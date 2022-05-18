import 'package:flutter/material.dart';
import 'package:quotedemo/constant/colors.dart';
import 'package:quotedemo/widget/chipe_widget.dart';
import 'package:quotedemo/widget/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextEditingController controller = TextEditingController();
void insert(String content) {
  var text = controller.text;
  var pos = controller.selection.start;
  controller.value = TextEditingValue(
    text: content,
    selection: TextSelection.collapsed(offset: pos + content.length),
  );
}

showAlertDialog(BuildContext context) {
  controller.clear();
  var maxLength = 10;
  var textLength = 0;
  AlertDialog alert = AlertDialog(
      insetPadding: EdgeInsets.zero,
      titlePadding: EdgeInsets.zero,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(14.0))),
      title: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 36.h, left: 20.w),
            child: Text(
              "Gratitude",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.sp),
            ),
          ),
          Positioned(
              top: 15,
              right: 15,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                    decoration: BoxDecoration(
                        color: ColorsProvider.TIMELINE_CONTAINER_COLOR),
                    child: Icon(
                      Icons.close,
                      size: 15,
                      color: ColorsProvider.PRIMARY_COLOR,
                    )),
              ))
        ],
      ),
      content: SizedBox(
        width: MediaQuery.of(context).size.width * 0.80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                  color: ColorsProvider.TEXTAREA_COLOR,
                  borderRadius: BorderRadius.circular(14)),
              child: TextFormField(
                controller: controller,
                minLines: 7,
                maxLines: 15,
                maxLength: 250,
                onChanged: (value) {},
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(20),
                  hintText: "I am grateful for...",
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                  ),
                  counterStyle: TextStyle(
                      color: ColorsProvider.UNSELECTED_COLOR,
                      fontWeight: FontWeight.w500,
                      fontSize: 13.sp),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  filled: true,
                  fillColor: ColorsProvider.TEXTAREA_COLOR,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.77.h,
            ),
            Text(
              "Suggested Affirmations",
              style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                  color: ColorsProvider.UNSELECTED_COLOR),
            ),
            SizedBox(
              height: 8.h,
            ),
            Row(
              children: [
                GestureDetector(
                    onTap: () {
                      insert("mother nature");
                    },
                    child: const ChipWidget(name: "mother nature")),
                GestureDetector(
                    onTap: () {
                      insert("the sun shining bright");
                    },
                    child: const ChipWidget(name: "the sun shining bright")),
              ],
            ),
            Row(
              children: [
                GestureDetector(
                    onTap: () {
                      insert("my business doing well and growing");
                    },
                    child: const ChipWidget(
                        name: "my business doing well and growing")),
              ],
            ),
            SizedBox(
              height: 26.h,
            ),
            CustomButton(
                text: "Done",
                function: () {
                  Navigator.pop(context);
                }),
          ],
        ),
      ));

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
