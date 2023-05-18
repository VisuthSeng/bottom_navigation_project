// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_import, file_names, must_be_immutable, dead_code, annotate_overrides, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'item/quick_add_item/quick_add_item.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController? pageController;
  int selectindex = 0;
  void initState() {
    super.initState();
    pageController = PageController(initialPage: selectindex);
  }

  void onTapped(int index) {
    setState(() {
      selectindex = index;
      if (selectindex == 1) {
        // final ExpenseViewController expenseViewController = Get.find();

        // expenseViewController.loadData();
      }
    });
    pageController!.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Auto Scout24'),
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
          Text('Search'),
          Text('Favoritie'),
          Text('Save Search'),
          Text('Selling'),
          Text('Profile'),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.saved_search),
            label: "Save Searches",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sell_outlined),
            label: "Selling",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
        ],
        currentIndex: selectindex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[400],
        backgroundColor: Colors.black,
        onTap: onTapped,
      ),
    );
  }
}
