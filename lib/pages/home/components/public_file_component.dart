import "package:flutter/material.dart";
import "package:notion_app/resources/colors.dart";

class PublicFileComponent extends StatelessWidget {
  String icon;
  String label;
  PublicFileComponent({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 20, bottom: 5),
      child: Row(
        children: [
          const Icon(
            Icons.arrow_forward_ios,
            color: lightGreyColor,
            size: 15.5,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Row(
              children: [
                Text(
                  icon,
                  style: const TextStyle(fontSize: 15.5),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    label,
                    style: const TextStyle(
                        color: Colors.white,
                        fontFamily: "PoppinsRegular",
                        fontSize: 15.5),
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.more_horiz,
            color: lightGreyColor,
          ),
        ],
      ),
    );
  }
}
