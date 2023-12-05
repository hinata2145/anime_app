import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF242E43),
        title: const Text('プロフィール', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 390,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(48),
          ),
        ),
      ),
    );
  }
}
