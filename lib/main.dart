
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:fproject/components/general_provider.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'core/shared_preferences/shared_preferences.dart';
import 'core/utils/constant.dart';
import 'core/utils/routers.dart';
import 'firebase_options.dart';
import 'providers/products_provider.dart';
import 'service/backend/product_service.dart';


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
 
  await Hive.openBox(ConstantStayles.kFeatuerdBox);

  FirebaseMessaging.instance.onTokenRefresh.listen((newToken) {
    SharedPrefController.saveToken(newToken);

  });



  runApp(MultiProvider(providers: [
  ChangeNotifierProvider<ProductProvider>(create: (context) => ProductProvider()),
  ChangeNotifierProvider<ProductService>(create: (context) => ProductService()),
  ChangeNotifierProvider<GeneralProvider>(
  create: (context) => GeneralProvider()),
  // ChangeNotifierProvider<CategoriesProvider>(
  // create: (context) => CategoriesProvider()),
  // ChangeNotifierProvider<MailsByTagsProvider>(
  // create: (context) => MailsByTagsProvider()),
  ],child: const MyApp()));
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
      initialRoute: "/",
      routes: routes,
    );
  }
}
