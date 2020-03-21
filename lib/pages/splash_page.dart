import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boiler_template/pages/base/base_page.dart';
import 'package:flutter_boiler_template/stores/splash_store.dart';


class SplashPage extends BaseStateFullPage<SplashStore> {
  SplashPage(SplashStore store) : super(store);

  @override
  State<StatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends BaseState<SplashPage> {
  SplashStore get _splashStore => this.widget.store;
  @override
  void initState() {
    super.initState();
    _splashStore.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "Loading",
        style: TextStyle(color: Colors.grey, fontSize: 22),
      )),
    );
  }
}
