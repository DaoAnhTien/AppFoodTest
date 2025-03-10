extension EmailValidator on String {
  bool isValidEmail() {
    if (isEmpty) {
      return false;
    }

    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }

  bool isValidNFTUsername([int minLength = 3, int maxLength = 30]) {
    if (isEmpty || length < minLength || length > maxLength) {
      return false;
    }

    if (contains(' ')) {
      return false;
    }

    bool hasSpecialCharacters = contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));

    return !hasSpecialCharacters;
  }

  bool isValidPassword([int minLength = 8]) {
    if (isEmpty || length < minLength) {
      return false;
    }

    bool hasUppercase = contains(RegExp(r'[A-Z]'));
    bool hasDigits = contains(RegExp(r'[0-9]'));
    bool hasLowercase = contains(RegExp(r'[a-z]'));
    // bool hasSpecialCharacters = this.contains(new RegExp(r'[!@#$%^&*(),.?":{}|<>]'));

    return hasDigits & hasUppercase & hasLowercase;
  }

  bool hasUppercase() {
    if (isEmpty) {
      return false;
    }

    return contains(RegExp(r'[A-Z]'));
  }

  bool hasLowercase() {
    if (isEmpty) {
      return false;
    }

    return contains(RegExp(r'[a-z]'));
  }

  bool hasDigit() {
    if (isEmpty) {
      return false;
    }

    return contains(RegExp(r'[0-9]'));
  }

  bool hasMinLength([int minLength = 8]) {
    if (isEmpty || length < minLength) {
      return false;
    }

    return true;
  }

  bool isValidOTP() {
    if (isEmpty || length != 4) {
      return false;
    }

    return RegExp(r'^[0-9]+$').hasMatch(this);
  }

  bool isValidName() {
    if (isEmpty) {
      return false;
    }

    bool hasDigits = contains(RegExp(r'[0-9]'));
    bool hasSpecialCharacters = contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));

    return !hasSpecialCharacters && !hasDigits;
  }

  bool isValidPhone() {
    if (isEmpty || length != 10) {
      return false;
    }

    return RegExp(r'^[0-9]+$').hasMatch(this);
  }

  bool isValidNumber() {
    if (isEmpty) {
      return false;
    }

    return RegExp(r'^[0-9]+$').hasMatch(this);
  }

  bool isValidDate() {
    if (isEmpty || replaceAll('-', '').length != 10) {
      return false;
    }

    return RegExp(
            r'^(((0[1-9]|[12][0-9]|30)[-/]?(0[13-9]|1[012])|31[-/]?(0[13578]|1[02])|(0[1-9]|1[0-9]|2[0-8])[-/]?02)[-/]?[0-9]{4}|29[-/]?02[-/]?([0-9]{2}(([2468][048]|[02468][48])|[13579][26])|([13579][26]|[02468][048]|0[0-9]|1[0-6])00))$')
        .hasMatch(this);
  }

  bool isValidReferralCode() {
    if (isEmpty) {
      return true;
    }

    if (length != 8) {
      return false;
    }

    return RegExp(r'^[0-9]+$').hasMatch(this);
  }

  bool isNumeric() {
    if (isEmpty) {
      return false;
    }

    if (double.tryParse(this) == null) {
      return false;
    } else {
      return true;
    }
  }

  bool hasMinLengthUserName([int minLength = 3]) {
    if (isEmpty || length < minLength) {
      return false;
    }

    return true;
  }
}
