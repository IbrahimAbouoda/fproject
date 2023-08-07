import 'package:flutter/material.dart';
import 'package:fproject/core/utils/constant.dart';
import 'package:go_router/go_router.dart';
import '../../../../general_widgets.dart';
import '../widgets/box_list_image.dart';
import '../widgets/text_fiald.dart';

class AddProduct1 extends StatefulWidget {
  const AddProduct1({super.key});

  @override
  State<AddProduct1> createState() => _AddProduct1State();
}

class _AddProduct1State extends State<AddProduct1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 40, bottom: 20, right: 10, left: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 7,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BoxImageCont(
                      radis: 15,
                      hightBox: 50,
                      widthBox: 50,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    BoxImageCont(
                      radis: 15,
                      hightBox: 50,
                      widthBox: 50,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    BoxImageCont(
                      radis: 15,
                      hightBox: 50,
                      widthBox: 50,
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                BoxImageCont(radis: 50, hightBox: 200, widthBox: 200),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const TextFormProduct(
              maxline: 1,
              label: "اسم المنتج",
            ),
            const SizedBox(
              height: 15,
            ),
            const TextFormProduct(
              maxline: 3,
              label: "الوصف",
            ),
            const SizedBox(
              height: 50,
            ),
            CustomButton(
              onPressed: () {
                context.go("/AddProduct2");
              },
              text: "متابعة",
              color: ConstantStayles.kPrimColor,
            ),
          ],
        ),
      ),
    );
  }
}
