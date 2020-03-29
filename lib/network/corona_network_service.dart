import 'package:covid19/data/base_response.dart';
import 'package:covid19/data/global_data.dart';
import 'package:dio/dio.dart';
import 'dart:convert' show json;

abstract class CoronaNetworkService {
  Future<List<BaseResponse>> getGlobalData();
}

class CoronaNetworkServiceImpl implements CoronaNetworkService {
  final String _baseUrl = "https://api.kawalcorona.com/";

  Dio _dio;

  CoronaNetworkServiceImpl(){
    final BaseOptions options = BaseOptions(
      baseUrl: _baseUrl,
      connectTimeout: 5000,
      receiveTimeout: 3000,
    );
    _dio = Dio(options);
  }

  @override
  Future<List<BaseResponse>> getGlobalData() async {
    Response response = await _dio.get("$_baseUrl");
    final result = json.decode(response.data);
//    return  BaseResponse.fromJson(json.decode(response.data));
    print("Response Network = $result");
    return result.map((object) {
      return BaseResponse.fromJson(object);
    }).toList();
  }

}