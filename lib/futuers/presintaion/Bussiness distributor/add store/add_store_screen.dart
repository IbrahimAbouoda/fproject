import 'package:flutter/material.dart';

class AddStore extends StatelessWidget {
  const AddStore({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(children: [
          Text("مرحبا بك في متجر غزة"),
          SizedBox(height: 7,),
          Text("قم بإنشاء متجرك الان"),
       SizedBox(height: 7,),
    
    Container(decoration: BoxDecoration(
      color: Colors.grey,
    ),)
        ],),
      ),
    );
  }
}