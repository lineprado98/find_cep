import 'package:find_cep/app/domain/entities/address.dart';
import 'package:find_cep/app/domain/usecases/find_address_case.dart';
import 'package:mobx/mobx.dart';

part 'app_page_store.g.dart';

class AppPageStore = _AppPageStoreBase with _$AppPageStore;

abstract class _AppPageStoreBase with Store {
  final FindAddressCase findAddressCase;

  _AppPageStoreBase({required this.findAddressCase});

  @observable
  bool isLoading = false;
  @action
  setIsLoading(bool value) {
    isLoading = value;
  }

  @observable
  bool isError = false;
  @action
  void setIsError(bool value) {
    isError = value;
  }

  @observable
  Address response = Address.empty();

  @action
  void setResponse(Address value) {
    response = value;
  }

  Future<void> findAddress({required String cep}) async {
    try {
      setResponse(Address.empty());
      setIsError(false);
      setIsLoading(true);

      final res = await findAddressCase.findAddress(cep);
      setResponse(res);
      setIsLoading(false);
    } catch (e) {
      setIsLoading(false);
      setIsError(true);
    }
  }
}
