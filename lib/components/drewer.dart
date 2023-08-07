import 'package:flutter/material.dart';
import 'package:fproject/core/utils/app_images.dart';
import 'package:go_router/go_router.dart';

class Drawer extends StatelessWidget {
  const Drawer({super.key});

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
            backgroundImage: AssetImage(Assets.imagesLogo),
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
        title: const Text('Home'),
        onTap: () {
          // Update the UI to refresh
          context.go("/homeAdmin");
        },
      ),
      ListTile(
        leading: const Icon(Icons.settings),
        title: const Text('profile'),
        onTap: () {
          context.go("/myProfile");
        },
      ),
      ListTile(
        leading: const Icon(Icons.help),
        title: const Text('login'),
        onTap: () {
          context.go("/login");
          // Perform navigation to Help screen
        },
      ),
      ListTile(
        leading: const Icon(Icons.logout),
        title: const Text('Logout'),
        onTap: () {
          // Perform logout functionality
          Navigator.pop(context);
        },
      ),
    ]));
  }
}
