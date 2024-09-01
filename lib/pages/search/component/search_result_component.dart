import "package:flutter/material.dart";

import "../../../resources/colors.dart";

class SearchResultComponent extends StatelessWidget {
  String day;
  SearchResultComponent({super.key, required this.day});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Text(
            day,
            style: const TextStyle(
                color: Color.fromRGBO(113, 112, 112, 1),
                fontSize: 13,
                fontFamily: "PoppinsSemiBold"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
          ),
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  color: greyColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  border: Border(
                    bottom: BorderSide(
                        color: Colors.white.withOpacity(0.4), width: 0.2),
                  ),
                ),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "🕹️",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Gaming Time",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "PoppinsRegular",
                              fontSize: 13.5),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "in private pages",
                          style: TextStyle(
                              color: lightGreyColor,
                              fontFamily: "PoppinsRegular",
                              fontSize: 11.5),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  color: greyColor,
                  borderRadius: const BorderRadius.only(),
                  border: Border(
                    bottom: BorderSide(
                        color: Colors.white.withOpacity(0.4), width: 0.2),
                  ),
                ),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "📽️",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Movie",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "PoppinsRegular",
                              fontSize: 13.5),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "in public pages",
                          style: TextStyle(
                              color: lightGreyColor,
                              fontFamily: "PoppinsRegular",
                              fontSize: 11.5),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  color: greyColor,
                  borderRadius: const BorderRadius.only(),
                  border: Border(
                    bottom: BorderSide(
                        color: Colors.white.withOpacity(0.4), width: 0.2),
                  ),
                ),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "📕",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Books",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "PoppinsRegular",
                              fontSize: 13.5),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "in private pages",
                          style: TextStyle(
                              color: lightGreyColor,
                              fontFamily: "PoppinsRegular",
                              fontSize: 11.5),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: const BoxDecoration(
                  color: greyColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "💣",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Note from OSAMA",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "PoppinsRegular",
                              fontSize: 13.5),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "in private pages",
                          style: TextStyle(
                              color: lightGreyColor,
                              fontFamily: "PoppinsRegular",
                              fontSize: 11.5),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
