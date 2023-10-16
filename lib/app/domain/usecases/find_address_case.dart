import 'package:find_cep/app/data/i_address.dart';
import 'package:find_cep/app/domain/entities/address.dart';

class FindAddressCase {
  final IAddress repository;
  const FindAddressCase({required this.repository});

  Future<Address> findAddress(String cep) async {
    return await repository.getAddress(cep: cep);
  }
}
