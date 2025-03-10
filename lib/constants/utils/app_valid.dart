import 'package:flutter/material.dart';
import 'package:apptest_food/constants/utils/app_util.dart';
import 'package:get/get.dart';

class AppValid {
  AppValid._();
  static validateEmpty() {
    return (value) {
      if (value == null || value.length == 0) return 'valid_emty'.tr;
    };
  }

  static validatePhone() {
    return (value) {
      if (value == null || value.length == 0) return 'valid_emty'.tr;
      RegExp regex = RegExp(r'^(?:[+0]9)?[0-9]{10}$');
      if (!regex.hasMatch(value)) return 'invalid_phone_number'.tr;
    };
  }

  static validateEmail() {
    return (value) {
      final value1 = value.replaceAll(' ', '');
      if (value1 == null || value1.length == 0) {
        return 'valid_emty'.tr;
      } else {
        RegExp regex = RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
        if (!regex.hasMatch(value1)) {
          return 'invalid_email'.tr;
        } else {
          return null;
        }
      }
    };
  }

  static validatePassword() {
    return (value) {
      if (value == null || value.length < 6) {
        return 'Password_must_have_at_least_6_characters'.tr;
      } else {
        RegExp regex = RegExp(r'^[0-9a-zA-Z!@#\$&*~]{6,}$');
        if (!regex.hasMatch(value)) {
          return 'invalid_password'.tr;
        } else {
          return null;
        }
      }
    };
  }

  static validatePasswordConfirm(TextEditingController controller) {
    return (value) {
      if (controller.text != value) {
        return 're_enter_incorrect_password'.tr;
      } else {
        return null;
      }
    };
  }

  static validatePhoneNumber() {
    RegExp regex = RegExp(r'^(?:[+0]9)?[0-9]{10}$');
    return (value) {
      if (value == null || value.length == 0) {
        return 'valid_emty'.tr;
      } else if (value.length != 10) {
        return 'valid_phone'.tr;
      } else if (!regex.hasMatch(value)) {
        return 'valid_phone'.tr;
      } else {
        return null;
      }
    };
  }

  static validatePhoneOrEmail() {
    return (value) {
      if (value == null || value.length == 0) {
        return 'valid_emty'.tr;
      }
      RegExp regexPhone = RegExp(r'^(?:[+0]9)?[0-9]{10}$');
      RegExp regexEmail = RegExp(
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
      if (!regexPhone.hasMatch(value)) {
        if (!regexEmail.hasMatch(value)) return 'invalid_email_or_phone'.tr;
      }
    };
  }

  static formatMoney(String inputText) {
    String numberText = inputText.replaceAll(RegExp(r'[^\d]'), '');
    String resultString = numberText.replaceAll('.', '');
    return resultString;
  }
}
