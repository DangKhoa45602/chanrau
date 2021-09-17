import 'package:faceway/views/Navigation/bottom_navigation.dart';
import 'package:faceway/views/messenger/home_screen.dart';
import 'package:flutter/material.dart';

import 'Methods.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _name = new TextEditingController();
  final TextEditingController _email = new TextEditingController();
  final TextEditingController _password = new TextEditingController();
  bool isLoading = false;
  bool _validate1 = false;
  bool _validate2 = false;
  bool _validate3 = false;

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
                              "Sign Up!",
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
                              controller: _name,
                              decoration: InputDecoration(
                                  labelText: "Name",
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
                                          BorderSide(color: Colors.red)),
                                  errorText:
                                      _validate1 ? 'Value can\'t empty' : null),
                            ),
                            SizedBox(
                              height: 16,
                            ),
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
                                          BorderSide(color: Colors.red)),
                                  errorText:
                                      _validate2 ? 'Value can\'t empty' : null),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            TextField(
                              controller: _password,
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
                                          BorderSide(color: Colors.red)),
                                  errorText:
                                      _validate3 ? 'Value can\'t empty' : null,
                                  errorMaxLines: 2),
                            ),

                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              child: FlatButton(
                                onPressed: () {
                                  if (_name.text.isNotEmpty &&
                                      _email.text.isNotEmpty &&
                                      _password.text.isNotEmpty) {
                                    setState(() {
                                      isLoading = true;
                                    });

                                    registerAccount(_name.text, _email.text,
                                            _password.text)
                                        .then((user) {
                                      if (user != null) {
                                        setState(() {
                                          isLoading = false;
                                        });
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (_) =>
                                                    BottomNavigation()));
                                        print("Account Created Sucessfull");
                                      } else {
                                        print("Login Failed");
                                        setState(() {
                                          isLoading = false;
                                        });
                                      }
                                    });
                                  } else {
                                    if (_name.text.isEmpty) {
                                      setState(() {
                                        _validate1 = true;
                                      });
                                    }
                                    if (_email.text.isEmpty) {
                                      setState(() {
                                        _validate2 = true;
                                      });
                                    }
                                    if (_password.text.isEmpty) {
                                      setState(() {
                                        _validate3 = true;
                                      });
                                    }
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
                                      "Register",
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
                                "Already have an account, ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Text("Sign In",
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
