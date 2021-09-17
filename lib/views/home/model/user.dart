import 'package:flutter/cupertino.dart';

class User {
  final String name;
  final String designation;
  final int mutualFriends;
  final int age;
  final String imgUrl;
  final String bio;
  bool isLiked;
  bool isSwipedOff;

  User({
    required this.name,
    required this.designation,
    required this.mutualFriends,
    required this.age,
    required this.imgUrl,
    required this.bio,
    this.isLiked = false,
    this.isSwipedOff = false,
  });
}
