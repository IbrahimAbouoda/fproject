import 'package:flutter/material.dart';

class BarApp extends StatefulWidget {
  const BarApp({super.key});

  @override
  State<BarApp> createState() => _BarAppState();
}

class _BarAppState extends State<BarApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: const BoxDecoration(
        color: Color(0xff27374D),
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(15), bottomLeft: Radius.circular(15)),
      ),
      child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.home,
              color: Colors.white,
            ),
            Icon(
              Icons.person_2,
              color: Colors.white,
            ),
            Icon(
              Icons.not_interested,
              color: Colors.white,
            ),
            Icon(
              Icons.chat_sharp,
              color: Colors.white,
            ),
          ]),
    );
  }
}
