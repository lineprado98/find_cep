// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_page_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AppPageStore on _AppPageStoreBase, Store {
  late final _$isLoadingAtom =
      Atom(name: '_AppPageStoreBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$isErrorAtom =
      Atom(name: '_AppPageStoreBase.isError', context: context);

  @override
  bool get isError {
    _$isErrorAtom.reportRead();
    return super.isError;
  }

  @override
  set isError(bool value) {
    _$isErrorAtom.reportWrite(value, super.isError, () {
      super.isError = value;
    });
  }

  late final _$responseAtom =
      Atom(name: '_AppPageStoreBase.response', context: context);

  @override
  Address get response {
    _$responseAtom.reportRead();
    return super.response;
  }

  @override
  set response(Address value) {
    _$responseAtom.reportWrite(value, super.response, () {
      super.response = value;
    });
  }

  late final _$_AppPageStoreBaseActionController =
      ActionController(name: '_AppPageStoreBase', context: context);

  @override
  dynamic setIsLoading(bool value) {
    final _$actionInfo = _$_AppPageStoreBaseActionController.startAction(
        name: '_AppPageStoreBase.setIsLoading');
    try {
      return super.setIsLoading(value);
    } finally {
      _$_AppPageStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsError(bool value) {
    final _$actionInfo = _$_AppPageStoreBaseActionController.startAction(
        name: '_AppPageStoreBase.setIsError');
    try {
      return super.setIsError(value);
    } finally {
      _$_AppPageStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setResponse(Address value) {
    final _$actionInfo = _$_AppPageStoreBaseActionController.startAction(
        name: '_AppPageStoreBase.setResponse');
    try {
      return super.setResponse(value);
    } finally {
      _$_AppPageStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
isError: ${isError},
response: ${response}
    ''';
  }
}
