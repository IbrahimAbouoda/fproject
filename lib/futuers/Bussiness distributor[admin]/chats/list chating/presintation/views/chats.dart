import 'package:flutter/material.dart';
import 'package:fproject/futuers/Bussiness%20distributor%5Badmin%5D/general_widgets/app_bar1.dart';
import 'package:fproject/futuers/Bussiness%20distributor%5Badmin%5D/general_widgets/buttonApp.dart';
import 'package:go_router/go_router.dart';

import '../widgets/card_chats.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          const SizedBox(
            height: 35,
          ),
          const TopBarApp1(titel: "المراسلات"),
          Expanded(child: ListView.builder(
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    setState(() {
                      context.go("/messageing");
                    });
                  },
                  child: const CardChats());
            },
          )),
          const ButtonAppBar1(),
        ]),
      ),
    );
  }
}
