import 'package:flutter/material.dart';
import 'package:fproject/core/utils/general_style.dart';
import 'package:fproject/futuers/Bussiness%20distributor%5Badmin%5D/general_widgets/buttonApp.dart';
import 'package:go_router/go_router.dart';

import '../widgets/box_list.dart';

class HomeDist extends StatefulWidget {
  const HomeDist({Key? key}) : super(key: key);

  @override
  State<HomeDist> createState() => _HomeDistState();
}

class _HomeDistState extends State<HomeDist> {
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
        actions: const [
          Row(
            children: [Icon(Icons.search_rounded), Icon(Icons.notifications)],
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
