
import 'package:flutter/material.dart';

class Course1UI extends StatelessWidget {
  static const id = "course1UI_id";
  static const title = "UI基础：仿QQ App";
  const Course1UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Container(),
    );
  }
}
