import 'package:flutter/material.dart';
import 'package:project_template/presentation/screens/home_screen.dart';

class AppRouter {
  static const String home = '/';

  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );
    }
  }
}
