class AppValidators {

  static String? validateText(String val) {
    RegExp textRegex = RegExp(r'^[\p{L}\p{N}\s,.-]+$', unicode: true);
    if (val.isEmpty) {
      return 'This field is required';
    } else if (!textRegex.hasMatch(val)) {
      return 'Enter valid text';
    } else {
      return null;
    }
  }
}
