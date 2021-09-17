import 'package:faceway/views/profile/editprofile.dart';
import 'package:flutter/material.dart';

import 'SizeConfig.dart';

class Profilepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'HomeScreen App',
              home: ProfileFirst(),
            );
          },
        );
      },
    );
  }
}

class ProfileFirst extends StatefulWidget {
  @override
  _ProfileFirstState createState() => _ProfileFirstState();
}

class _ProfileFirstState extends State<ProfileFirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SingleChildScrollView(
        child: Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            Container(
              color: Color(0xffffffff),
              height: 40 * SizeConfig.heightMultiplier,
              child: Padding(
                padding: EdgeInsets.only(
                    left: 30.0,
                    right: 30.0,
                    top: 11 * SizeConfig.heightMultiplier),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Center(
                          child: Stack(
                            children: [
                              Container(
                                width: 92,
                                height: 92,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 3, color: Colors.white),
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assets/profileimg.png"))),
                              ),
                              Positioned(
                                width: 90,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 65, top: 52),
                                  child: CircleAvatar(
                                    backgroundColor: Color(0xff1f1f1f),
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.edit,
                                        size: 17,
                                        color: Colors.white,
                                      ),
                                      padding: EdgeInsets.only(left: 0),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  EditProfile()),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 1 * SizeConfig.widthMultiplier,
                        ),
                        Row(
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(left: 10),
                                        child: Text(
                                          "Sang Lê",
                                          style: TextStyle(
                                              color: Color(0xff1f1f1f),
                                              fontSize: 3.7 *
                                                  SizeConfig.textMultiplier,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 0.5 * SizeConfig.heightMultiplier,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(left: 10),
                                        child: Row(
                                          children: <Widget>[
                                            Image.asset(
                                              "assets/fb.png",
                                              height: 3 *
                                                  SizeConfig.heightMultiplier,
                                              width: 3 *
                                                  SizeConfig.widthMultiplier,
                                            ),
                                            SizedBox(
                                              width: 2 *
                                                  SizeConfig.widthMultiplier,
                                            ),
                                            Text(
                                              "Facebook",
                                              style: TextStyle(
                                                color: Color(
                                                    0xff1f1f1f), //color black
                                                fontSize: 1.5 *
                                                    SizeConfig.textMultiplier,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 4 * SizeConfig.widthMultiplier,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Image.asset(
                                            "assets/insta.png",
                                            height:
                                                3 * SizeConfig.heightMultiplier,
                                            width:
                                                3 * SizeConfig.widthMultiplier,
                                          ),
                                          SizedBox(
                                            width:
                                                2 * SizeConfig.widthMultiplier,
                                          ),
                                          Text(
                                            "Instagram",
                                            style: TextStyle(
                                              color: Color(0xff1f1f1f),
                                              fontSize: 1.5 *
                                                  SizeConfig.textMultiplier,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 3 * SizeConfig.heightMultiplier,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                              left: 5 * SizeConfig.heightMultiplier),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "57kg",
                                style: TextStyle(
                                    color: Color(0xff1f1f1f),
                                    fontSize: 2.7 * SizeConfig.textMultiplier,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Weight",
                                style: TextStyle(
                                  color: Color(0xff1f1f1f),
                                  fontSize: 1.5 * SizeConfig.textMultiplier,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 0 * SizeConfig.heightMultiplier),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "+21",
                                style: TextStyle(
                                    color: Color(0xff1f1f1f),
                                    fontSize: 2.7 * SizeConfig.textMultiplier,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Age",
                                style: TextStyle(
                                  color: Color(0xff1f1f1f),
                                  fontSize: 1.5 * SizeConfig.textMultiplier,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              right: 5 * SizeConfig.heightMultiplier),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "1.74M",
                                style: TextStyle(
                                    color: Color(0xff1f1f1f),
                                    fontSize: 2.7 * SizeConfig.textMultiplier,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Height",
                                style: TextStyle(
                                  color: Color(0xff1f1f1f),
                                  fontSize: 1.5 * SizeConfig.textMultiplier,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 3 * SizeConfig.heightMultiplier,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 0 * SizeConfig.heightMultiplier),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 10, right: 2 * SizeConfig.heightMultiplier),
                          child: Text(
                            "Đây là tiểu sử \n Em chưa 18",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 2 * SizeConfig.textMultiplier),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

//================================================================================================

            Padding(
              padding: EdgeInsets.only(top: 45 * SizeConfig.heightMultiplier),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      topLeft: Radius.circular(30.0),
                    ),
                    border: Border.all(color: Colors.grey, width: 1)),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 12, bottom: 2 * SizeConfig.heightMultiplier),
                          child: Text(
                            "My Albums",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 3 * SizeConfig.textMultiplier),
                          ),
                        ),
                      ),
                      Container(
                        height: 50 * SizeConfig.heightMultiplier,
                        child: ListView(
                          children: <Widget>[
                            _myAlbumCard(
                                "assets/4.png",
                                "assets/2.png",
                                "assets/3.png",
                                "assets/2.png",
                                "assets/4.png",
                                "assets/2.png",
                                "assets/3.png",
                                "assets/4.png",
                                "+18"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _myAlbumCard(String asset1, String asset2, String asset3, String asset4,
      String asset5, String asset6, String asset7, String asset8, String more) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(bottom: 1 * SizeConfig.heightMultiplier),
        child: Container(
          height: 122 * SizeConfig.heightMultiplier,
          width: 90 * SizeConfig.widthMultiplier,
          decoration: BoxDecoration(
              color: Color(0xffffff),
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(color: Colors.grey, width: 1)),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        asset1,
                        height: 52 * SizeConfig.imageSizeMultiplier,
                        width: 42 * SizeConfig.imageSizeMultiplier,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Spacer(),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        asset2,
                        height: 52 * SizeConfig.imageSizeMultiplier,
                        width: 42 * SizeConfig.imageSizeMultiplier,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 1 * SizeConfig.heightMultiplier,
                ),
                Row(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        asset3,
                        height: 52 * SizeConfig.imageSizeMultiplier,
                        width: 42 * SizeConfig.imageSizeMultiplier,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Spacer(),
                    Stack(
                      overflow: Overflow.visible,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            asset4,
                            height: 52 * SizeConfig.imageSizeMultiplier,
                            width: 42 * SizeConfig.imageSizeMultiplier,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: 1 * SizeConfig.heightMultiplier),
                  child: Row(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          asset3,
                          height: 52 * SizeConfig.imageSizeMultiplier,
                          width: 42 * SizeConfig.imageSizeMultiplier,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Spacer(),
                      Stack(
                        overflow: Overflow.visible,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              asset4,
                              height: 52 * SizeConfig.imageSizeMultiplier,
                              width: 42 * SizeConfig.imageSizeMultiplier,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: 1 * SizeConfig.heightMultiplier),
                  child: Row(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          asset3,
                          height: 52 * SizeConfig.imageSizeMultiplier,
                          width: 42 * SizeConfig.imageSizeMultiplier,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Spacer(),
                      Stack(
                        overflow: Overflow.visible,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              asset4,
                              height: 52 * SizeConfig.imageSizeMultiplier,
                              width: 42 * SizeConfig.imageSizeMultiplier,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            child: Container(
                              height: 52 * SizeConfig.imageSizeMultiplier,
                              width: 42 * SizeConfig.imageSizeMultiplier,
                              decoration: BoxDecoration(
                                  color: Colors.black38,
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Center(
                                child: Text(
                                  more,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 2.5 * SizeConfig.textMultiplier,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1 * SizeConfig.heightMultiplier,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
