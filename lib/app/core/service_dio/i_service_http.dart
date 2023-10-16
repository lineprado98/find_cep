import 'package:find_cep/app/core/service_dio/model/custom_response_http.dart';

abstract class IserviceHttp {
  Future<CustomResponseHttp> get({required url});

  Future<CustomResponseHttp> post({required url});
}
