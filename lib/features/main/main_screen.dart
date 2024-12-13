import 'package:bhumisana/features/home/presentation/presentation.dart';
import 'package:bhumisana/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const HomeScreen(),
    const ProfileScreen(),
  ];  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: ColorName.colorTextPrimary,
        unselectedItemColor: ColorName.grey400,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.shifting,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,),
            label: '',
          ),
        ],
      ),
    );
  }
}