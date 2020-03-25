import 'package:mobx/mobx.dart';

import 'base/base_store.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore extends BaseStore with Store {
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

  void login() {
    print("Login function is executed");
  }
}
