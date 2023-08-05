import 'package:flutter/material.dart';
import 'package:fproject/futuers/widgets.dart';
import 'package:go_router/go_router.dart';

import '../widgets/circet_widget.dart';

class Defin1 extends StatefulWidget {
  const Defin1({Key? key}) : super(key: key);

  @override
  State<Defin1> createState() => _Defin1State();
}

class _Defin1State extends State<Defin1> {
  List image = [
    "assets/images/defin3.png",
    "assets/images/defin2.png",
    "assets/images/defin1.png"
  ];

  int index1 = 0;
  int count = 0;

  prss() {
    index1 = count;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: double.infinity,
              height: 500,
              child: PageView.builder(
                itemBuilder: (context, index) {
                  index1 = index;
                  return Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                      child: Image.asset(image[index1]));
                },
                controller: PageController(
                  initialPage: 1,
                  viewportFraction: 0.8,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: 3,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "احجز بضائعك بسهولة",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text("استعرض أهم الميزات"),
            const SizedBox(
              height: 20,
            ),
            Circet(index1: index1),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
                width: 150,
                child: CustomButton(
                  text: "متابعة",
                  onPressed: () {
                    setState(() {
                      context.go("/login");
                    });
                  },
                  color: Colors.blue,
                ))
          ],
        ),
      ),
    );
  }
}
