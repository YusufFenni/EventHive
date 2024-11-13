import 'package:eventhive/home/widget/category_section.dart';
import 'package:eventhive/home/widget/events_row.dart';
import 'package:eventhive/home/widget/home_app_bar.dart';
import 'package:eventhive/home/widget/upcoming_events.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          HomeAppBarContainer(),
          CategoryButtonsRow(),
          UpComingEvents(),
          EventsRow(),

        ],
      ),
    );
  }
}

