import 'package:flutter/material.dart';
import 'dialog/dialog_detail.dart';

class AnimeScreen extends StatefulWidget {
  const AnimeScreen({Key? key}) : super(key: key);

  @override
  State<AnimeScreen> createState() => _AnimeScreenState();
}

class _AnimeScreenState extends State<AnimeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          showDialog(
              context: context,
              builder: (_) {
                return const DialogDetail();
              });
        },
        child: Container(
          margin: const EdgeInsets.only(right: 10, left: 16),
          height: 180,
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Stack(
            children: [
              //アニメ画面
              Positioned(
                // bottom: 0,
                child: Container(
                  height: 180,
                  width: 180,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image.network(
                      'https://www.mbs.jp/jujutsukaisen/images/head_230901.webp',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xFF242E43).withOpacity(0.8),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  height: 50,
                  width: 180,
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '呪術廻戦',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
