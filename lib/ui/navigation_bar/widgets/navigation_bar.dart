import 'package:flutter/material.dart';
import 'package:movie_info_app/ui/explore_screen/view_models/explore_view_model.dart';
import 'package:movie_info_app/ui/explore_screen/widgets/explore_screen.dart';
import 'package:movie_info_app/ui/home_screen/view_models/home_view_model.dart';
import 'package:movie_info_app/ui/home_screen/widgets/home_screen.dart';
import 'package:movie_info_app/ui/now_playing_screen/view_models/now_playing_view_model.dart';
import 'package:movie_info_app/ui/now_playing_screen/widgets/now_playing_screen.dart';
import 'package:movie_info_app/ui/settings_screen/view_models/settings_view_model.dart';
import 'package:movie_info_app/ui/settings_screen/widgets/settings_screen.dart';
import 'package:provider/provider.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({super.key});
  @override
  State<NavigationBar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      HomeScreen(viewModel: context.read<HomeViewModel>()),
      NowPlayingScreen(viewModel: context.read<NowPlayingViewModel>()),
      ExploreScreen(viewModel: context.read<ExploreViewModel>()),
      SettingsScreen(viewModel: context.read<SettingsViewModel>()),
    ];

    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.home_filled),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.theaters),
            icon: Icon(Icons.theaters_outlined),
            label: 'Now Playing',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.explore),
            icon: Icon(Icons.explore_outlined),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.settings),
            icon: Icon(Icons.settings_outlined),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
