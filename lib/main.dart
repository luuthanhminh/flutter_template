import 'package:flutter/material.dart';
import 'package:flutter_boiler_template/pages/splash_page.dart';
import 'package:flutter_boiler_template/services/preferences_service.dart';
import 'package:flutter_boiler_template/stores/login_store.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'constants/strings.dart';
import 'routes.dart';
import 'stores/splash_store.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var sharedPreferences = await SharedPreferences.getInstance();

  runApp(App(sharedPreferences));
}

class App extends StatelessWidget {
  final SharedPreferences _sharedPref;

  App(this._sharedPref);
  
  List<SingleChildWidget> register(){
     return [
      // Services
      Provider<PreferencesService>(create: (_) => PreferencesService(_sharedPref)),
      //Stores
      Provider<SplashStore>(create: (_) => SplashStore()),
      Provider<LoginStore>(create: (_) => LoginStore())
     ];
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: register(),
      child: Consumer<SplashStore>(
        builder: (context, store, _) => MaterialApp(
          title: Strings.appName,
          routes: Routes.routes,
          theme: ThemeData(

          ),
          home: SplashPage(store),
        )
      )
    );
  }

}

