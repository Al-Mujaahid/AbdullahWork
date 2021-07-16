

import 'package:dio/dio.dart';
import 'package:figma_work/src/models/core/ApiResponse.dart';

class DiOClient {

  Dio _dio = Dio();

  Future<ApiResponse> makePostResquest(url, data) async {
    return await _dio.post(url, data: FormData.fromMap(data)).then((value) => ApiResponse.fromJson(value.data));
  }
}