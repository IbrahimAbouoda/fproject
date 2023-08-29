import 'package:flutter/material.dart';

import '../../../../../components/widgets/general_widgets/buttonApp.dart';
import '../../../../components/general_widgets_user.dart/app_bar_user.dart';
import '../../../../core/utils/app_images.dart';
import '../widgets/categoris_list.dart';
import '../widgets/new_products.dart';

class HomeUser extends StatelessWidget {
  static const String id = "/homeUser";
  const HomeUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBarUserPages(onPressed: ()=> Navigator.pushNamed(context, "/menuUser"),),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 1),
        child: Column(
          children: [
            CategorisList(onTap: () {
              Navigator.pushNamed(context, "/homeCategory");
            }),
            Expanded(
                flex: 6,
                child: ListView(
                  children:  [
                    Expanded(
                      flex: 3,
                      child: NewListCategoris(
                        title: "أضيفت حديثا",
                      ),
                    ),
                    SizedBox(height: 10),
                    Expanded(
                      flex: 3,
                      child: NewListCategoris(title: "مهتم بها"),
                    ),
                  ],
                )),
            ButtonAppBar1(
              onTapHome: () =>  Navigator.pushNamed(context, "/homeUser")
            ),
          ],
        ),
      ),
    );
  }
}
