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
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('視聴済み', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.grey,
      ),
    );
  }
}
