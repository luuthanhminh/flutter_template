import 'package:flutter/material.dart';
import 'package:flutter_boiler_template/pages/base/base_page.dart';
import 'package:flutter_boiler_template/stores/login_store.dart';

class LoginPage extends BaseStatelessPage<LoginStore> {
  LoginPage(LoginStore store) : super(store);

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(body: Center(child: Text("Login Page")));
  }
}
