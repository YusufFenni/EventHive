import 'package:eventhive/event/view/event_view.dart';
import 'package:eventhive/home/view/home_view.dart';
import 'package:eventhive/map/view/map_view.dart';
import 'package:eventhive/model/app_view_model.dart';
import 'package:eventhive/settings/view/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppPages extends StatelessWidget {
  const AppPages({super.key});

  @override
  Widget build(BuildContext context) {
    final index = context.watch<AppViewModel>().index;

    const List<Widget> pages = [
      HomeView(),
      MapView(),
      SettingsView(),
      EventView(),
    ];

    return IndexedStack(
      index: index,
      children: pages,
    );
  }
}
