import 'package:dio/dio.dart';

class CustomResponseHttp {
  final int statusCode;
  final dynamic body;
  final String? messageCode;
  CustomResponseHttp(
      {required this.statusCode, required this.body, this.messageCode});

  factory CustomResponseHttp.fromDio(Response dio) {
    return CustomResponseHttp(
        statusCode: dio.statusCode ?? 500,
        messageCode: dio.statusMessage,
        body: dio.data);
  }
}
