import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:todo_app/view/home_page.dart';
import 'package:todo_app/view/home_page1.dart';

void main() {
  runApp(ProviderScope(
      child: Home())
  );

}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoPage(),

    );
  }
}
