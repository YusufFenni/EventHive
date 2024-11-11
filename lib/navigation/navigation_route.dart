// lib/routes/navigation_route.dart
import 'package:eventhive/event/view/event_view.dart';
import 'package:eventhive/home/view/home_view.dart';
import 'package:eventhive/navigation/navigation_constantsa.dart';
import 'package:eventhive/settings/view/settings_view.dart';
import 'package:flutter/material.dart';

import '../views/app_view.dart';

class NavigationRoute {
  NavigationRoute._init();

  static final NavigationRoute _instance = NavigationRoute._init();

  static NavigationRoute get instance => _instance;

  Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case NavigationConstants.root:
        return MaterialPageRoute(builder: (_) => const AppView());
      case NavigationConstants.home:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case NavigationConstants.chatDetail:
        return MaterialPageRoute(builder: (_) => const EventView());
      case NavigationConstants.profile:
        return MaterialPageRoute(builder: (_) => const SettingsView());
      // Diğer rotalar da benzer şekilde eklenebilir
      default:
        return MaterialPageRoute(
          builder: (_) => const SizedBox.shrink(),
        );
    }
  }
}
