import 'package:flutter/material.dart';
import 'package:heros/views/screens/login/main.dart';

void main() {
  runApp(const MainHeros());
}

class MainHeros extends StatelessWidget {
  const MainHeros({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogInScreen()
    );
  }
}

