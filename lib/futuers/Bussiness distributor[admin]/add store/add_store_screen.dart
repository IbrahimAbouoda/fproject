import 'package:flutter/material.dart';
import 'package:fproject/core/utils/constant.dart';
import 'package:fproject/core/utils/general_style.dart';
import 'package:fproject/futuers/Bussiness%20distributor%5Badmin%5D/add%20products/presintation/widgets/box_list_image.dart';
import 'package:fproject/futuers/Bussiness%20distributor%5Badmin%5D/add%20products/presintation/widgets/text_fiald.dart';
import 'package:go_router/go_router.dart';

import '../../general_widgets.dart';

class AddStore extends StatelessWidget {
  const AddStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 40, bottom: 20, right: 10, left: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "مرحبا بك في متجر غزة",
              style: GeneralStyle.tiltelStyle,
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              "قم بإنشاء متجرك الان",
              style: GeneralStyle.tiltelStyle,
            ),
            const SizedBox(
              height: 7,
            ),
            const BoxImageCont(hightBox: 150, widthBox: 150, radis: 30),
            const SizedBox(
              height: 15,
            ),
            const TextFormProduct(maxline: 2, label: "اسم المتجر", width: 300),
            const SizedBox(
              height: 15,
            ),
            const TextFormProduct(maxline: 8, label: "الوصف", width: 300),
            const SizedBox(
              height: 15,
            ),
            CustomButton(
              text: "دخول",
              onPressed: () {
                context.go('/homeAdmin');
              },
              color: ConstantStayles.kPrimColor,
            )
          ],
        ),
      ),
    );
  }
}
