import 'package:flutter/material.dart';
import 'package:main_project/chats_view.dart';
import 'package:main_project/home_view.dart';
import 'package:main_project/search_view.dart';

class HomePage extends StatefulWidget {
  const new({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final screens = [HomeView(), SearchView(), ChatsView(), ChatsView()];
  var currentScreenIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentScreenIndex],

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
        ],
        onTap: (index) {
          setState(() {
            currentScreenIndex = index;
          });
        },
      ),
    );
  }
}
