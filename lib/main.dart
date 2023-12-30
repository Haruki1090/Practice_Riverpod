import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/my_widget_1.dart';
import 'package:riverpod_practice/my_widget_2.dart';
import 'package:riverpod_practice/my_widget_3.dart';
import 'package:riverpod_practice/my_widget_4.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: const Center(
          child: MyWidget4(),
        ),
      ),
    );
  }
}
