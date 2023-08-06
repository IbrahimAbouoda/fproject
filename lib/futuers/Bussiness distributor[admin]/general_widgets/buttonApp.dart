import 'package:flutter/material.dart';

class ButtonAppBar1 extends StatefulWidget {
  const ButtonAppBar1({super.key});

  @override
  State<ButtonAppBar1> createState() => _ButtonAppBar1State();
}

class _ButtonAppBar1State extends State<ButtonAppBar1> {
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
