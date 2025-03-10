import 'dart:convert';

import 'package:apptest_food/constants/utils/object_util.dart';
import 'package:intl/intl.dart';

class AppUtil {
  static AppUtil instance = AppUtil();

  static List<T> map<T>(List? list, Function handler, {int? length}) {
    final List<T> result = [];
    int size;

    if (ObjectUtil.isNotEmpty(list)) {
      size = (length != null && length <= (list?.length ?? 0))
          ? length
          : (list?.length ?? 0);

      for (var i = 0; i < size; i++) {
        result.add(handler(i, list?[i]));
      }
    }

    return result;
  }

  static Map<String, dynamic> filterRequestData(
      Map<String, dynamic> mapToEdit) {
    final keys = mapToEdit.keys.toList(growable: false);
    for (String key in keys) {
      final value = mapToEdit[key];
      if (value == null) {
        mapToEdit.remove(key);
      } else if (value is String) {
        if (value.isEmpty) {
          mapToEdit.remove(key);
        }
      } else if (value is Map) {
        filterRequestData(value as Map<String, dynamic>);
      }
    }
    return mapToEdit;
  }

  static Map<String, dynamic> parseJwt(String token) {
    final parts = token.split('.');
    if (parts.length != 3) {
      throw Exception('invalid token');
    }

    final payload = _decodeBase64(parts[1]);
    final payloadMap = json.decode(payload);
    if (payloadMap is! Map<String, dynamic>) {
      throw Exception('invalid payload');
    }

    return payloadMap;
  }

  static String _decodeBase64(String str) {
    String output = str.replaceAll('-', '+').replaceAll('_', '/');

    switch (output.length % 4) {
      case 0:
        break;
      case 2:
        output += '==';
        break;
      case 3:
        output += '=';
        break;
      default:
        throw Exception('Illegal base64url string!"');
    }

    return utf8.decode(base64Url.decode(output));
  }

  // static String getVideo({required List<ImageModel> listVideo}) {
  //   if (listVideo.isEmpty) {
  //     return ImageConstant.emptyImage;
  //   } else if (listVideo.first.file?.file != null) {
  //     return urlImage + listVideo.first.file!.file.first;
  //   } else {
  //     return "https://assets.mixkit.co/videos/preview/mixkit-spinning-around-the-earth-29351-large.mp4";
  //   }
  // }

  // static String getImageSlide({required ImageModel? image}) {
  //   if (image == null) {
  //     return ImageConstant.emptyImage;
  //   } else if (image.file?.file != null) {
  //     print(image.file!.file!.first);
  //     return urlImage + image.file!.file!.first;
  //   } else {
  //     return ImageConstant.emptyImage;
  //   }
  // }

  // static String getImage({required List<ImageModel> listImage}) {
  //   if (listImage.isEmpty) {
  //     return ImageConstant.imgLogo;
  //   } else if (listImage.first.file?.file != null) {
  //     var extension = listImage.first.file!.file.first.split('.').last;
  //     if (extension.contains('jpg') ||
  //         extension.contains('png') ||
  //         extension.contains('jpeg')) {
  //       return urlImage + listImage.first.file!.file.first;
  //     } else {
  //       return ImageConstant.imgLogo;
  //     }
  //   } else {
  //     return ImageConstant.imgLogo;
  //   }
  // }

