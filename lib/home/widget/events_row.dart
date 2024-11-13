import 'package:eventhive/home/widget/event_container.dart';
import 'package:eventhive/services/event_service.dart';
import 'package:flutter/material.dart';

class EventsRow extends StatelessWidget {
  const EventsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            EventContainer(
              ontap: () {
                fetchEvents();
              },
              backgroundColor: Colors.amber,
              date: "12 Oct",
              imagePath: "assets/image/image.png",
              location: "Havagazı fabrikası İzmir",
              title: "Dedüblüman konser",
            ),
            EventContainer(
              ontap: () {},
              backgroundColor: Colors.red,
              date: "12 Oct",
              imagePath: "assets/image/image.png",
              location: "Havagazı fabrikası İzmir",
              title: "Dedüblüman konser",
            ),
            EventContainer(
              ontap: () {},
              backgroundColor: Colors.blueGrey,
              date: "12 Oct",
              imagePath: "assets/image/image.png",
              location: "Havagazı fabrikası İzmir",
              title: "Dedüblüman konser",
            ),
            EventContainer(
              ontap: () {},
              backgroundColor: Colors.green,
              date: "12 Oct",
              imagePath: "assets/image/image.png",
              location: "Havagazı fabrikası İzmir",
              title: "Dedüblüman konser",
            ),
          ],
        ),
      ),
    );
  }
}
