import 'package:anime_app/components/custom_appbar.dart';
import 'package:anime_app/components/search.dart';
import 'package:flutter/material.dart';

class AlreadyWatchedPage extends StatefulWidget {
  const AlreadyWatchedPage({Key? key}) : super(key: key);

  @override
  State<AlreadyWatchedPage> createState() => _AlreadyWatchedPageState();
}

class _AlreadyWatchedPageState extends State<AlreadyWatchedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppbar(
        title: Text(
          '視聴済み',
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
