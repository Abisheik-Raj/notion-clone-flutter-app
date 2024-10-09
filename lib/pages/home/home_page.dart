// ignore_for_file: avoid_print

import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:notion_app/firebase/auth_methods.dart";
import "package:notion_app/pages/home/components/private_file_component.dart";
import "package:notion_app/pages/home/components/public_file_component.dart";
import "package:notion_app/pages/home/components/recent_component.dart";
import "package:notion_app/resources/colors.dart";
import "package:popover/popover.dart";
import "package:provider/provider.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showPrivate = false;
  bool showPublic = false;

  void togglePrivate() {
    setState(() {
      showPrivate = !showPrivate;
    });
  }

  void togglePublic() {
    setState(() {
      showPublic = !showPublic;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: backgroundColor,
          leading: Container(
            margin:
                const EdgeInsets.only(left: 15, top: 10, bottom: 0, right: 0),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://imgs.search.brave.com/WyjmOv2GSqlRDFNpCpFHvoJkjI5_jAZi9DEhX_NN2oc/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9zb3Vy/Y2UuYm9vbXBsYXlt/dXNpYy5jb20vZ3Jv/dXAxMC9NMDAvMDYv/MzAvMTdjNjJhMWY2/MTg0NDEwMjhkNGIx/ZDkwOTI4MmNlNWZf/NDY0XzQ2NC5qcGc")),
            ),
          ),
          title: const SizedBox(
            height: kToolbarHeight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Asxend's Notion",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: "PoppinsSemiBold"),
                ),
                SizedBox(
                  height: kToolbarHeight * 0.08,
                ),
                Text(
                  "dgodly2004@gmail.com",
                  style: TextStyle(
                      color: Color.fromRGBO(113, 112, 112, 1),
                      fontSize: 13,
                      fontFamily: "PoppinsRegular"),
                ),
              ],
            ),
          ),
          actions: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 0, top: 10, bottom: 0, right: 15),
              child: GestureDetector(
                onTap: () {
                  Provider.of<AuthMethods>(context, listen: false).logout();
                },
                child: const Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 35,
              ),
              const Text(
                "Jump back in",
                style: TextStyle(
                    color: Color.fromRGBO(113, 112, 112, 1),
                    fontSize: 13,
                    fontFamily: "PoppinsSemiBold"),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    RecentComponent(
                      icon: "🕹️",
                      imageUrl:
                          "https://imgs.search.brave.com/kZNODjxn1Mqq1yzOCetESDfp3rz05mfs0jveEsawg38/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzA4LzEyLzI1Lzk1/LzM2MF9GXzgxMjI1/OTU5N19lOGY0eTJR/T3VBeE15TFQ5Q3NQ/YmpOWlE0RktiZDlV/RS5qcGc",
                      label: "Arcade Games",
                    ),
                    RecentComponent(
                      icon: "📽️",
                      imageUrl:
                          "https://imgs.search.brave.com/Q6H4WQV_Q9IK1rAx5jGKxmQUui6PAZ9pQb6olFpIPcE/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9jZG4u/bW9zLmNtcy5mdXR1/cmVjZG4ubmV0L1g1/c2JrN1ZHdDQ5cUxF/RUdoVWNHVVctMzIw/LTgwLmpwZw",
                      label: "Movies",
                    ),
                    RecentComponent(
                      icon: "📕",
                      imageUrl:
                          "https://imgs.search.brave.com/M7fsTaKsJUdMwTeELuzpPFGE8c1nxr98-yStC3cDvck/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMtbmEuc3NsLWlt/YWdlcy1hbWF6b24u/Y29tL2ltYWdlcy9J/LzcxUUtROW13VjdM/LmpwZw",
                      label: "Books",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  !showPrivate
                      ? GestureDetector(
                          onTap: togglePrivate,
                          child: const Icon(
                            Icons.keyboard_arrow_down,
                            color: lightGreyColor,
                          ),
                        )
                      : GestureDetector(
                          onTap: togglePrivate,
                          child: const Icon(
                            Icons.keyboard_arrow_up,
                            color: lightGreyColor,
                          ),
                        ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "Private",
                    style: TextStyle(
                        color: Color.fromRGBO(113, 112, 112, 1),
                        fontSize: 13,
                        fontFamily: "PoppinsSemiBold"),
                  ),
                ],
              ),
              showPrivate
                  ? Column(
                      children: [
                        PrivateFileComponent(
                          icon: "🕹️",
                          label: "Arcade Games",
                        ),
                        PrivateFileComponent(
                          icon: "📽️",
                          label: "Movies",
                        ),
                        PrivateFileComponent(
                          icon: "📕",
                          label: "Books",
                        ),
                      ],
                    )
                  : Container(),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  !showPublic
                      ? GestureDetector(
                          onTap: togglePublic,
                          child: const Icon(
                            Icons.keyboard_arrow_down,
                            color: lightGreyColor,
                          ),
                        )
                      : GestureDetector(
                          onTap: togglePublic,
                          child: const Icon(
                            Icons.keyboard_arrow_up,
                            color: lightGreyColor,
                          ),
                        ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "Public",
                    style: TextStyle(
                        color: Color.fromRGBO(113, 112, 112, 1),
                        fontSize: 13,
                        fontFamily: "PoppinsSemiBold"),
                  ),
                ],
              ),
              showPublic
                  ? Column(
                      children: [
                        PublicFileComponent(
                          icon: "🕹️",
                          label: "Arcade Games",
                        ),
                        PublicFileComponent(
                          icon: "📽️",
                          label: "Movies",
                        ),
                        PublicFileComponent(
                          icon: "📕",
                          label: "Books",
                        ),
                      ],
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
