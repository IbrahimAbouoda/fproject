import 'package:flutter/material.dart';
import 'package:fproject/core/utils/app_images.dart';
import 'package:fproject/futuers/Bussiness%20distributor%5Badmin%5D/general_widgets/app_bar1.dart';
import 'package:fproject/futuers/Bussiness%20distributor%5Badmin%5D/requsts%20user/presintation/views/widgets/body_list.dart';

import '../../../general_widgets/buttonApp.dart';

class ListRequst extends StatelessWidget {
  const ListRequst({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const TopBarApp1(titel: "الطلبات"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                child: Image.asset(Assets.general),
              ),
              Tab(
                child: Image.asset(Assets.silver),
              ),
              Tab(
                child: Image.asset(Assets.gold),
              ),
              Tab(
                child: Image.asset(Assets.medal),
              )
            ],
          ),
        ),
        body: Column(
          children: [
            const Expanded(flex: 12, child: BodyRequstList()),
            Expanded(
                flex: 1,
                child: ButtonAppBar1(
                    onTapHome: () => Navigator.pushNamed(context, "homeAdmin")))
          ],
        ),
      ),
    );
  }
}
