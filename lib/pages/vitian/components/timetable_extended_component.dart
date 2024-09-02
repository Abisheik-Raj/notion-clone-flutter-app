import "package:flutter/material.dart";
import "package:notion_app/resources/colors.dart";
import "package:percent_indicator/circular_percent_indicator.dart";

class TimetableExtendedComponent extends StatelessWidget {
  TimetableExtendedComponent(
      {super.key,
      required this.time,
      required this.courseName,
      required this.onGoing,
      required this.percent});
  String time;
  String courseName;
  bool onGoing;
  double percent;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      width: screenSize.width * 1,
      height: 100,
      color: greyColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          time,
                          style: const TextStyle(
                              color: Colors.white,
                              fontFamily: "PoppinsSemiBold"),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "AB1 - 312",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "PoppinsSemiBold"),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          courseName,
                          style: const TextStyle(
                              color: Colors.white,
                              fontFamily: "PoppinsSemiBold"),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Android Programming",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "PoppinsSemiBold"),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              // Icon(
              //   Icons.circle,
              //   color: onGoing ? Colors.green : Colors.transparent,
              // ),
              CircularPercentIndicator(
                radius: 11,
                lineWidth: 2.5,
                progressColor: Colors.green,
                percent: percent,
              ),
              const SizedBox(
                width: 15,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
