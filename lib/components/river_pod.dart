import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class MyWidget extends ConsumerWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text('ここにデータが表示される');
  }
}
