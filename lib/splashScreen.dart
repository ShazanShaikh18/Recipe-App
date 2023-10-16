import 'dart:async';

import 'package:flutter/material.dart';
import 'package:we_chat/homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const Home(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 120,
                ),
                Image.asset("lib/assets/cooking.gif"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                              text: "Discover Your ",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              )),
                          TextSpan(
                              text: "Inner ",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              )),
                          TextSpan(
                              text: "Chef!",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40)),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.food_bank,
                      size: 40,
                      color: Colors.white,
                    ),
                  ],
                ),
                Container(
                    height: 130,
                    child: Center(
                        child: CircularProgressIndicator(
                      color: Colors.black,
                    ))),
                const Spacer(),
                const Column(
                  children: [
                    Text(
                      "App Created By",
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      'Shazan Shaikh',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
