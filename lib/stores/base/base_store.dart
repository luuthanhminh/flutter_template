import 'package:flutter_boiler_template/services/navigation_service.dart';
import 'package:mobx/mobx.dart';

part 'base_store.g.dart';

class BaseStore = _BaseStore with _$BaseStore;

abstract class _BaseStore with Store {
  INavigationService navigationService;
  
  void initNavigation(INavigationService navigationService){
    this.navigationService = navigationService;
  }

  @observable
  bool isLoading;

  @action
  void showLoading() {
    isLoading = true;
  }

  @action
  void hideLoading() {
    isLoading = false;
  }
}
