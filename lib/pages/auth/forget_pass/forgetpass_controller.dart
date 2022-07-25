import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:quotedemo/constant/go.dart';
import 'package:quotedemo/gen/fonts.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quotedemo/pages/auth/forget_pass/reset_password/reset.dart';

class ForgetController extends GetxController {
  TextEditingController firstNameController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  RxBool isFormValidate = false.obs;

  RxBool isEmailNameValidate = false.obs;

  validateForm(context) {
    if (formKey.currentState?.validate() == true) {
      Go.to(context, const ResetScreen());
    } else {
      if (isEmailNameValidate.value == false) {
        showOverlay(context, "Email");
      }
    }
  }

  OverlayEntry? emailEntry;
  showOverlay(context, type) {
    final overlay1 = Overlay.of(context);

    if (type == "Email") {
      emailEntry = OverlayEntry(builder: (context) {
        return OverLayContent(
          entry: emailEntry,
          type: "Email",
          top: MediaQuery.of(context).size.height * 0.10,
        );
      });
      overlay1!.insert(emailEntry!);
    }
  }
}

class OverLayContent extends StatelessWidget {
  OverlayEntry? entry;
  final String type;
  final double top;
  OverLayContent({
    Key? key,
    this.entry,
    required this.type,
    required this.top,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 20,
      right: 20,
      child: Material(
        child: SlideInRight(
          child: Dismissible(
            onDismissed: (d) {
              entry?.remove();
              entry = null;
            },
            key: UniqueKey(),
            child: Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Please Enter Valid $type",
                      style: TextStyle(
                          color: const Color(
                            0xffFF1010,
                          ),
                          fontFamily: FontFamily.poppins,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    GestureDetector(
                      onTap: () {
                        entry?.remove();
                        entry = null;
                      },
                      child: const Icon(
                        Icons.close,
                        color: Color(
                          0xffFF1010,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  color: const Color(0xffFFEDED),
                  borderRadius: BorderRadius.circular(14)),
              height: 50,
              width: MediaQuery.of(context).size.width,
            ),
          ),
        ),
      ),
    );
  }
}
