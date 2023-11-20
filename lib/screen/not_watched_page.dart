import 'package:anime_app/components/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:anime_app/components/search.dart';

class NotWatchedPage extends StatefulWidget {
  const NotWatchedPage({Key? key}) : super(key: key);

  @override
  State<NotWatchedPage> createState() => _NotWatchedPageState();
}

class _NotWatchedPageState extends State<NotWatchedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const CustomAppbar(
        title: Text(
          '気になる',
          style: TextStyle(color: Colors.black),
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
