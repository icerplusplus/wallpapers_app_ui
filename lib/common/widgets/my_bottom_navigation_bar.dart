import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallpapers_app_ui/core/configs/assets/app_vectors.dart';
import 'package:wallpapers_app_ui/core/configs/theme/app_colors.dart';
import 'package:wallpapers_app_ui/presentation/home/pages/home.dart';
import 'package:wallpapers_app_ui/presentation/home/widgets/appbar.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon:
                SvgPicture.asset(AppVectors.homeActive, width: 24, height: 24),
            icon: SvgPicture.asset(AppVectors.home, width: 24, height: 24),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(AppVectors.categoryActive,
                width: 24, height: 24),
            icon: SvgPicture.asset(AppVectors.category, width: 24, height: 24),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(AppVectors.favouriteActive,
                width: 24, height: 24),
            icon: SvgPicture.asset(AppVectors.favourite, width: 24, height: 24),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(AppVectors.settingActive,
                width: 24, height: 24),
            icon: SvgPicture.asset(AppVectors.setting, width: 24, height: 24),
            label: 'Setting',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.dark,
        onTap: _onItemTapped,
      ),
    );
  }
}
