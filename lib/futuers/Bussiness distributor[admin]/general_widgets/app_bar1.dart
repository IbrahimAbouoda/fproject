import 'package:flutter/material.dart';

import '../../../core/utils/constant.dart';

class AppBar1 extends StatelessWidget {
  const AppBar1({
    super.key, required this.titel,
  });

  final String titel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black12))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            width: 15,
          ),
          Text(
            titel,
            style: Constant.style1,
          ),
          const Icon(Icons.arrow_circle_right_rounded)
        ],
      ),
    );
  }
}
