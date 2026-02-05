class Validator {
  static String? validateText({
    required String? value,
    required String message,
  }) {
    if (value == null || value.isEmpty) {
      return message;
    }
    return null;
  }

  static String? validateEmail({
    required String? value,
    required String message,
  }) {
    if (value == null || value.isEmpty) {
      return message;
    }
    if (!value.contains("@") || !value.contains(".com")) {
      return "Enter valid Email";
    }
    return null;
  }

  static String? validatePassword({required String? value}) {
    if (value == null || value.isEmpty) {
      return "Password is required";
    }

    if (value.length < 6) {
      return "Password must be at least 6 characters";
    }

    return null;
  }
}
