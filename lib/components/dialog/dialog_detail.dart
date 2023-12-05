import 'package:anime_app/components/dialog/category_name.dart';
import 'package:flutter/material.dart';

class DialogDetail extends StatefulWidget {
  const DialogDetail({Key? key}) : super(key: key);

  @override
  State<DialogDetail> createState() => _DialogDetailState();
}

class _DialogDetailState extends State<DialogDetail> {
  bool starTap = false;
  bool kininaluTap = false;
  bool checkTap = false;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: Container(
        color: const Color(0xFF242E43),
        height: 550,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 280,
                  width: 500,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://www.mbs.jp/jujutsukaisen/images/head_230901.webp'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  right: 1,
                  child: IconButton(
                    icon: const Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Container(
              height: 240,
              width: 320,
              margin: const EdgeInsets.only(left: 16),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "呪術廻戦",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Text(
                        "2023   2シーズン",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      CategoryName(),
                      SizedBox(
                        height: 20,
                      ),
                      Text("あらすじ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 260,
                        child: Text(
                            "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  Positioned(
                    right: -2,
                    child: Column(
                      children: [
                        IconButton(
                            iconSize: 24,
                            color: Colors.white,
                            onPressed: () {
                              setState(() {
                                starTap = !starTap;
                              });
                            },
                            icon: Icon(
                              starTap == true ? Icons.star : Icons.star_border,
                            )),
                        const Text(
                          'お気に入り',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                        IconButton(
                            iconSize: 24,
                            color: Colors.white,
                            onPressed: () {
                              setState(() {
                                checkTap = !checkTap;
                              });
                            },
                            icon: Icon(
                              checkTap == true
                                  ? Icons.check_box_outline_blank_sharp
                                  : Icons.check_box_outlined,
                            )),
                        const Text(
                          '視聴済み',
                          style: TextStyle(fontSize: 12, color: Colors.white),
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
                        const Text(
                          '気になる',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ],
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
