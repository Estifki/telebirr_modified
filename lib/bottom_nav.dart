import 'package:flutter/material.dart';
import 'package:telebirr_modified/screen/home.dart';

class BottomNav extends StatelessWidget {
  final List<Widget> _allPages = [
    HomeScreen(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _allPages.elementAt(0),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.wallet, size: 25), label: "Wallet"),
          BottomNavigationBarItem(
              icon: Icon(Icons.compare_arrows_rounded, size: 25),
              label: "Transaction"),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on_outlined, size: 25),
              label: "Nearby"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined, size: 25), label: "Account"),
        ],
      ),
    );
  }
}
