import 'package:flutter/material.dart';
import 'package:fproject/fetures/Bussiness%20distributor%5Badmin%5D/general_widgets/app_bar1.dart';
import 'package:fproject/fetures/Bussiness%20distributor%5Badmin%5D/general_widgets/buttonApp.dart';
import 'package:go_router/go_router.dart';

class ShowAdmins extends StatelessWidget {
  const ShowAdmins({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 20, left: 8, right: 8, bottom: 5),
      child: Column(children: [
        const TopBarApp1(titel: "التجار"),
        Expanded(
            flex: 1,
            child: Container(
              child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.search_rounded),
                        onPressed: () {},
                      ))),
            )),
        Expanded(
            flex: 8,
            child: Container(
              child: ListView.builder(
                itemBuilder: (context, index) => SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                            onPressed: () {}, child: const Text("اضافة")),
                        const Row(
                          children: [
                            Text("احمد"),
                            SizedBox(
                              width: 20,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.cyanAccent,
                            )
                          ],
                        )
                      ],
                    )),
              ),
            )),
        Expanded(
            flex: 1,
            child: Container(
              child: ButtonAppBar1(
                onTapHome: () =>  Navigator.pushNamed(context, "/homeUser")
              ),
            )),
      ]),
    ));
  }
}
