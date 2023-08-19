import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import 'package:fproject/core/utils/constant.dart';
import 'package:fproject/service/outh_service.dart';
import 'package:fproject/service/shared_preferences/shared_preferences.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'core/utils/routers.dart';
import 'firebase_options.dart';
import 'fetures/Bussiness distributor[admin]/home/domin/entitis/product_entity.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase first
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await SharedPrefController.init();

  // Now, you can set up other initializations
  final appDocumentDirectory = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  Hive.registerAdapter(ProductEntityAdapter());
  await Hive.openBox(ConstantStayles.kFeatuerdBox);

  FirebaseMessaging.instance.onTokenRefresh.listen((newToken) {
    SharedPrefController.saveToken(newToken);

    print('event onTokenRefresh is: $newToken');
  });

  runApp(ChangeNotifierProvider(
    create: (context) => AuthService(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        
      ),
      initialRoute: "/homeAdmin",
     routes: routes,
    );
  }
}
