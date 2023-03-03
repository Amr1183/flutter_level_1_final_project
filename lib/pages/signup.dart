// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: Icon(Icons.home),
              backgroundColor: Colors.purple[900],
            ),
            body: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Stack(children: [
                  Column(
                    children: [
                      SizedBox(height: 35),
                      Text("SIGNUP",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.purple[900],
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 35),
                      Container(
                          alignment: Alignment.center,
                          child: SvgPicture.asset(
                            "assets/icons/signup.svg",
                            width: 285,
                            height: 252,
                          )),
                      SizedBox(height: 40),
                      Container(
                        width: 285,
                        height: 52,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(60)),
                        child: TextField(
                          cursorColor: Colors.purple[900],
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: "Email :",
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.purple[900],
                              ),
                              labelStyle: TextStyle(
                                  color: Colors.purple[900], fontSize: 18)),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: 285,
                        height: 52,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(60)),
                        child: TextField(
                          cursorColor: Colors.purple[900],
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: "Password :",
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.purple[900],
                              ),
                              suffixIcon: Icon(
                                Icons.visibility,
                                color: Colors.purple[900],
                              ),
                              labelStyle: TextStyle(
                                  color: Colors.purple[900], fontSize: 18)),
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/signup");
                        },
                        child: Text(
                          "SIGNUP",
                          style: TextStyle(fontSize: 21, color: Colors.white),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.purple[900]),
                            padding: MaterialStatePropertyAll(
                                EdgeInsets.symmetric(
                                    horizontal: 110, vertical: 12)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(60)))),
                      ),
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an accout? ",
                              style: TextStyle(color: Colors.purple[900])),
                          GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, "/login");
                              },
                              child: Text(
                                " Log in",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.purple[900]),
                              )),
                        ],
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        width: 299,
                        child: Row(children: [
                          Expanded(
                              child: Divider(
                                  thickness: 1.2, color: Colors.purple[900])),
                          Text(
                            "OR",
                            style: TextStyle(
                              color: Colors.purple[900],
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          Expanded(
                              child: Divider(
                                  thickness: 1.2, color: Colors.purple[900]))
                        ]),
                      ),
                    ],
                  ),
                  Container( height: double.infinity,
                    margin: EdgeInsets.symmetric(vertical: 27),
                    child: Positioned( bottom: 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(13),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:
                                      Border.all(color: Colors.purple, width: 1)),
                              child: SvgPicture.asset(
                                "assets/icons/facebook.svg",
                                color: Colors.purple[900],
                                height: 27,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 22,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(13),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:
                                      Border.all(color:  Colors.purple, width: 1)),
                              child: SvgPicture.asset(
                                "assets/icons/google-plus.svg",
                                color: Colors.purple[900],
                                height: 27,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 22,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(13),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:
                                      Border.all(color: Colors.purple, width: 1)),
                              child: SvgPicture.asset(
                                "assets/icons/twitter.svg",
                                color: Colors.purple[900],
                                height: 27,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      child: Image.asset("assets/images/signup_top.png",
                          width: 130),
                      top: 0),
                  Positioned(
                      child: Image.asset("assets/images/main_bottom.png",
                          width: 70),
                      bottom: 0),
                  SizedBox(height: 60),
                ]))));
  }
}
