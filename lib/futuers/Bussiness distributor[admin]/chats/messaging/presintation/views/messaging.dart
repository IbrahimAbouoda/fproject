import 'package:flutter/material.dart';
import 'package:fproject/core/utils/constant.dart';
import 'package:fproject/futuers/Bussiness%20distributor%5Badmin%5D/general_widgets/buttonApp.dart';

import '../widgets/card_message.dart';
import '../widgets/top_bar_messging.dart';

class Messaging extends StatefulWidget {
  const Messaging({super.key});

  @override
  State<Messaging> createState() => _MessagingState();
}

class _MessagingState extends State<Messaging> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 204, 211, 215),
      appBar: AppBar(
        backgroundColor: Constant.kPrimColor,
        title: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        actions: const [
          actionBarMessg(),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Expanded(
                    child: ListView.builder(
                        reverse: true,
                        itemCount: 10,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return MessageBuble(
                            messages: const ["hello"],
                            sender: "ibrahim",
                            index: index,
                            isMe: false,
                          );
                        }));
              },
            ),
          ),
          Row(
            children: [
              Container(
                width: 80,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: const Text("ادخل الرسالة"),
              ),
             
            ],
          ),
          const ButtonAppBar1(),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
