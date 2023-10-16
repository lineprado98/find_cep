import 'package:dio/dio.dart';
import 'package:find_cep/app/core/service_dio/i_service_http.dart';
import 'package:find_cep/app/core/service_dio/model/custom_response_http.dart';

class ServiceDio implements IserviceHttp {
  final dio = Dio();

  @override
  Future<CustomResponseHttp> get({required url}) async {
    try {
      final response = await dio.get(url);
      return CustomResponseHttp.fromDio(response);
    } catch (e) {
      final error = e as DioException;
      return CustomResponseHttp(
          statusCode: error.response?.statusCode ?? 500,
          messageCode: error.response?.statusMessage,
          body: error.response?.data);
    }
  }

  @override
  Future<CustomResponseHttp> post({required url}) {
    // TODO: implement post
    throw UnimplementedError();
  }
}
