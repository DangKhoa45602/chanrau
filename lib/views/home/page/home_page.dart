import 'package:faceway/views/home/model/user.dart';
import 'package:faceway/views/home/data/users.dart';
import 'package:faceway/views/home/provider/feedback_position_provider.dart';
import 'package:faceway/views/home/widget/user_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<User> users = dummyUsers;

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              children: [
                users.isEmpty
                    ? Text('no more users')
                    : Stack(children: users.map(buildUser).toList()),
                Expanded(child: Container()),
              ],
            ),
          ),
        ),
      );

  // Widget buildAppBar() => AppBar(
  //       centerTitle: true,
  //       backgroundColor: Colors.transparent,
  //       elevation: 0,
  //       actions: [
  //         Padding(
  //           padding: EdgeInsets.only(
  //             top: 15,
  //             right: 20,
  //           ),
  //           child: Icon(
  //             Icons.person,
  //             color: Colors.grey,
  //             size: 45,
  //           ),
  //         ),
  //       ],
  //       leading: Padding(
  //         padding: EdgeInsets.only(
  //           top: 15,
  //           left: 20,
  //         ),
  //         child: Icon(
  //           Icons.search,
  //           color: Colors.grey,
  //           size: 45,
  //         ),
  //       ),
  //       title: Padding(
  //         padding: EdgeInsets.only(
  //           top: 15,
  //         ),
  //         child: Text("FaceWay",
  //             style: TextStyle(
  //               color: Colors.black,
  //               fontWeight: FontWeight.bold,
  //               fontSize: 35,
  //             )),
  //       ),
  //     );

  Widget buildUser(User user) {
    final userIndex = users.indexOf(user);
    final isUserInFocus = userIndex == users.length - 1;

    return Listener(
      onPointerMove: (pointerEvent) {
        final provider =
            Provider.of<FeedbackPositionProvider>(context, listen: false);
        provider.updatePosition(pointerEvent.localDelta.dx);
      },
      onPointerCancel: (_) {
        final provider =
            Provider.of<FeedbackPositionProvider>(context, listen: false);
        provider.resetPosition();
      },
      onPointerUp: (_) {
        final provider =
            Provider.of<FeedbackPositionProvider>(context, listen: false);
        provider.resetPosition();
      },
      child: Draggable(
        child: UserCardWidget(user: user, isUserInFocus: isUserInFocus),
        feedback: Material(
          type: MaterialType.transparency,
          child: UserCardWidget(user: user, isUserInFocus: isUserInFocus),
        ),
        childWhenDragging: Container(),
        onDragEnd: (details) => onDragEnd(details, user),
      ),
    );
  }

  void onDragEnd(DraggableDetails details, User user) {
    final minimumDrag = 100;
    if (details.offset.dx > minimumDrag) {
      user.isSwipedOff = true;
    } else if (details.offset.dx < -minimumDrag) {
      user.isLiked = true;
    }

    setState(() => users.remove(user));
  }
}
