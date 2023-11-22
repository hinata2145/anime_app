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
                  Stack(
                    children: [],
                  ),
                  Container(
                    padding: const EdgeInsets.all(5.0),
                    height: 200,
                    width: 390,
                    decoration: BoxDecoration(
                      color: const Color(0xFF242E43),
                      borderRadius: BorderRadius.circular(48),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Container(
                          width: 100,
                          height: 100,
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
                        Container(
                          color: Colors.red,
                          margin: const EdgeInsets.only(top: 142),
                          height: 48,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Row(
                                    children: const [
                                      Text(
                                        '呪術廻戦',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  IconButton(
                                      iconSize: 24,
                                      color: Colors.white,
                                      onPressed: () {
                                        setState(() {
                                          kininaluTap = !kininaluTap;
                                        });
                                      },
                                      icon: Icon(kininaluTap == true
                                          ? Icons.bookmark_add
                                          : Icons.bookmark_add_outlined)),
                                  IconButton(
                                      iconSize: 24,
                                      color: Colors.black,
                                      onPressed: () {
                                        setState(() {
                                          checkTap = !checkTap;
                                        });
                                      },
                                      icon: Icon(
                                        checkTap == true
                                            ? Icons
                                                .check_box_outline_blank_sharp
                                            : Icons.check_box_outlined,
                                      )),
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
                                ],
                              ),
                            ],
                          ),
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
