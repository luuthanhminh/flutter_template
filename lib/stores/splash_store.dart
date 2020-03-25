import 'dart:async';
import 'package:mobx/mobx.dart';

import '../routes.dart';
import 'base/base_store.dart';

part 'splash_store.g.dart';

class SplashStore = _SplashStore with _$SplashStore;

abstract class _SplashStore extends BaseStore with Store {
  initState() {
    var _duration = Duration(milliseconds: 5000);
    return Timer(_duration, navigateToNextPage);
  }

  @action
  void navigateToNextPage() {
    this.navigationService.pushReplacementNamed(Routes.login);
  }
}
