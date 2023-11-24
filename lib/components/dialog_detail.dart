import 'package:flutter/material.dart';

class DialogDetail extends StatefulWidget {
  const DialogDetail({Key? key}) : super(key: key);

  @override
  State<DialogDetail> createState() => _DialogDetailState();
}

class _DialogDetailState extends State<DialogDetail> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: Column(
        children: [
          Image.network(
            height: 300,
            'https://www.mbs.jp/jujutsukaisen/images/head_230901.webp',
          ),
        ],
      ),
    );
  }
}
