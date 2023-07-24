

import 'package:flutter/material.dart';

class Defin1 extends StatefulWidget {
    Defin1({Key? key}) : super(key: key);

  @override
  State<Defin1> createState() => _Defin1State();
}

class _Defin1State extends State<Defin1> {
  List image = [
    "assets/images/defin3.png",
    "assets/images/defin2.png",
    "assets/images/defin1.png"
  ];

  int index1=0;
  int count =0;

  prss (){
    index1=count;
  }

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              height: 500,
              child: PageView.builder(
                itemBuilder: (context, index) {
                  index1=index;
                  return Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 10.0,

                      ),

                      child: Image.asset(image[index1]));

                },

                controller: PageController(
                  initialPage: 1,
                  viewportFraction: 0.8,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: 3,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "احجز بضائعك بسهولة",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text("استعرض أهم الميزات"),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: index1 ==0 ? Colors.black : Colors.transparent,
                    borderRadius: const BorderRadius.all(Radius.circular(50.0)),
                    border: Border.all(
                      color: Colors.black),

                    ),
                  ),

                const SizedBox(
                  width: 5,
                ),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: index1 ==0 ? Colors.black : Colors.transparent,
                    borderRadius: const BorderRadius.all(Radius.circular(50.0)),
                    border: Border.all(
                      color: Colors.black,

                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: index1 ==0 ? Colors.black : Colors.transparent,
                    borderRadius: const BorderRadius.all(Radius.circular(50.0)),
                    border: Border.all(
                      color: Colors.black,

                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              width: 150,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    count ++;
                    prss();
                  });
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue)),
                child: const Text(
                  "متابعة",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
