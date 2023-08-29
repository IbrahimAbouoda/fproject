import 'package:flutter/material.dart';


import '../../../../../components/general_widgets.dart';
import '../../../../../components/widgets/general_widgets/buttonApp.dart';
import '../../../../core/utils/app_images.dart';
import '../widgets/listTil.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 219, 223, 220),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 70,
                      child: Image.asset(Assets.imagesLogin),
                    ),
                  ],
                ),
                const Text("محمود أحمد",
                    style: TextStyle(
                      fontSize: 20,
                    )),
                const SizedBox(
                  height: 15,
                ),
                CustomButton(
                  text: "تعديل",
                  onPressed: () {},
                  color: const Color.fromARGB(255, 34, 51, 74),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  color: Colors.black,
                ),
                Column(
                  children: [
                    ListTileProfiles(
                        onTap: () {
                          setState(() {});
                        },
                        iconData: Icons.settings,
                        titel: "الاعدادات"),
                    ListTileProfiles(
                        onTap: () {},
                        iconData: Icons.person,
                        titel: "الاصدقاء"),
                    ListTileProfiles(
                        onTap: () {},
                        iconData: Icons.security,
                        titel: "الشروط والاحكام"),
                    ListTileProfiles(
                        onTap: () {}, iconData: Icons.share, titel: "مشاركة"),
                    ListTileProfiles(
                        onTap: () {},
                        iconData: Icons.info_outlined,
                        titel: "حول التطبيق"),
                    ListTileProfiles(
                        onTap: () {},
                        iconData: Icons.outbox,
                        titel: "تسجيل خروج"),
                  ],
                ),
                 Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ButtonAppBar1(
              
      
              onTapHome: () => Navigator.pushNamed(context, "/homeAdmin"),
            ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
