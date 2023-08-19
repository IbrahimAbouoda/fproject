import 'package:flutter/material.dart';
import 'package:fproject/fetures/Bussiness%20distributor%5Badmin%5D/general_widgets/app_bar1.dart';
import 'package:fproject/fetures/Bussiness%20distributor%5Badmin%5D/general_widgets/buttonApp.dart';

class NotifictionsApp extends StatelessWidget {
  const NotifictionsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const TopBarApp1(
              titel: "الاشعارات",
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              flex: 1,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: Text("قام محمد بارسال رسالة اليك"),
                    trailing: Text("1m ago"),
                  );
                },
              ),
            ),
            ButtonAppBar1(
                onTapHome: () => Navigator.pushNamed(context, "/homeUser")),
          ],
        ),
      ),
    );
  }
}
