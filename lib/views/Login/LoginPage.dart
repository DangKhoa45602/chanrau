import 'package:faceway/views/Login/Methods.dart';
import 'package:faceway/views/Login/RegisterPage.dart';
import 'package:faceway/views/Navigation/bottom_navigation.dart';
import 'package:faceway/views/messenger/home_screen.dart';

import 'package:flutter/material.dart';

import 'Authenticate.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _email = new TextEditingController();
  final TextEditingController _password = new TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: isLoading
          ? Center(
              child: Container(
                height: size.height / 20,
                width: size.height / 20,
                child: CircularProgressIndicator(),
              ),
            )
          : SingleChildScrollView(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 50,
                            ),
                            Text(
                              "Welcome,",
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Sign In!",
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        Column(
                          children: <Widget>[
                            TextField(
                              controller: _email,
                              decoration: InputDecoration(
                                  labelText: "Email",
                                  labelStyle: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey.shade400),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                          color: Colors.grey.shade300)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          BorderSide(color: Colors.red))),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            TextField(
                              controller: _password,
                              obscureText: true,
                              obscuringCharacter: "*",
                              decoration: InputDecoration(
                                  labelText: "Password",
                                  labelStyle: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey.shade400),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                          color: Colors.grey.shade300)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          BorderSide(color: Colors.red))),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                "Forgot password?",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              child: FlatButton(
                                onPressed: () {
                                  if (_email.text.isNotEmpty &&
                                      _password.text.isNotEmpty) {
                                    setState(() {
                                      isLoading = true;
                                    });

                                    login(_email.text, _password.text)
                                        .then((user) {
                                      if (user != null) {
                                        setState(() {
                                          isLoading = false;
                                        });
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (_) =>
                                                    Authenticate()));
                                        print("Login Sucessfull");
                                      } else {
                                        print("Login Failed");
                                        setState(() {
                                          isLoading = false;
                                        });
                                      }
                                    });
                                  } else {
                                    print("Please enter Fields");
                                  }
                                },
                                child: Ink(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    gradient: LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        colors: [
                                          Color(0x782e8787),
                                          Color(0xffff5f6d),
                                          Color(0xc0ffab71),
                                        ]),
                                  ),
                                  child: Container(
                                    alignment: Alignment.center,
                                    constraints: BoxConstraints(
                                        maxWidth: double.infinity,
                                        minHeight: 50),
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                            ),
                            // SizedBox(height: 10,),
                            // Padding(
                            //   padding: const EdgeInsets.all(15.0),
                            //   child: Container(
                            //     height: 50,
                            //     width: double.infinity,
                            //     child: FlatButton(
                            //       onPressed: (){},
                            //       child: Row(
                            //         mainAxisAlignment: MainAxisAlignment.center,
                            //         children: [
                            //           Image.asset("images/facebook.png",height: 18,width: 18,),
                            //           SizedBox(width: 10,),
                            //           Text("Connect with Facebook",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold),)
                            //         ],
                            //       ),
                            //       color: Colors.indigo.shade50,
                            //       shape: RoundedRectangleBorder(
                            //           borderRadius: BorderRadius.circular(8)
                            //       ),
                            //     ),
                            //
                            //   ),
                            // ),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "I'm a new user. ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              RegisterPage()));
                                },
                                child: Text("Sign Up",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red)),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}
