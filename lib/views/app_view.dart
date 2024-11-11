// lib/views/app_view.dart
import 'package:eventhive/model/app_view_model.dart';
import 'package:eventhive/views/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    final index = context.watch<AppViewModel>().index;

    return Scaffold(
      body: const AppPages(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        onTap: (int selectedIndex) {
          context.read<AppViewModel>().updateIndex(selectedIndex);
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.event), label: 'Event'),
          BottomNavigationBarItem(icon: Icon(Icons.location_on), label: 'Map'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
