import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:apptest_food/widget/dialog/dialog_util.dart';
import 'package:get/get.dart';

import 'object_util.dart';

class ErrorUtil {
  static String? getErrorMsg(error, trace) {
    String? errorMsg;
    if (error is DioException) {
      if (kDebugMode) {
        print(
            'Error api: ${error.requestOptions.method} ${error.requestOptions.path}');
        print('Error request headers: ${error.requestOptions.headers}');
        print('Error request data: ${error.requestOptions.data}');
        print('Error response: ${error.response?.data}');
        print('Error response code: ${error.response?.statusCode}');
      }

      if (error.response?.statusCode == 500 ||
          error.response?.statusCode == 501 ||
          error.response?.statusCode == 502 ||
          error.response?.statusCode == 503) {
        return error.response?.data['errors'][0]['code'];
      }

      if (error.response?.statusCode == 403) {
        return error.response?.data['errors'][0]['code'];
      }

      if (error.response?.data != null &&
          error.response?.data['error'] != null) {
        try {
          errorMsg = error.response?.data['error']['message'];
          print("errorMsg $errorMsg");
          switch (errorMsg) {}
        } catch (ex) {
          errorMsg = '${error.requestOptions.path}\n$error';
        }
      } else {
        if (error.response?.data == null) {
          errorMsg = 'SERVER_NOT_RESPONDING';
        } else {
          errorMsg = '${error.requestOptions.path}\n$error';
        }
      }
    } else {
      if (kDebugMode) {
        print(error);
        print(trace);
      }
      errorMsg = error.toString();
    }

    return errorMsg;
  }

  static FutureOr<void> catchError(error, trace) {
    if (kDebugMode) {
      print(error);
      print(trace);
    }
    String? msg = ErrorUtil.getErrorMsg(error, trace);
    if (ObjectUtil.isNotEmpty(msg)) {
      DialogUtil.showErrorMessage(msg!.tr);
    } else {
      DialogUtil.showErrorMessage(error.toString());
    }

    return Future.value(null);
  }
}
