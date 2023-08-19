import 'package:flutter/material.dart';
import 'package:fproject/core/utils/app_images.dart';
import 'package:fproject/fetures/Bussiness%20distributor%5Badmin%5D/general_widgets/app_bar1.dart';
import 'package:fproject/fetures/Bussiness%20distributor%5Badmin%5D/general_widgets/buttonApp.dart';

class ShowUser extends StatelessWidget {
  const ShowUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const TopBarApp1(titel: "المشتريين"),
          Expanded(
              flex: 2,
              child: Container(
                child: ListView.builder(
                  itemBuilder: (context, index) => Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(border: Border.all()),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("data"),
                          const Row(
                            children: [
                              Text("data"),
                              CircleAvatar(
                                backgroundImage: AssetImage(Assets.c1),
                              )
                            ],
                          ),
                          Expanded(
                              child: Container(
                            child: ButtonAppBar1(
                                onTapHome: () =>
                                    Navigator.pushNamed(context, "/homeAdmin")),
                          ))
                        ]),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
