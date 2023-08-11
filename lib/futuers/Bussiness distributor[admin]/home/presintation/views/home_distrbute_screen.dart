import 'package:flutter/material.dart';
import 'package:fproject/core/utils/general_style.dart';
import 'package:fproject/futuers/Bussiness%20distributor%5Badmin%5D/general_widgets/buttonApp.dart';
import 'package:go_router/go_router.dart';

import '../widgets/box_list.dart';

class HomeAdmin extends StatefulWidget {
  const HomeAdmin({Key? key}) : super(key: key);

  @override
  State<HomeAdmin> createState() => _HomeAdminState();
}

class _HomeAdminState extends State<HomeAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: IconButton(
            onPressed: () {
              context.go("/menuD");
            },
            icon: const Icon(Icons.line_weight_sharp)),
        actions: [
          Row(
            children: [
              TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.search_rounded)))),
              const Icon(Icons.notifications)
            ],
          )
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Text(
            "المنتجات",
            style: GeneralStyle.tiltelStyle,
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 1,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return BoxContList();
              },
              itemCount: 15,
            ),
          ),
          const ButtonAppBar1(),
        ]),
      ),
    );
  }
}
