import 'package:flutter/material.dart';
import 'package:fproject/core/utils/general_style.dart';

import '../../general_widgets.dart';

class AddStore extends StatelessWidget {
  const AddStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 40, bottom: 20, right: 10, left: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "مرحبا بك في متجر غزة",
              style: GeneralStyle.tiltelStyle,
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              "قم بإنشاء متجرك الان",
              style: GeneralStyle.tiltelStyle,
            ),
            const SizedBox(
              height: 7,
            ),
            Container(
              alignment: Alignment.center,
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffF3F3F3),
              ),
              child: const Text(
                "صورة",
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.only(right: 10),
              alignment: Alignment.centerRight,
              width: 300,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffF3F3F3),
              ),
              child: const Text(
                "اسم المتجر",
                textAlign: TextAlign.right,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.topRight,
              width: 300,
              height: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffF3F3F3),
              ),
              child: const Text("الوصف"),
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomButton(
              text: "دخول",
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
