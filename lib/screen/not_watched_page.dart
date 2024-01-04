import 'package:anime_app/components/custom_appbar.dart';
import 'package:anime_app/components/river_pod.dart';
import 'package:flutter/material.dart';
import 'package:anime_app/components/search.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../main.dart';

void main() {
  const app = MyApp();
  const scope = ProviderScope(child: app);
  runApp(scope);
}

class NotWatchedPage extends StatefulWidget {
  const NotWatchedPage({Key? key}) : super(key: key);

  @override
  State<NotWatchedPage> createState() => _NotWatchedPageState();
}

class _NotWatchedPageState extends State<NotWatchedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppbar(
        title: Text(
          '気になる',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 20),
        child: const Center(
          child: Column(
            children: [
              MyCustomForm(),
              SizedBox(height: 24),
              Center(
                child: MyWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
