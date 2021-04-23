import 'package:app_tia_benta/shared/model/base.model.dart';
import 'package:flutter/widgets.dart';

class ClientModel extends BaseModel {
  final String name;

  ClientModel({@required this.name});

  @override
  factory ClientModel.fromJson(Map<String, dynamic> json) {
    return ClientModel(name: json['name']);
  }
}
