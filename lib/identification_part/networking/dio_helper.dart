import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioHelper {
  static Dio dio;
//192.168.42.85
  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.plant.id/',
        receiveDataWhenStatusError: true,
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'api_key': 'SvoT31x9htINaM4C6OE9F0DK6N2ltRe6QCB8sAa9zJKwKnnjVP',
          // 'plant_language' :'en',
        },
      ),
    );
  }

  static Future<Response> getData({
    @required String url,
    // @required Map<String, dynamic> query,
  }) async {
    return await dio.get(
      url,
      //  queryParameters: query,
    );
  }

  static Future<Response> postData({
    @required String path,
    Map<String, dynamic>query,
    @required Map<String, dynamic>data,
  }) async {
    return await dio.post(
        path,
        queryParameters: query,
        data: data);
  }
}

/////////////////backend////////
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
