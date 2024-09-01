import "package:flutter/material.dart";
import "package:notion_app/resources/colors.dart";

class InboxPage extends StatelessWidget {
  const InboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        centerTitle: true,
        title: const Text(
          "Inbox",
          style: TextStyle(
              color: Colors.white,
              fontFamily: "PoppinsSemiBold",
              fontSize: 15.5),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.more_horiz,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.verified,
              color: Colors.blueAccent,
              size: 20,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "You're all caught up",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "PoppinsRegular",
                  fontSize: 15.5),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Check again later for the latest updates",
              style: TextStyle(
                  color: lightGreyColor,
                  fontFamily: "PoppinsRegular",
                  fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
