import 'package:flutter/material.dart';
import 'package:fproject/futuers/Bussiness%20distributor%5Badmin%5D/general_widgets/app_bar1.dart';

class Requst extends StatelessWidget {
  const Requst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(8),
        child: Expanded(
            child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            const TopBarApp1(titel: "الطلبات"),
            const SizedBox(
              height: 10,
            ),
            Container(
              child: Row(children: [Container()]),
            )
          ],
        )),
      )),
    );
  }
}
