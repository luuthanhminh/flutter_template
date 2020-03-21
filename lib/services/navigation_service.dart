import 'package:flutter/cupertino.dart';

abstract class INavigationService{
  void pushNamed(String namePage);
}

class NavigationService implements INavigationService{

  final BuildContext context;

  NavigationService(this.context);

  @override
  void pushNamed(String namePage) {
    Navigator.of(this.context).pushNamed(namePage);
  }

}