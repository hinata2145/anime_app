import 'package:anime_app/components/anime_screen.dart';
import 'package:anime_app/components/custom_appbar.dart';
import 'package:flutter/material.dart';
import '../components/dialog/dialog_detail.dart';
import '../components/search.dart';

class AnimeListPage extends StatefulWidget {
  const AnimeListPage({Key? key}) : super(key: key);

  @override
  State<AnimeListPage> createState() => _AnimeListPageState();
}

class _AnimeListPageState extends State<AnimeListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppbar(
          title: Text('アニメ一覧', style: TextStyle(color: Colors.white))),
      body: Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            const MyCustomForm(),
            const SizedBox(
              height: 16,
            ),
            Container(
              margin: const EdgeInsets.only(right: 260),
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
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (_) {
                            return const DialogDetail();
                          });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 0, left: 12),
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
                  GestureDetector(
                    //ポップアップ処理
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (_) {
                            return const DialogDetail();
                          });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 8, left: 8),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
