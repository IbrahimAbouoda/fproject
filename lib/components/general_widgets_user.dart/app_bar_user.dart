import 'package:flutter/material.dart';

class AppBarUserPages extends StatelessWidget {
  const AppBarUserPages({
    super.key,
    this.onPressed, this.onPressed_serch,
  });
  final Function()? onPressed;
  final Function()? onPressed_serch;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      leading: IconButton(
        icon: const Icon(Icons.list_sharp),
        onPressed: onPressed,
      ),
      title: Expanded(
        child: SizedBox(
          width: 318,
          height: 40,
          child: TextFormField(
            decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search_rounded),
                  onPressed: onPressed_serch,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications_none_outlined),
          onPressed: () {
            Navigator.pushNamed(context, "/notofications");
          },
        )
      ],
    );
  }
}
