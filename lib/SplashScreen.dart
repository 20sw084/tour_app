import 'dart:async';

import 'package:flutter/material.dart';

import 'StartPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const StartPage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 250,
              ),
              Image.asset(
                "assets/images/t.png",
                width: 250,
                height: 250,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Tour App",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 150,
              ),
              Row(
                children: const <Widget>[
                  Spacer(
                    flex: 2,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Developed by: Junaid Aslam",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
