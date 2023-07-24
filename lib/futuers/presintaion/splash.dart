import 'dart:async';

import 'package:flutter/material.dart';

import 'home/home_screen.dart';

class Spalah extends StatefulWidget {
  const Spalah({Key? key}) : super(key: key);

  @override
  State<Spalah> createState() => _SpalahState();
}

class _SpalahState extends State<Spalah>with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2), // Adjust the duration as needed
    );

    _animation = CurvedAnimation(parent: _controller!, curve: Curves.easeInOut);

    // Start the animation when the widget is built
    _controller?.forward();

    // After the animation completes, navigate to the next screen (e.g., home screen)
    Timer(Duration(seconds: 4), () {
      // Replace 'HomeScreen()' with the actual widget representing your home screen.
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }
  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Change to your preferred background color
      body: Center(
        child: ScaleTransition(
          scale: _animation!,
          child: Image.asset("assets/images/Logo.png") // Replace with your logo widget
        ),
      ),
    );
  }
}
