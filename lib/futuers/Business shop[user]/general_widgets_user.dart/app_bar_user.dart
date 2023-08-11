
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppBarUserPages extends StatelessWidget {
  const AppBarUserPages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      leading: IconButton(icon: Icon(Icons.list_sharp),onPressed: (){
        context.go("/menuUser");
      },),
      title:  Expanded(
        child: SizedBox(
          width: 318,
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

      ),
      actions: [IconButton(icon:
      Icon(Icons.notifications_none_outlined),onPressed: (){},)],
    );
  }

}