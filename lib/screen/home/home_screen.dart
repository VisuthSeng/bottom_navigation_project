import 'package:flutter/material.dart';
import 'package:sale_car_project/screen/search/search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController? pageController;
  int selectindex = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: selectindex);
  }

  void onTapped(int index) {
    setState(() {
      selectindex = index;
      if (selectindex == 1) {}
    });
    pageController!.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Auto Scout24'),
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: const [
          SearchScreen(),
          Text('Favoritie'),
          Text('Save Search'),
          Text('Selling'),
          Text('Profile'),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
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
