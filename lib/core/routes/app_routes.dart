import 'package:flutter/material.dart';

import '../../featureds/home/presentation/views/home_view.dart';
import '../../featureds/splash/presentation/views/splash_view.dart';
import '../navigation/nav_bar_view.dart';

class AppRoutes {
  static Route<dynamic>? onGenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      case NavBarView.routeName:
        return MaterialPageRoute(builder: (context) => const NavBarView());

      case SplashView.routeName:
        return MaterialPageRoute(builder: (context) => const SplashView());

      case HomeView.routeName:
        return MaterialPageRoute(builder: (context) => const HomeView());

      default:
        return MaterialPageRoute(builder: (context) => const Scaffold());
    }
  }
}
