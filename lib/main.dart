import 'package:akhbar_app/core/theme/light_theme.dart';
import 'package:akhbar_app/core/utils/service_locator.dart';
import 'package:akhbar_app/core/utils/services/preference/perference_manager.dart';
import 'package:flutter/material.dart';
import 'core/routing/route_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await PreferenceManager().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      routerConfig: RouteManager.router,
    );
  }
}
