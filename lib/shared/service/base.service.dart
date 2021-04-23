import 'dart:convert';

import 'package:app_tia_benta/shared/model/base.model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';

abstract class BaseService<T extends BaseModel> {
  final url = Uri.parse(env['URL_API']);
  final type = T;
  Future<T> getById(String id) async {
    Response response = await get(url);
    String json = response.body;
    Map<String, dynamic> map = jsonDecode(json);

    if (response.statusCode == 200) {
      return response.body as T;
    }
  }
}
