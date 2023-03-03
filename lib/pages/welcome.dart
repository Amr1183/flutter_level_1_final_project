// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(height: 35),
                Text("WELCOME TO EDU",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.purple[900],
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 35),
                Container(
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      "assets/icons/chat.svg",
                      width: 290,
                      height: 450,
                    )),
                SizedBox(height: 60),
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
                          EdgeInsets.symmetric(horizontal: 100, vertical: 16)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60)))),
                ),
                SizedBox(height: 35),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/signup");
                  },
                  child: Text(
                    "SIGNUP",
                    style: TextStyle(fontSize: 21, color: Colors.purple[900]),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.grey[300]),
                      padding: MaterialStatePropertyAll(
                          EdgeInsets.symmetric(horizontal: 95, vertical: 15)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60)))),
                ),
              ],
            ),
            Positioned(
                child: Image.asset("assets/images/main_top.png", width: 130),
                top: 0),
            Positioned(
                child: Image.asset("assets/images/main_bottom.png", width: 70),
                bottom: 0),
            SizedBox(height: 60),
          ],
        ),
      )),
    );
  }
}
