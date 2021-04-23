import 'dart:convert';

import 'package:app_tia_benta/shared/model/base.model.dart';

class Utils {
  static T fromJson<T extends BaseModel>(T type, String json) {
    return type;
  }

  static List<T> _parse<T>(String data, T convert(dynamic e)) {
    try {
      List<dynamic> result = jsonDecode(data);
      return result.map((e) => convert(e)).toList();
    } catch (Exception) {
      print('Deu erro');
      return [];
    }
  }
}
