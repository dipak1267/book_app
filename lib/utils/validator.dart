class Validation {
  static bool isEmailValid({required email}) {
    var expression =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    return RegExp(expression).hasMatch(email);
  }
}
