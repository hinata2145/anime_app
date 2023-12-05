import 'package:anime_app/components/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:anime_app/components/search.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppbar(
        title: Text(
          'お気に入り',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 20),
        child: Center(
          child: Column(
            children: const [
              MyCustomForm(),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
