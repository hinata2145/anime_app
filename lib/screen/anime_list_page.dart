import 'package:anime_app/components/custom_appbar.dart';
import 'package:flutter/material.dart';
import '../components/search.dart';

class AnimeListPage extends StatefulWidget {
  const AnimeListPage({Key? key}) : super(key: key);

  @override
  State<AnimeListPage> createState() => _AnimeListPageState();
}

class _AnimeListPageState extends State<AnimeListPage> {
  int selectedButton = 0;

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
                    height: 25,
                    width: 120,
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
                    padding: const EdgeInsets.all(5.0),
                    height: 200,
                    width: 390,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(48),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 20),
                            const Text(
                              "呪術廻戦",
                              style:
                                  TextStyle(fontSize: 24, color: Colors.black),
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              "ジャンル：アクション",
                            ),
                            const Text("開始日   ：2002/4/10"),
                            const SizedBox(height: 20),
                            Row(
                              children: [
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
                                        //条件分岐でselectedButtonが１のときは、中身を０に
                                        //中が１以外のときは、１にする
                                        if (selectedButton == 1) {
                                          selectedButton = 0;
                                        } else if (selectedButton != 1) {
                                          selectedButton = 1;
                                        }
                                      });
                                    },
                                    icon: Icon(selectedButton == 1
                                        ? Icons.bookmark_add
                                        : Icons.bookmark_add_outlined)),
                                IconButton(
                                    iconSize: 24,
                                    color: Colors.black,
                                    onPressed: () {
                                      setState(() {
                                        //中が１以外のときは、１にする
                                        if (selectedButton == 2) {
                                          selectedButton = 0;
                                        } else if (selectedButton != 2) {
                                          selectedButton = 2;
                                        }
                                      });
                                    },
                                    icon: Icon(
                                      selectedButton == 2
                                          ? Icons.check_box_outlined
                                          : Icons.check_box_outline_blank_sharp,
                                    )),
                                IconButton(
                                    iconSize: 24,
                                    color: Colors.black,
                                    onPressed: () {
                                      setState(() {
                                        if (selectedButton == 3) {
                                          selectedButton = 0;
                                        } else if (selectedButton != 3) {
                                          selectedButton = 3;
                                        }
                                      });
                                    },
                                    icon: Icon(
                                      selectedButton == 3
                                          ? Icons.star
                                          : Icons.star_border,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
