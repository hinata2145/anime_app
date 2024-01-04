import 'package:anime_app/screen/anime_list_page.dart';
import 'package:anime_app/screen/favorite_page.dart';
import 'package:anime_app/screen/not_watched_page.dart';
import 'package:flutter/material.dart';
import 'screen/ already_watched_page.dart';

class AnimeApp extends StatefulWidget {
  const AnimeApp({Key? key}) : super(key: key);

  @override
  State<AnimeApp> createState() => _AnimeAppState();
}

class _AnimeAppState extends State<AnimeApp> {
  static const _screens = [
    AnimeListPage(),
    NotWatchedPage(),
    AlreadyWatchedPage(),
    FavoritePage(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xFF242E43),
          currentIndex: _selectedIndex,
          unselectedItemColor: Colors.white,
          selectedItemColor: const Color(0xFF711E1E),
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.live_tv),
              label: 'アニメ一覧',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_add),
              label: '気になる',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.check),
              label: '視聴済み',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: 'お気に入り',
            ),
          ],
          type: BottomNavigationBarType.fixed,
        ));
  }
}
