import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import './itenaryPage.dart';
import './sponsors.dart';
import './mainPage.dart';
import './coreCommitee.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int _selectedIndex = 0;
  int currentPageIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[800],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[400],
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
            backgroundColor: Colors.grey[800],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_tree_outlined),
            label: "Itinerary",
            backgroundColor: Colors.grey[800],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outlined),
            label: "Core Committee",
            backgroundColor: Colors.grey[800],
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: <Widget>[
        mainPage(),
        itenaryPage(),
        coreCommitee(),
      ][currentPageIndex],
    );
  }
}
