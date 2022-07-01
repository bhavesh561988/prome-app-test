import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class RegisterController extends GetxController {
  TextEditingController firstNameController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  RxBool isFormValidate = false.obs;

  String? fNamevalidator(String value) {
    if (value.isEmpty) {
      return 'Please this field must be filled';
    }
    return null;
  }

  validateForm() {
    if (formKey.currentState?.validate() == true) {
      print("valid");
    }
  }
}
