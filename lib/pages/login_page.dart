import 'package:flutter/material.dart';
import 'package:flutter_boiler_template/pages/base/base_page.dart';
import 'package:flutter_boiler_template/stores/login_store.dart';
import 'package:flutter_boiler_template/utils/device/device_utils.dart';
import 'package:flutter_boiler_template/widgets/progress_indicator_widget.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class LoginPage extends BaseStateFullPage<LoginStore> {
  LoginPage(LoginStore store) : super(store);

  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends BaseState<LoginPage> {
  LoginStore get loginStore => this.widget.store;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Stack(children: <Widget>[
        Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Column(children: <Widget>[
              Observer(
                  builder: (_) => Container(
                        width: double.infinity,
                        height: 50,
                        child: TextField(
                          onChanged: (value) => loginStore.email = value,
                          decoration: InputDecoration(
                              labelText: "Email",
                              hintText: "Your email",
                              border: OutlineInputBorder()),
                        ),
                      )),
              SizedBox(
                height: 20,
              ),
              Observer(
                  builder: (_) => Container(
                        width: double.infinity,
                        height: 50,
                        child: TextField(
                          onChanged: (value) => loginStore.password = value,
                          decoration: InputDecoration(
                              labelText: "Password",
                              hintText: "Your password",
                              border: OutlineInputBorder()),
                        ),
                      )),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                height: 50,
                child: RaisedButton(
                    onPressed: () {
                      DeviceUtils.hideKeyboard(context);
                      loginStore.login();
                    },
                    child: Text("Login")),
              )
            ])),
        Observer(
            builder: (_) => Visibility(
                  child: const CustomProgressIndicatorWidget(),
                  visible: loginStore.isLoading,
                ))
      ]),
    );
  }
}
