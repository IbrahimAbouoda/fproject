import 'package:flutter/material.dart';
import 'package:fproject/futuers/Bussiness%20distributor%5Badmin%5D/general_widgets/buttonApp.dart';
import 'package:go_router/go_router.dart';

import '../../../../Business shop[user]/general_widgets_user.dart/app_bar_user.dart';

class HomeAdmin extends StatelessWidget {
  const HomeAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBarUserPages(
          onPressed: () => Navigator.pushNamed(context, "/menuAdmin"),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 10,
              child: SizedBox(
                  width: double.infinity,
                  child: ListView.builder(
                    itemBuilder: (context, index) => Container(
                      margin: const EdgeInsets.all(5),
                      child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("51"),
                            Text("51"),
                            Text("فستان احمر"),
                            CircleAvatar(
                              backgroundColor: Colors.amber,
                            ),
                          ]),
                    ),
                  ))),
          Expanded(
              flex: 1,
              child: Container(
                child: ButtonAppBar1(
                  onTapHome: () => Navigator.pushNamed(context, "/homeAdmin"),
                ),
              )),
        ],
      ),
    );
  }
}
