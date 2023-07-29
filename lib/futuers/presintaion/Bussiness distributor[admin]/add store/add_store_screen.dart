import 'package:flutter/material.dart';
import 'package:fproject/core/utils/general_style.dart';

import '../../widgets.dart';

class AddStore extends StatelessWidget {
  const AddStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
       Padding(
         padding: const EdgeInsets.only(top: 40,bottom: 20,right: 10,left: 40),
         child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "مرحبا بك في متجر غزة",
                style: GeneralStyle.tiltelStyle,
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                "قم بإنشاء متجرك الان",
                style: GeneralStyle.tiltelStyle,
              ),
              SizedBox(
                height: 7,
              ),
              Container(
                alignment: Alignment.center,
                child: Text("صورة",textAlign:TextAlign.center,),
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffF3F3F3),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                padding: EdgeInsets.only(right: 10),
                alignment: Alignment.centerRight,
                child: Text("اسم المتجر",textAlign: TextAlign.right,),
                width: 300,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffF3F3F3),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.topRight,
                child: Text("الوصف"),
                width: 300,
                height: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffF3F3F3),
                ),
              ),
              SizedBox(height: 15,),
              CustomButton(text: "دخول",)
            ],
          ),
       ),

    );
  }
}
