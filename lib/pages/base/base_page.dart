import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_boiler_template/services/navigation_service.dart';
import 'package:flutter_boiler_template/stores/base/base_store.dart';

abstract class BaseStatelessPage<T extends BaseStore> extends StatelessWidget {
  final T store;

  BaseStatelessPage(this.store);
  
  @override
  Widget build(BuildContext context) {
    this.store.initNavigation(new NavigationService(context));
    return buildPage(context);
  }


  Widget buildPage(BuildContext context);
}

abstract class BaseStateFullPage<T extends BaseStore> extends StatefulWidget {
  final T store;

  BaseStateFullPage(this.store);
}

abstract class BaseState<T extends BaseStateFullPage> extends State<T> {  
 @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    this.widget.store.initNavigation(new NavigationService(this.context));
  }

}
