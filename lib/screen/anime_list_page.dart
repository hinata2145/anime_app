import 'package:flutter/material.dart';

class AnimeListPage extends StatefulWidget {
  const AnimeListPage({Key? key}) : super(key: key);

  @override
  State<AnimeListPage> createState() => _AnimeListPageState();
}

class _AnimeListPageState extends State<AnimeListPage> {
  bool starTap = false;
  bool bookTap = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('アニメ一覧', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            Container(
              padding: const EdgeInsets.all(5.0),
              height: 200,
              width: 370,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(48),
              ),
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Container(
                    width: 100,
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
                  const SizedBox(width: 30),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        const Text(
                          "呪術廻戦",
                          style: TextStyle(fontSize: 24, color: Colors.black),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "ジャンル：アクション",
                        ),
                        const Text("開始日   ：2002/4/10"),
                        SizedBox(height: 34),
                        Row(
                          children: [
                            SizedBox(width: 10),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(8) //こちらを適用
                                      )),
                              child: const Text(
                                '詳しく見る',
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white),
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                                iconSize: 24,
                                color: Colors.black,
                                onPressed: () {
                                  setState(() {
                                    starTap = !starTap;
                                  });
                                },
                                icon: Icon(
                                  starTap == true
                                      ? Icons.star
                                      : Icons.star_border,
                                )),
                            Container(
                              child: IconButton(
                                  iconSize: 24,
                                  color: Colors.black,
                                  onPressed: () {
                                    setState(() {
                                      bookTap = !bookTap;
                                    });
                                  },
                                  icon: Icon(bookTap == true
                                      ? Icons.bookmark_add
                                      : Icons.bookmark_add_outlined)),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
