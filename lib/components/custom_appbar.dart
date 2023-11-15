import 'package:anime_app/screen/profile_page.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key, required this.title});

  final Text title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey,
      title: title,
      actions: [
        IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()));
            },
            icon: const Icon(Icons.person))
      ],
    );
  }

  @override
  Size get preferredSize {
    return const Size(double.infinity, 56.0);
  }
}

class PreferredSize extends StatelessWidget implements PreferredSizeWidget {
  const PreferredSize({
    super.key,
    required this.child,
    required this.preferredSize,
  });
  final Widget child;

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) => child;
}
