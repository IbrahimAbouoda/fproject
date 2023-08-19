import 'package:flutter/cupertino.dart';

import '../../components/derwer_user.dart';
import '../../components/drewerAdmin.dart';
import '../../fetures/Business shop[user]/home/presintation/views/homeUser.dart';
import '../../fetures/Business shop[user]/home/presintation/views/home_category.dart';
import '../../fetures/Business shop[user]/list distributs names/show_admins.dart';
import '../../fetures/Business shop[user]/products/details/presintion/views/car_pay_product.dart';
import '../../fetures/Business shop[user]/products/details/presintion/views/details_product.dart';
import '../../fetures/Bussiness distributor[admin]/The user done/list_show_user.dart';
import '../../fetures/Bussiness distributor[admin]/add products/presintation/views/add_produc_screen2.dart';
import '../../fetures/Bussiness distributor[admin]/add products/presintation/views/add_product_screen1.dart';
import '../../fetures/Bussiness distributor[admin]/add store/add_store_screen.dart';
import '../../fetures/Bussiness distributor[admin]/chats/list chating/presintation/views/chats.dart';
import '../../fetures/Bussiness distributor[admin]/chats/messaging/presintation/views/messaging.dart';
import '../../fetures/Bussiness distributor[admin]/home/presintation/views/home_distrbute_screen.dart';
import '../../fetures/Bussiness distributor[admin]/notifications/presintation/notifictions.dart';
import '../../fetures/Bussiness distributor[admin]/profile/presintation/views/edit_profile.dart';
import '../../fetures/Bussiness distributor[admin]/profile/presintation/views/myProfile.dart';
import '../../fetures/Bussiness distributor[admin]/requsts user/presintation/view/requst_list.dart';
import '../../fetures/changePassword/presintation/views/change_pass_screen.dart';
import '../../fetures/defineing/presintation/define1_screen.dart';
import '../../fetures/forgetPassword/presintation/views/forget_pass_screen.dart';
import '../../fetures/splash.dart';
import '../../service/Auth/login/login_or_register.dart';
import '../../service/Auth/login/success.dart';

Map<String, Widget Function(BuildContext)> routes = {
  "/": (context) => const Spalah(),
  "/homeAdmin": (context) => const HomeAdmin(),
  "/AddStore": (context) => const AddStore(),
  "/AddProduct1": (context) => const AddProduct1(),
  "/AddProduct2": (context) => const AddProduct2(),
  "/editProfile": (context) => const EditProfile(),
  "/myProfile": (context) => const MyProfil(),
  "/notofications": (context) => const NotifictionsApp(),
  "/chats": (context) => const Chats(),
  "/messageing": (context) => const ChatScreen(),
  "/menuAdmin": (context) => const DrwerAdmin(),
  "/requstUser": (context) => const ListRequst(),
  "/success": (context) => const SuccessLogin(),
  //-----------------------------------------
  "/login_signUp": (context) => const LoginAdminScreen(),
  "/homeUser": (context) => const HomeUser(),
  "/homeCategory": (context) => const HomeCategory(),
  "/showAdmins": (context) => const ShowAdmins(),
  "/menuUser": (context) => const DrewerUser(),
  "/details_product": (context) => const DetailsProduct(),
  "/carPay": (context) => const CarPayProduct(),
  "/showUser": (context) => const ShowUser(),
  "/define": (context) => Defin1(),
  "/changePass": (context) => const ChangePass(),
  "/forget": (context) => const Forget()
};
