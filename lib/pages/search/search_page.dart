import "package:flutter/material.dart";
import "package:notion_app/pages/search/component/search_result_component.dart";
import "package:notion_app/resources/colors.dart";

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomPadding = MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListView(
                children: [
                  SearchResultComponent(day: "Today"),
                  SearchResultComponent(day: "Yesterday"),
                  SearchResultComponent(day: "30-August-2024"),
                  const SizedBox(
                    height: 150,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: bottomPadding + 15,
            left: 0,
            right: 0,
            child: Container(
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: greyColor,
                border: Border.all(
                  color: Colors.white.withOpacity(0.2),
                  width: 0.7,
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Row(
                children: [
                  Icon(Icons.search, color: lightGreyColor),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 1.5),
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          color: lightGreyColor,
                          fontFamily: "PoppinsRegular",
                        ),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "PoppinsRegular",
                      ),
                    ),
                  ),
                  Icon(Icons.mic, color: lightGreyColor),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
