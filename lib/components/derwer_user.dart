import 'package:flutter/material.dart';
import 'package:fproject/core/utils/constant.dart';
import 'package:go_router/go_router.dart';

import '../core/utils/app_images.dart';

class DrewerUser extends StatelessWidget {
  const DrewerUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      const DrawerHeader(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: ConstantStayles.kPrimColor,
        ),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(Assets.mans),
            ),
            Text(
              'Ibrahim',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
            Text(
              'ibrahim@gmail.com',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ]),
        ),
      ),
      const SizedBox(height: 10),
      const SizedBox(
        height: 20,
      ),
      ListTile(
        leading: const Icon(Icons.home),
        title: const Text('الرئيسية'),
        onTap: () {
          // Update the UI to refresh
          Navigator.pushNamed(context, "/homeUser");
        },
      ),
      ListTile(
        leading: const Icon(Icons.person_search_rounded),
        title: const Text('التجار'),
        onTap: () {
          // Perform logout functionality
            Navigator.pushNamed(context, "/showAdmins");
        },
      ),
      ListTile(
        leading: const Icon(Icons.chat_rounded),
        title: const Text('مراسلة'),
        onTap: () {
          // Perform logout functionality
            Navigator.pushNamed(context, "/chats");
        },
      ),
      ListTile(
        leading: const Icon(Icons.shopping_cart_sharp),
        title: const Text('سلة المشتريات'),
        onTap: () {
          // Perform logout functionality
            Navigator.pushNamed(context, "/carPay");
        },
      ),
      ListTile(
        leading: const Icon(Icons.logout),
        title: const Text('تسجيل خروج'),
        onTap: () {
          // Perform logout functionality
             Navigator.pushNamed(context, "/login_signUp");
        },
      ),
    ]));
  }
}
