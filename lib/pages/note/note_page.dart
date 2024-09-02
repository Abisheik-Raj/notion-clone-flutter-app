import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:notion_app/resources/colors.dart";

class NotePage extends StatefulWidget {
  const NotePage({super.key});

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  bool coverAdded = false;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    void toggleCoverAdded() {
      setState(() {
        coverAdded = !coverAdded;
      });
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Container(
          child: GestureDetector(
            onTap: () {
              toggleCoverAdded();
            },
            child: const Row(
              children: [
                Icon(
                  FontAwesomeIcons.plus,
                  color: lightGreyColor,
                  size: 16,
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  "Add Cover",
                  style: TextStyle(
                    color: lightGreyColor,
                    fontFamily: "PoppinsSemiBold",
                    fontSize: 13,
                    height: 0.4,
                  ),
                ),
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.circleXmark,
                color: lightGreyColor,
              ))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 15,
          ),
          coverAdded
              ? Container(
                  width: screenSize.width * 1,
                  height: 100,
                  color: Colors.red,
                )
              : Container(),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: screenSize.width * 0.85,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    maxLines: 1,
                    maxLength: 15,
                    expands: false,
                    showCursor: false,
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      counterText: "",
                      contentPadding: EdgeInsets.zero,
                      hintText: 'Untitled',
                      hintStyle: TextStyle(
                        color: lightGreyColor,
                        fontFamily: "PoppinsSemiBold",
                        fontSize: 30,
                        height: 0.4,
                      ),
                      border: InputBorder.none,
                    ),
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "PoppinsSemiBold",
                        fontSize: 30,
                        height: 0.4),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: const TextField(
                    maxLines: 1,
                    expands: false,
                    showCursor: true,
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      hintText: '💣',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontFamily: "PoppinsSemiBold",
                        fontSize: 30,
                      ),
                      border: InputBorder.none,
                    ),
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "PoppinsSemiBold",
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: TextField(
                maxLines: null,
                expands: true,
                cursorColor: Colors.white,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  hintText: 'Tap here to continue...',
                  hintStyle: TextStyle(
                      color: lightGreyColor,
                      fontFamily: "PoppinsRegular",
                      fontSize: 13.5),
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "PoppinsRegular",
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
