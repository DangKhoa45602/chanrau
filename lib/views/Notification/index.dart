import 'package:faceway/views/Login/LoginPage.dart';
import 'package:flutter/material.dart';

class Notificationscreen extends StatefulWidget {
  @override
  _NotificationscreenState createState() => _NotificationscreenState();
}

class _NotificationscreenState extends State<Notificationscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Faceway"),
        backgroundColor: Colors.grey,
        // centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              icon: Icon(Icons.notifications_none)),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.account_circle_rounded)),
        ],
        // bottom: TabBar(
        //   tabs: [
        //     Tab(icon: Icon(Icons.home), text: "home",),
        //     Tab(icon: Icon(Icons.face_sharp), text: "Me",),
        //     Tab(icon: Icon(Icons.notifications_none), text: "Notification",),
        //   ],
        // ),
        elevation: 20,
        titleSpacing: 20,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Text(
              "Thông báo",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            trailing: CircleAvatar(
                backgroundColor: Colors.grey[300],
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                )),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Text(
                "Gần nhất",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 7,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              // backgroundImage: NetworkImage('https://via.placeholder.com/150'),
              backgroundImage: AssetImage('images/ava.jpg'),
              backgroundColor: Colors.transparent,
            ),
            title: Text("Ninh chan rau da tha tim anh cua ban"),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_horiz),
            ),
            onTap: () {},
          ),
          SizedBox(
            height: 7,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              // backgroundImage: NetworkImage('https://via.placeholder.com/150'),
              backgroundImage: AssetImage('images/v1.jpg'),
              backgroundColor: Colors.transparent,
            ),
            title: Text("Ninh chan rau da tha tim anh cua ban"),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_horiz),
            ),
            onTap: () {},
          ),
          SizedBox(
            height: 7,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              // backgroundImage: NetworkImage('https://via.placeholder.com/150'),
              backgroundImage: AssetImage('images/v2.jpg'),
              backgroundColor: Colors.transparent,
            ),
            title: Text("Ninh chan rau da tha tim anh cua ban"),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_horiz),
            ),
            onTap: () {},
          ),
          SizedBox(
            height: 7,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              // backgroundImage: NetworkImage('https://via.placeholder.com/150'),
              backgroundImage: AssetImage('images/v3.jpg'),
              backgroundColor: Colors.transparent,
            ),
            title: Text("Ninh chan rau da tha tim anh cua ban"),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_horiz),
            ),
            onTap: () {},
          ),
          SizedBox(
            height: 7,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              // backgroundImage: NetworkImage('https://via.placeholder.com/150'),
              backgroundImage: AssetImage('images/v4.jpg'),
              backgroundColor: Colors.transparent,
            ),
            title: Text("Ninh chan rau da tha tim anh cua ban"),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_horiz),
            ),
            onTap: () {},
          ),
          SizedBox(
            height: 7,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              // backgroundImage: NetworkImage('https://via.placeholder.com/150'),
              backgroundImage: AssetImage('images/v2.jpg'),
              backgroundColor: Colors.transparent,
            ),
            title: Text("Ninh chan rau da tha tim anh cua ban"),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_horiz),
            ),
            onTap: () {},
          ),
          SizedBox(
            height: 7,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              // backgroundImage: NetworkImage('https://via.placeholder.com/150'),
              backgroundImage: AssetImage('images/v4.jpg'),
              backgroundColor: Colors.transparent,
            ),
            title: Text("Ninh chan rau da tha tim anh cua ban"),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_horiz),
            ),
            onTap: () {},
          ),
          SizedBox(
            height: 7,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              // backgroundImage: NetworkImage('https://via.placeholder.com/150'),
              backgroundImage: AssetImage('images/v1.jpg'),
              backgroundColor: Colors.transparent,
            ),
            title: Text("Ninh chan rau da tha tim anh cua ban"),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_horiz),
            ),
            onTap: () {},
          ),
          SizedBox(
            height: 7,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              // backgroundImage: NetworkImage('https://via.placeholder.com/150'),
              backgroundImage: AssetImage('images/v3.jpg'),
              backgroundColor: Colors.transparent,
            ),
            title: Text("Ninh chan rau da tha tim anh cua ban"),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_horiz),
            ),
            onTap: () {},
          ),
          // SizedBox(
          //   height: 7,
          // ),
          // ElevatedButton(
          //   onPressed: () {},
          //   style: ElevatedButton.styleFrom(primary: Colors.white),
          //   child: ListTile(
          //     leading: CircleAvatar(
          //       radius: 30.0,
          //       backgroundImage:
          //           NetworkImage('https://via.placeholder.com/150'),
          //       backgroundColor: Colors.transparent,
          //     ),
          //     title: Text("Ninh chan rau da tha tim anh cua ban"),
          //     trailing: IconButton(
          //       onPressed: () {},
          //       icon: Icon(Icons.more_horiz),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
