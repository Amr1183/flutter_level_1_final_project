// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
            child: Stack(
              children: [
                Column(
                  children: [
                    SizedBox(height: 35),
                    Text("LOGIN",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.purple[900],
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 35),
                    Container(
                        alignment: Alignment.center,
                        child: SvgPicture.asset(
                          "assets/icons/login.svg",
                          width: 290,
                          height: 280,
                        )),
                    SizedBox(height: 30),
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
                        Navigator.pushNamed(context, "/login");
                      },
                      child: Text(
                        "LOGIN",
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
                          Text("Don't have an Account? ", style: TextStyle(color: Colors.purple[900])),
                          GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, "/signup");
                              },
                              child: Text(
                                "Sign Up",
                                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.purple[900]),
                              )),
                        ],
                      ),
                    
                  ],
                ),
                Positioned(
                    child:
                        Image.asset("assets/images/main_top.png", width: 130),
                    top: 0),
                Positioned(
                    child:
                        Image.asset("assets/images/main_bottom.png", width: 70),
                    bottom: 0),
                SizedBox(height: 60),
              ],
            ),
          )),
    );
  }
}
