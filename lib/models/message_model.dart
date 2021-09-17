import 'package:faceway/models/user_model.dart';

class Message {
  final User sender;
  final String
      time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.isLiked,
    required this.unread,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/images/greg.jpg',
);

// USERS
final User sang = User(
  id: 1,
  name: 'Sang hột le',
  imageUrl: 'assets/images/v1.jpg',
);
final User luat = User(
  id: 2,
  name: 'Luật',
  imageUrl: 'assets/images/v2.jpg',
);
final User ninh = User(
  id: 3,
  name: 'Ninh',
  imageUrl: 'assets/images/lock/v3.jpg',
);
final User khoa = User(
  id: 4,
  name: 'Khoa',
  imageUrl: 'assets/images/v3.jpg',
);
final User hai = User(
  id: 5,
  name: 'Hải',
  imageUrl: 'assets/images/v4.jpg',
);
final User loc = User(
  id: 6,
  name: 'Lộc',
  imageUrl: 'assets/images/v2.jpg',
);
final User phat = User(
  id: 7,
  name: 'Phát',
  imageUrl: 'assets/images/v1.jpg',
);

// FAVORITE CONTACTS
List<User> favorites = [sang, luat, ninh, khoa, hai];

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: sang,
    time: '5:30 PM',
    text: 'Alo alo?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: luat,
    time: '4:30 PM',
    text: 'Alo alo?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: ninh,
    time: '3:30 PM',
    text: 'Alo alo?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: khoa,
    time: '2:30 PM',
    text: 'Alo alo?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: hai,
    time: '1:30 PM',
    text: 'Alo alo?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: loc,
    time: '12:30 PM',
    text: 'Alo alo?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: phat,
    time: '11:30 AM',
    text: 'Alo alo?',
    isLiked: false,
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: ninh,
    time: '5:30 PM',
    text: 'Alo alo?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'sao ban',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: ninh,
    time: '3:45 PM',
    text: 'cho vay 5 chuc',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: ninh,
    time: '3:15 PM',
    text: 'mua mi tom',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'gui stk',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: ninh,
    time: '2:00 PM',
    text: 'OK ban e',
    isLiked: false,
    unread: true,
  ),
];
