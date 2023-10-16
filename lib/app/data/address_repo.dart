import 'package:find_cep/app/core/service_dio/i_service_http.dart';
import 'package:find_cep/app/data/i_address.dart';
import 'package:find_cep/app/domain/entities/address.dart';

class AddressRepo implements IAddress {
  final IserviceHttp service;
  AddressRepo({required this.service});

  @override
  Future<Address> getAddress({required String cep}) async {
    try {
      final res = await service.get(url: 'https://viacep.com.br/ws/$cep/json/');
      return Address.fromJson(res.body);
    } on Exception {
      rethrow;
    }
  }
}
