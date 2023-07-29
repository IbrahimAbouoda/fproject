import 'package:flutter/material.dart';
import 'package:fproject/core/utils/general_style.dart';

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

        title: Icon(Icons.line_weight_sharp),

        actions:[ Row(children: [Icon(Icons.search_rounded),Icon(Icons.notifications)],)],
      ),
      body: Container(
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Text(
            "المنتجات",
            style: GeneralStyle.tiltelStyle,
          ),
          SizedBox(height: 10,),

          Expanded(
            flex: 1,

            child: ListView.builder(itemBuilder: (context, index) {
              return  BoxContList();
            },
             itemCount: 15,
            ),
          )
        ]),
      ),
    );
  }




  Container BoxContList() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black38,width: 1.5)
      ),
                  width: 350,

                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(children: [
                              Icon(Icons.delete,),Icon(Icons.note_alt_outlined)
                            ],),
                            Text("15"),
                            Text("\$366"),
                            Text("الفضي"),
                            Text("فستان"),
                            Image.asset("assets/images/fustan.png")
                          ],
                        ),
                      ),
                    ],
                  ));
  }
}
