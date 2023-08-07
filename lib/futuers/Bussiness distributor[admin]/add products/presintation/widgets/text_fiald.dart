import 'package:flutter/material.dart';

import '../../../../../core/utils/constant.dart';

class TextFormProduct extends StatelessWidget {
  final int maxline;
  final String label;
  const TextFormProduct({
    super.key,
    required this.maxline,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxline,
      decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: ConstantStayles.kPrimColor))),
    );
  }
}
