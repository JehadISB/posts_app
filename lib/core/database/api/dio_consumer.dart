import 'package:dio/dio.dart';
import 'package:posts_clesn_app/core/database/api/api_consumer.dart';
import 'package:posts_clesn_app/core/database/api/end_points.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;

  DioConsumer({required this.dio}) {
    dio.options.baseUrl=EndPoints.baseUrl;
  }

  @override
  Future get({
    required String path,
    Object? data,
    Map<String, dynamic>? queryParameters,
  }) async {
   try {
     var resposne= await dio.get(path,data: data,queryParameters: queryParameters);
     return resposne.data;
   } catch (e) {
     print(e);
   }
  }

  @override
  Future post({
    required String path,
    data,
    Map<String, dynamic>? queryParameters,
    bool isFormData = false,
  }) async {
  try {
          var response= await dio.post(path,
          data: isFormData ? FormData.fromMap(data) : data,
          queryParameters: queryParameters,);
          return response.data;
  } catch (e) {
    print(e);
  }
  }

  @override
  Future patch({
    required String path,
    data,
    Map<String, dynamic>? queryParameters,
    bool isFormData = false,
  }) async {
   try {
     var response = await dio.patch(path,
        data: isFormData?FormData.fromMap(data):data,
       queryParameters: queryParameters,
     );
     return response.data;
   } catch (e) {
     print(e);
   }
  }

  @override
  Future delete({
    required String path,
    Object? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      var response = await dio.delete(path,data: data,queryParameters: queryParameters);
      return response.data;
    } catch (e) {
      print(e);
    }
  }
}
