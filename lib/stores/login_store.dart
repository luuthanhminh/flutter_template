import 'package:mobx/mobx.dart';

import 'base/base_store.dart';

class LoginStore extends BaseStore{
 
  @observable
  String email = '';

  @observable
  String password = '';

  @action
  void setEmail(String value) {
    email = value;
  }

  @action
  void setPassword(String value) {
    password = value;
  }

  void login(){
    showLoading();
  }
}