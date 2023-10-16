import 'package:find_cep/app/domain/entities/address.dart';

abstract class IAddress {
  Future<Address> getAddress({required String cep});
}
