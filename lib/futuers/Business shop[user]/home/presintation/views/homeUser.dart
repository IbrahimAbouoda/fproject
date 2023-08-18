import 'package:flutter/material.dart';
import 'package:fproject/core/utils/app_images.dart';
import 'package:fproject/futuers/Business%20shop%5Buser%5D/general_widgets_user.dart/app_bar_user.dart';
import 'package:fproject/futuers/Bussiness%20distributor%5Badmin%5D/general_widgets/buttonApp.dart';
import 'package:go_router/go_router.dart';

import '../widgets/categoris_list.dart';

class HomeUser extends StatelessWidget {
  static const String id = "/homeUser";
  const HomeUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBarUserPages(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            CategorisList(onTap: () {
              Navigator.pushNamed(context, "/homeCategory");
            }),
            Expanded(
                flex: 6,
                child: ListView(
                  children: const [
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

class NewListCategoris extends StatelessWidget {
  const NewListCategoris({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topRight,
          child: Text(title, style: TextStyle(fontSize: 20)),
        ),
        SizedBox(
            width: double.infinity,
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 270,
                    width: 210,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffD9D9D9),
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          color: Colors.grey,
                          height: 200,
                          child: Image.asset(
                            Assets.c1,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "بيجامة خامة قطن",
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text("4.5",
                                      style: TextStyle(color: Colors.blue)),
                                  Text(
                                    "\$99.00",
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                  Text(
                                    "\$120.00",
                                    style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        color: Colors.red),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ))
      ],
    );
  }
}
