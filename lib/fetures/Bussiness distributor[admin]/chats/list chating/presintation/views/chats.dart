import 'package:flutter/material.dart';
import 'package:fproject/fetures/Bussiness%20distributor%5Badmin%5D/general_widgets/app_bar1.dart';
import 'package:fproject/fetures/Bussiness%20distributor%5Badmin%5D/general_widgets/buttonApp.dart';

import '../widgets/card_chats.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          const SizedBox(
            height: 35,
          ),
          const TopBarApp1(
            titel: "المراسلات",
          ),
          Expanded(child: ListView.builder(
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/messageing");
                  },
                  child: const CardChats());
            },
          )),
          ButtonAppBar1(
              onTapHome: () => Navigator.pushNamed(context, "/homeUser")),
        ]),
      ),
    );
  }
}
