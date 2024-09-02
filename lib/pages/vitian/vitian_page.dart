import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notion_app/pages/vitian/components/timetable_component.dart';
import 'package:notion_app/pages/vitian/components/timetable_extended_component.dart';
import 'package:notion_app/resources/colors.dart';

class VitianPage extends StatefulWidget {
  VitianPage({super.key});

  @override
  State<VitianPage> createState() => _VitianPageState();
}

class _VitianPageState extends State<VitianPage> {
  List<String> days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"];

  int currentDay = 0;
  bool clicked = false;

  void handleClicked() {
    setState(() {
      clicked = !clicked;
    });
  }

  void changeCurrentDay(index) {
    setState(() {
      currentDay = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
              child: SizedBox(
                width: screenSize.width * 1,
                height: 40,
                child: Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: days.length,
                    itemBuilder: (context, index) {
                      if (currentDay == index) {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              days[index],
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontFamily: "PoppinsSemiBold",
                                  fontSize: 25.5),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                          ],
                        );
                      }

                      return GestureDetector(
                        onTap: () {
                          changeCurrentDay(index);
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              days[index],
                              style: const TextStyle(
                                  color: greyColor,
                                  fontFamily: "PoppinsSemiBold",
                                  fontSize: 25.5),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                handleClicked();
              },
              child: clicked
                  ? TimetableComponent(
                      time: "09:00 - 09:50",
                      courseName: "SWE1001",
                      onGoing: false,
                      percent: 0.4,
                    )
                  : TimetableExtendedComponent(
                      time: "09:00 - 09:50",
                      courseName: "SWE1001",
                      onGoing: false,
                      percent: 0.4,
                    ),
            ),
            TimetableComponent(
              time: "09:00 - 09:50",
              courseName: "SWE1003",
              onGoing: false,
              percent: 0.5,
            ),
            TimetableComponent(
              time: "09:00 - 09:50",
              courseName: "SWE1004",
              onGoing: false,
              percent: 0.6,
            ),
            TimetableComponent(
              time: "09:00 - 09:50",
              courseName: "SWE1005",
              onGoing: false,
              percent: 0.8,
            ),
          ],
        ),
      ),
    );
  }
}
