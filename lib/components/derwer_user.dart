import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../core/utils/app_images.dart';
import '../core/utils/constant.dart';
import '../providers/users_provider.dart';

class DrewerUser extends StatelessWidget {
  const DrewerUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: ConstantStayles.kPrimColor,
            ), accountName: Text("name"), accountEmail: Text("email"),
           
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('الرئيسية'),
            onTap: () {
              Navigator.pushNamed(context, "/homeUser");
            },
          ),
          // ... Other ListTiles ...
        ],
      ),
    );
  }
}

//
//           ListTile(
//             leading: const Icon(Icons.person_search_rounded),
//             title: const Text('التجار'),
//             onTap: () {
//               // Perform logout functionality
//               Navigator.pushNamed(context, "/showAdmins");
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.chat_rounded),
//             title: const Text('مراسلة'),
//             onTap: () {
//               // Perform logout functionality
//               Navigator.pushNamed(context, "/chats");
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.shopping_cart_sharp),
//             title: const Text('سلة المشتريات'),
//             onTap: () {
//               // Perform logout functionality
//               Navigator.pushNamed(context, "/carPay");
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.logout),
//             title: const Text('تسجيل خروج'),
//             onTap: () {
//               // Perform logout functionality
//               Navigator.pushNamed(context, "/login_signUp");
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
//
