import 'package:covid19/data/global_data.dart';

class BaseResponse {
  GlobalData attributes;

  BaseResponse({this.attributes});

  BaseResponse.fromJson(Map<String, dynamic> json) {
    attributes = GlobalData.fromJson(json["atrributes"]);
  }
}
