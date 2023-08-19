import 'package:flutter/material.dart';

import '../../../../../core/utils/constant.dart';

class TextFormProduct extends StatelessWidget {
  final int maxline;
  final double width;
  final String label;
  const TextFormProduct({
    super.key,
    required this.maxline,
    required this.label,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color.fromARGB(255, 205, 201, 201)),
      width: width,
      child: TextFormField(
        textAlign: TextAlign.right,
        maxLines: maxline,
        decoration: InputDecoration(
            labelStyle: const TextStyle(color: Colors.black),
            label: Text(label),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: ConstantStayles.kPrimColor))),
      ),
    );
  }
}
