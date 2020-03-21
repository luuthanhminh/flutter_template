// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BaseStore on _BaseStore, Store {
  final _$isLoadingAtom = Atom(name: '_BaseStore.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.context.enforceReadPolicy(_$isLoadingAtom);
    _$isLoadingAtom.reportObserved();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.context.conditionallyRunInAction(() {
      super.isLoading = value;
      _$isLoadingAtom.reportChanged();
    }, _$isLoadingAtom, name: '${_$isLoadingAtom.name}_set');
  }

  final _$_BaseStoreActionController = ActionController(name: '_BaseStore');

  @override
  void showLoading() {
    final _$actionInfo = _$_BaseStoreActionController.startAction();
    try {
      return super.showLoading();
    } finally {
      _$_BaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void hideLoading() {
    final _$actionInfo = _$_BaseStoreActionController.startAction();
    try {
      return super.hideLoading();
    } finally {
      _$_BaseStoreActionController.endAction(_$actionInfo);
    }
  }
}
