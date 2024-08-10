import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/features/browse/presentation/pages/browse_tab.dart';
import 'package:movies_app/features/home/presentation/pages/home_tab.dart';
import 'package:movies_app/profile_tab.dart';
import 'package:movies_app/search_tab.dart';
import 'package:movies_app/watch_list_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "homeScreen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xFF1A1A1A),
          selectedItemColor: Colors.amber,
          iconSize: 30,
          unselectedItemColor: Colors.grey,
          onTap: (value) {
            index = value;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/ic_home.png")),
                label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/ic_browse.png")),
                label: "Browse"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/ic_watchlist.png")),
                label: "WatchList"),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),

          ]),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [],
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Expanded(child: tabs[index]),
        ],
      ),
    );
  }

  List<Widget> tabs = [
     const HomeTab(
      results: [],
      data: [],
    ),
    const SearchTab(),
     BrowseTab(),
    const WatchListTab(
      watchlist: [],
    ),
     ProfileTab(),
  ];
}
