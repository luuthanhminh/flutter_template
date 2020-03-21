import 'dart:async';
import 'package:mobx/mobx.dart';

import '../routes.dart';
import 'base/base_store.dart';



class SplashStore extends BaseStore {
 

  initState() {
    var _duration = Duration(milliseconds: 5000);
    return Timer(_duration, navigateToNextPage);
  }

  @action
  void navigateToNextPage() {
    this.navigationService.pushReplacementNamed(Routes.login);
  }
}
