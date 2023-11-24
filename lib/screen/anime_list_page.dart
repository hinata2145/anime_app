import 'package:anime_app/components/custom_appbar.dart';
import 'package:flutter/material.dart';
import '../components/search.dart';

class AnimeListPage extends StatefulWidget {
  const AnimeListPage({Key? key}) : super(key: key);

  @override
  State<AnimeListPage> createState() => _AnimeListPageState();
}

class _AnimeListPageState extends State<AnimeListPage> {
  bool starTap = false;
  bool kininaluTap = false;
  bool checkTap = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppbar(
          title: Text('アニメ一覧', style: TextStyle(color: Colors.white))),
      body: Container(
        margin: const EdgeInsets.only(top: 20),
        child: Center(
          child: Column(
            children: [
              const MyCustomForm(),
              const SizedBox(
                height: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 300),
                    height: 25,
                    width: 104,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                      child: Text(
                        '最近の人気アニメ',
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    // height: 400,
                    width: 200,
                    decoration: BoxDecoration(
                      color: const Color(0xFF242E43),
                      borderRadius: BorderRadius.circular(28),
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 150,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(28.0),
                            child: Image.network(
                              'https://www.mbs.jp/jujutsukaisen/images/head_230901.webp',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
