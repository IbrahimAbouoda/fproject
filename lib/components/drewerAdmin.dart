import 'package:flutter/material.dart';

import '../core/utils/app_images.dart';
import '../core/utils/constant.dart';

class DrwerAdmin extends StatelessWidget {
  const DrwerAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      const DrawerHeader(
        decoration: BoxDecoration(
          color: ConstantStayles.kPrimColor,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(Assets.imagesLogo),
          ),
          Text(
            "Admin",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "Admin@gmail.com",
            style: TextStyle(color: Colors.white),
          ),
        ]),
      ),
      const SizedBox(height: 10),
      const Text(
        'Ibrahim',
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
      const Text(
        'ibrahim@gmail.com',
        style: TextStyle(
          fontSize: 14,
          color: Colors.white,
        ),
      ),
      ListTile(
        leading: const Icon(Icons.home),
        title: const Text('الرئيسية'),
        onTap: () {
          // Update the UI to refresh
            Navigator.pushNamed(context, "/homeAdmin");
        },
      ),
      ListTile(
        leading: const Icon(Icons.person_search_rounded),
        title: const Text('الزبون'),
        onTap: () {
          // Update the UI to refresh
             Navigator.pushNamed(context, "/showAdmins");
        },
      ),
      ListTile(
        leading: const Icon(Icons.man_4_outlined),
        title: const Text('صفحتي'),
        onTap: () {
            Navigator.pushNamed(context, "/myProfile");
        },
      ),
      ListTile(
        leading: const Icon(Icons.redo_sharp),
        title: const Text('طلبات المستخدمين'),
        onTap: () {
             Navigator.pushNamed(context, "/requstUser");
        },
      ),
      ListTile(
        leading: const Icon(Icons.redo_sharp),
        title: const Text('المشتريين'),
        onTap: () {
             Navigator.pushNamed(context, "/showUser");
        },
      ),
      ListTile(
        leading: const Icon(Icons.store),
        title: const Text('اضافة متجر '),
        onTap: () {
             Navigator.pushNamed(context, "/AddStore");
          // Perform navigation to Help screen
        },
      ),
      ListTile(
        leading: const Icon(Icons.add_shopping_cart_outlined),
        title: const Text(' اضافة منتج'),
        onTap: () {
          // Perform logout functionality
             Navigator.pushNamed(context, "/AddProduct");
        },
      ),
      ListTile(
        leading: const Icon(Icons.logout),
        title: const Text('Logout'),
        onTap: () {
          // Perform logout functionality
             Navigator.pushNamed(context, "/login_signUp");
        },
      ),
    ]));
  }
}
