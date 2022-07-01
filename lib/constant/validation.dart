class Validation {
  static String? firstNameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please this field must be filled';
    }
    return null;
  }
}
