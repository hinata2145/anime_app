import 'package:flutter/material.dart';

class CategoryName extends StatelessWidget {
  const CategoryName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.orange, borderRadius: BorderRadius.circular(16)),
        height: 24,
        child: const Padding(
          padding: EdgeInsets.only(right: 10, left: 10),
          child: Text(
            "SF/ファンタジー",
            style: TextStyle(color: Colors.white),
          ),
        ));
  }
}
