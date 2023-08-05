import 'package:flutter/material.dart';

import '../../widgets.dart';

class AddProduct2 extends StatelessWidget {
  const AddProduct2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 40, bottom: 20, right: 10, left: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BoxImageCont(),
                BoxImageCont(),
                BoxImageCont(),
                BoxImageCont(),
                BoxImageCont(),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            dropdownBox(300, "الشركة المصنعة"),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                dropdownBox(100, "الظهور"),
                dropdownBox(100, "فئات الظهور"),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const CustomButton(
              text: "دخول",
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }

  Column dropdownBox(double i, String tex) {
    return Column(
      children: [
        Container(
            margin: const EdgeInsets.only(right: 20),
            alignment: Alignment.centerRight,
            child: Text(tex, textAlign: TextAlign.right)),
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(10),
          width: i,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xffF3F3F3),
          ),
          child: const Icon(Icons.arrow_drop_down),
        ),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Container BoxImageCont() {
    return Container(
      padding: const EdgeInsets.only(right: 10),
      alignment: Alignment.center,
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black38),
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xffF3F3F3),
      ),
      child: const Text(
        "صورة",
        textAlign: TextAlign.center,
      ),
    );
  }
}
