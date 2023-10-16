import 'package:find_cep/app/core/service_dio/i_service_http.dart';
import 'package:find_cep/app/core/service_dio/service_dio.dart';
import 'package:find_cep/app/data/address_repo.dart';
import 'package:find_cep/app/data/i_address.dart';
import 'package:find_cep/app/domain/usecases/find_address_case.dart';
import 'package:find_cep/app/presenter/store/app_page_store.dart';

import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

class ServiceLocator {
  static void setup() {
    getIt.registerFactory<IserviceHttp>(() => ServiceDio());

    getIt.registerFactory<IAddress>(
        () => AddressRepo(service: getIt.get<IserviceHttp>()));

    getIt.registerFactory<FindAddressCase>(
        () => FindAddressCase(repository: getIt.get<IAddress>()));

    getIt.registerSingleton<AppPageStore>(
        AppPageStore(findAddressCase: getIt<FindAddressCase>()));
  }
}
