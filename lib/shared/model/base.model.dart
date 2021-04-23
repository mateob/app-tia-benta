abstract class BaseModel {
  String id;
  BaseModel({this.id});

  BaseModel.fromJson(Map<String, dynamic> json);
}
