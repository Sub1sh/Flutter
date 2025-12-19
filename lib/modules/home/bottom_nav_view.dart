import 'dart:io';

import 'package:flutter/material.dart';

import 'dashboard_view.dart';
import 'order_screen.dart';


class BottomNavView extends StatefulWidget {
  const BottomNavView({super.key});

  @override
  State<BottomNavView> createState() => _BottomNavViewState();
}

class _BottomNavViewState extends State<BottomNavView> {
  int indexs = 0;
  final screens = [Dashboardview(), OrderScreen(), Dashboardview()];

  void onItemTapped(int index) {
    setState(() {
      indexs = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screens[indexs],
      bottomNavigationBar: Container(
        height: Platform.isIOS ? 120 : 100,
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.grey)),
        ),
        child: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            primaryColor: Colors.white,
            hoverColor: Colors.white,
            splashColor: Colors.white,
            highlightColor: Colors.white,
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: indexs,
            elevation: 0,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            mouseCursor: WidgetStateMouseCursor.clickable,
            backgroundColor: Colors.white,
            onTap: onItemTapped,
            items: [
              BottomNavigationBarItem(
                icon: Icon(indexs == 0 ? Icons.home : Icons.home_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  indexs == 1 ? Icons.favorite : Icons.favorite_border,
                ),
                label: 'Watchlist',
              ),
              BottomNavigationBarItem(
                icon: Icon(indexs == 2 ? Icons.person : Icons.person_outline),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}