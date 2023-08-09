import 'package:flutter/material.dart';
import 'package:fproject/core/utils/constant.dart';
import 'package:fproject/futuers/Bussiness%20distributor%5Badmin%5D/add%20products/presintation/widgets/text_fiald.dart';
import 'package:fproject/futuers/Bussiness%20distributor%5Badmin%5D/general_widgets/app_bar1.dart';
import 'package:fproject/futuers/general_widgets.dart';
import 'package:go_router/go_router.dart';

class AddProduct2 extends StatelessWidget {
  const AddProduct2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const TopBarApp1(titel: "اضافة منتج"),
                const SizedBox(
                  height: 70,
                ),
                const TextFormProduct(
                    maxline: 2, width: 400, label: "الشركة المصنعة"),
                const SizedBox(
                  height: 15,
                ),
                const TextFormProduct(maxline: 2, width: 400, label: " اللون"),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: TextFormProduct(
                            maxline: 2, width: 80, label: " الظهور")),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: TextFormProduct(
                            maxline: 2, width: 80, label: " فئات الظهور")),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: TextFormProduct(
                            maxline: 2, width: 80, label: "السعر")),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: TextFormProduct(
                            maxline: 2, width: 80, label: "  بعد الخصم")),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: TextFormProduct(
                            maxline: 2, width: 80, label: " الكمية")),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: TextFormProduct(
                            maxline: 2, width: 80, label: "  المقاس")),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: TextFormProduct(
                            maxline: 2, width: 80, label: " الخامة")),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: TextFormProduct(
                            maxline: 3, width: 80, label: "  القسم")),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomButton(
                    onPressed: () {
                      context.go("/requst");
                    },
                    text: "متابعة",
                    color: ConstantStayles.kPrimColor)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
