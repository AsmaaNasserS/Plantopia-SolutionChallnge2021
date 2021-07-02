import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioHelper {
  static Dio dio;
//192.168.42.85
  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'http://192.168.0.105:8080/',
        receiveDataWhenStatusError: true,
        headers: {
          // 'Content-Type': 'application/json',
        },
      ),
    );
  }

  static Future<Response> getData({
    @required String url,
    @required Map<String, dynamic> query,
    String token,
  }) async {
    dio.options.headers = {
      'Authorization' : 'Bearer $token'

      //Authorization
    };
    return await dio.get(
      url,
      queryParameters: query,
    );
  }

  static Future<Response> postData({
    @required String path,
    Map<String, dynamic> query,
    String token,
    @required data,
  }) async {
    dio.options.headers = {
        'Authorization' : 'Bearer $token'

      };
    return await dio.post(
        path,
        queryParameters: query,
        data: data);
  }
}

/////////////backend////////
// void getData()
// { 'http://192.168.0.105:8080/'
//   DioHelper.getData(url: 'plant/user').then((value) {
//     print(value.data.toString());
//     print(value.data);
//     print('hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee');
//     print(value.statusCode);
//     emit(GetImageState());
//   }).catchError((error){print(error.toString());
//   emit(IdentificationErrorState());});
// }
