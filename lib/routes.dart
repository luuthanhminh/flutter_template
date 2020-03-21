
import 'package:flutter/material.dart';
import 'package:flutter_boiler_template/pages/login_page.dart';
import 'package:flutter_boiler_template/pages/splash_page.dart';
import 'package:flutter_boiler_template/stores/login_store.dart';
import 'package:flutter_boiler_template/stores/splash_store.dart';
import 'package:provider/provider.dart';

class Routes {
  Routes._();

  //static variables
  static const String splash = '/splash';
  static const String login = '/login';

  static final routes = <String, WidgetBuilder>{
    splash: (BuildContext context) => Consumer<SplashStore>(builder: (context, store, _) => SplashPage(store)),
    login: (BuildContext context) => Consumer<LoginStore>(builder: (context, store, _) => LoginPage(store))
  };
}
