import 'package:faceway/views/profile/index.dart';
import 'package:flutter/material.dart';

class ProfileHome extends StatefulWidget {
  @override
  _ProfileHomeState createState() => _ProfileHomeState();
}

class _ProfileHomeState extends State<ProfileHome>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    ProfileFirst(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
