import 'package:flutter/material.dart';
import 'package:fproject/fetures/Bussiness%20distributor%5Badmin%5D/general_widgets/buttonApp.dart';
import 'package:fproject/fetures/general_widgets.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_images.dart';
import '../../../general_widgets/app_bar1.dart';
import '../widgets/fild_box.dart';

class MyProfil extends StatelessWidget {
  const MyProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 251, 252, 251),
        child: Padding(
          padding: const EdgeInsets.all(1),
          child: Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const TopBarApp1(
                          titel: "الملف الشخصي",
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Stack(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.blue,
                              radius: 70,
                              child: Image.asset(Assets.imagesLogin),
                            ),
                          ],
                        ),
                        const Text("محمود أحمد",
                            style: TextStyle(
                              fontSize: 20,
                            )),
                        const SizedBox(
                          height: 15,
                        ),
                        const FieldBox(
                          line: 1,
                          txt: "الاسم",
                          type: TextInputType.name,
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        const FieldBox(
                          line: 1,
                          txt: "المهنة",
                          type: TextInputType.name,
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        const FieldBox(
                          line: 2,
                          txt: "الوصف",
                          type: TextInputType.name,
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        const FieldBox(
                          line: 1,
                          txt: "المتجر",
                          type: TextInputType.name,
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        const FieldBox(
                          line: 1,
                          txt: "وقت الاضافة",
                          type: TextInputType.name,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const CustomButton(
                            text: "حفظ", color: Color(0xff27374D)),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ButtonAppBar1(
                                  onTapHome: () => Navigator.pushNamed(
                                      context, "/homeAdmin")),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
