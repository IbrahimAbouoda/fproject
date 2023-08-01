import 'package:flutter/material.dart';
import 'package:fproject/core/utils/app_router.dart';
import 'package:fproject/core/utils/constant.dart';
import 'package:fproject/futuers/home/domin/entitis/product_entity.dart';
import 'package:hive/hive.dart';

void main() async {
  runApp(const MyApp());

  Hive.registerAdapter(ProductEntityAdapter());
  await Hive.openBox(Constant.kFeatuerdBox);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
