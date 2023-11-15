import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: const Text('気になる', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.grey,
      ),
    );
  }
}
