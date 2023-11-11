import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://edu.tpowep.com/';
  final Dio _dio;

  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required String url}) async {
    var response = await _dio.get('$url');
    print(response.data);
    return response.data;
  }
}
