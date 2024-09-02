import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:notion_app/pages/home/home_page.dart";
import "package:notion_app/pages/inbox/inbox_page.dart";
import "package:notion_app/pages/note/note_page.dart";
import "package:notion_app/pages/search/search_page.dart";
import "package:notion_app/resources/colors.dart";

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;
  List<Widget> pages = const [
    HomePage(),
    SearchPage(),
    InboxPage(),
    NotePage(),
    Text(
      "vitian",
      style: TextStyle(color: Colors.white),
    ),
  ];

  void onTap(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
                splashFactory: NoSplash.splashFactory,
                highlightColor: Colors.transparent),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: backgroundColor,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.house,
                    size: 23,
                    color: lightGreyColor,
                  ),
                  activeIcon: Icon(
                    FontAwesomeIcons.house,
                    size: 23,
                    color: Colors.white,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.magnifyingGlass,
                    size: 23,
                    color: lightGreyColor,
                  ),
                  activeIcon: Icon(
                    FontAwesomeIcons.magnifyingGlass,
                    size: 23,
                    color: Colors.white,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.inbox,
                    size: 23,
                    color: lightGreyColor,
                  ),
                  activeIcon: Icon(
                    FontAwesomeIcons.inbox,
                    size: 23,
                    color: Colors.white,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.pen,
                    size: 23,
                    color: lightGreyColor,
                  ),
                  activeIcon: Icon(
                    FontAwesomeIcons.pen,
                    size: 23,
                    color: Colors.white,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Image(
                    color: lightGreyColor,
                    height: 35,
                    width: 35,
                    image: AssetImage(
                      "assets/images/v.png",
                    ),
                  ),
                  activeIcon: Image(
                    color: Colors.white,
                    height: 35,
                    width: 35,
                    image: AssetImage(
                      "assets/images/v.png",
                    ),
                  ),
                  label: '',
                )
              ],
              currentIndex: selectedIndex,
              onTap: onTap,
            )),
        body: Center(child: pages[selectedIndex]),
      ),
    );
  }
}
