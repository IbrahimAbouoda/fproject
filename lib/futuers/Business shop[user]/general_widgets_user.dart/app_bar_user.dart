
import 'package:flutter/material.dart';

class AppBarUserPages extends StatelessWidget implements PreferredSizeWidget {
  const AppBarUserPages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      title: SizedBox(
        height: 40,
        child: TextFormField(
          decoration: InputDecoration(
              suffixIcon: IconButton(
                icon: const Icon(Icons.search_rounded),
                onPressed: () {},
              ),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications_active),
          onPressed: () => print("open cart"),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}
