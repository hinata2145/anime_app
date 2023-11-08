import 'package:flutter/material.dart';

class AnimeListPage extends StatelessWidget {
  const AnimeListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('アニメ一覧'),
      ),
    );
  }
}
