import 'package:flutter/material.dart';
import 'package:fproject/futuers/presintaion/defineing/define1_screen.dart';
import 'package:fproject/futuers/presintaion/forgetPassword/forget_pass_screen.dart';
import 'package:fproject/futuers/presintaion/login/login_screen.dart';
import 'package:fproject/futuers/presintaion/signUp/signUp_screen.dart';

import 'futuers/presintaion/changePassword/change_pass_screen.dart';
import 'futuers/presintaion/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,


      ),
      home:ChangePass(),
    );
  }
}