  // static String totalValueByUnit(List<ProductModel> itemCart, String key) {
  //   double sumTON = itemCart.where((element) => element.unit == 'TON').fold(0,
  //       (double previousValue, ProductModel item) {
  //     return previousValue + (int.parse(item.controller.text));
  //   });
  //   double sumBAG = itemCart.where((element) => element.unit == 'BAG').fold(0,
  //       (double previousValue, ProductModel item) {
  //     return previousValue + (int.parse(item.controller.text));
  //   });
  //   if (key == 'TON') {
  //     double numTon = (sumTON + sumBAG * 0.05);
  //     String result = numTon.toStringAsFixed(2);
  //     if (result.endsWith("00")) {
  //       result = numTon.toStringAsFixed(0);
  //     }
  //     return result;
  //   } else {
  //     double numBag = sumTON * 20 + sumBAG;
  //     String result = numBag.toStringAsFixed(2);
  //     if (result.endsWith("00")) {
  //       result = numBag.toStringAsFixed(0);
  //     }
  //     return result;
  //   }
  // }
  String configDoubleToString(double total) {
    int decimalPlaces = total.toString().split(".")[1].length;
    if (decimalPlaces > 2) {
      return total.toStringAsFixed(2);
    } else {
      return total.toString();
    }
  }

  static String formatMoney(
    double money, {
    currency = 'VND',
    fractionDigits = 0,
    bool isContract = false,
    bool isShort = false,
  }) {
    if (money.isNaN) {
      money = 0;
    }
    String format = '###,##${isContract ? '0.00' : '#.##'}';
    switch (fractionDigits) {
      case 0:
        format = '###,###';
        break;
      case 1:
        format = '###,##${isContract ? '0.0' : '#.#'}';
        break;
      case 2:
        format = '###,##${isContract ? '0.00' : '#.##'}';
        break;
      case 3:
        format = '###,##${isContract ? '0.000' : '#.###'}';
        break;
      case 4:
        format = '###,###${isContract ? '0.0000' : '#.####'}';
        break;
      case 5:
        format = '###,##${isContract ? '0.00000' : '#.#####'}';
        break;
      case 6:
        format = '###,##${isContract ? '0.000000' : '#.######'}';
        break;
      case 7:
        format = '###,##${isContract ? '0.0000000' : '#.#######'}';
        break;
      case 8:
        format = '###,##${isContract ? '0.00000000' : '#.########'}';
        break;
      case 9:
        format = '###,##${isContract ? '0.000000000' : '#.#########'}';
        break;
    }
    var f = NumberFormat(format, 'en_US');

    if (currency == 'đ' || currency == 'VND') {
      f = NumberFormat('###,###', 'en_US');
    }

    if (isShort) {
      if (money < 100000) {
        // less than a million
        return '$currency ${f.format(money)} ';
      } else if (money >= 100000 && money < (1000 * 10 * 100)) {
        double result = money / 1000;
        f.minimumFractionDigits = 0;
        f.maximumFractionDigits = 2;
        return '$currency ${f.format(result)} K ';
      } else if (money >= 1000000 && money < (1000000 * 10 * 100)) {
        // less than 100 million
        double result = money / 1000000;
        f.minimumFractionDigits = 0;
        f.maximumFractionDigits = 2;
        return '$currency ${f.format(result)} M';
      } else if (money >= (1000000 * 10 * 100) &&
          money < (1000000 * 10 * 100 * 100)) {
        // less than 100 billion
        double result = money / (1000000 * 10 * 100);
        f.minimumFractionDigits = 0;
        f.maximumFractionDigits = 2;
        return '$currency ${f.format(result)} B ';
      } else if (money >= (1000000 * 10 * 100 * 100) &&
          money < (1000000 * 10 * 100 * 100 * 100)) {
        // less than 100 trillion
        double result = money / (1000000 * 10 * 100 * 100);
        f.minimumFractionDigits = 0;
        f.maximumFractionDigits = 2;
        return '$currency ${f.format(result)} T ';
      }
    }

    return '${f.format(money)} $currency';
  }

  String formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.length == 10) {
      final String formattedPhoneNumber =
          '${phoneNumber.substring(0, 4)}.${phoneNumber.substring(4, 7)}.${phoneNumber.substring(7)}';
      return formattedPhoneNumber;
    } else {
      return phoneNumber;
    }
  }

  String formatDouble(double number) {
    NumberFormat numberFormat = NumberFormat('#,##0.00', 'en_US');
    String formattedValue = numberFormat.format(number);
    return formattedValue;
  }
}
