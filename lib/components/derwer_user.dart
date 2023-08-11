import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../core/utils/app_images.dart';

class DrewerUser extends StatelessWidget {
  const DrewerUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      const DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(Assets.mans),
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
          context.go("/");
        },
      ),
      ListTile(
        leading: const Icon(Icons.settings),
        title: const Text('سلة المشتريات'),
        onTap: () {
          context.go("/");
        },
      ),
      ListTile(
        leading: const Icon(Icons.help),
        title: const Text('استفسار'),
        onTap: () {
          context.go("/chats");
          // Perform navigation to Help screen
        },
      ),
      ListTile(
        leading: const Icon(Icons.logout),
        title: const Text('المفضلة'),
        onTap: () {
          // Perform logout functionality
          context.go("/AddProduct1");
        },
      ),
      ListTile(
        leading: const Icon(Icons.logout),
        title: const Text('Logout'),
        onTap: () {
          // Perform logout functionality
          context.go("/login_signUp");
        },
      ),
    ]));
  }
}
