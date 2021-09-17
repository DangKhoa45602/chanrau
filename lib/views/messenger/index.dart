import 'package:faceway/views/messenger/home_screen.dart';
import 'package:flutter/material.dart';

class Messenger extends StatefulWidget {
  const Messenger({Key? key}) : super(key: key);

  @override
  _Messenger createState() => _Messenger();
}

class _Messenger extends State<Messenger> {
  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}
