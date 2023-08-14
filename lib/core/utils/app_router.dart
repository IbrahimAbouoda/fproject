import 'package:fproject/components/derwer_user.dart';
import 'package:fproject/components/drewer.dart';
import 'package:fproject/futuers/Business%20shop%5Buser%5D/home/presintation/views/homeUser.dart';
import 'package:fproject/futuers/Business%20shop%5Buser%5D/products/details/presintion/views/details_product.dart';
import 'package:fproject/futuers/Bussiness%20distributor%5Badmin%5D/add%20products/presintation/views/add_product_screen1.dart';
import 'package:fproject/futuers/Bussiness%20distributor%5Badmin%5D/chats/list%20chating/presintation/views/chats.dart';
import 'package:fproject/futuers/Bussiness%20distributor%5Badmin%5D/chats/messaging/presintation/views/messaging.dart';
import 'package:fproject/futuers/Bussiness%20distributor%5Badmin%5D/notifications/presintation/notifictions.dart';
import 'package:fproject/futuers/Bussiness%20distributor%5Badmin%5D/profile/presintation/views/edit_profile.dart';
import 'package:fproject/futuers/Bussiness%20distributor%5Badmin%5D/profile/presintation/views/myProfile.dart';
import 'package:fproject/futuers/Bussiness%20distributor%5Badmin%5D/requsts%20user/presintation/views/requst_user_screen.dart';
import 'package:fproject/futuers/defineing/presintation/define1_screen.dart';
import 'package:fproject/futuers/splash.dart';
import 'package:go_router/go_router.dart';
import '../../futuers/Business shop[user]/products/details/presintion/views/car_pay_product.dart';
import '../../futuers/Bussiness distributor[admin]/add products/presintation/views/add_produc_screen2.dart';
import '../../futuers/Bussiness distributor[admin]/add store/add_store_screen.dart';
import '../../futuers/Bussiness distributor[admin]/home/presintation/views/home_distrbute_screen.dart';
import '../../futuers/forgetPassword/presintation/views/forget_pass_screen.dart';
import '../../service/Auth/changePassword/presintation/views/change_pass_screen.dart';
import '../../service/Auth/login/login_or_register.dart';
import '../../service/Auth/login/success.dart';

abstract class AppRouter {
  static final GoRouter router = GoRouter(routes: <RouteBase>[
    GoRoute(
        path: '/',
        builder: (context, state) {
          return Spalah();
        }),
    GoRoute(
        path: '/menuUser',
        builder: (context, state) {
          return const DrewerUser();
        }),
    GoRoute(
        path: '/details_product',
        builder: (context, state) {
          return const DetailsProduct();
        }),

    GoRoute(
        path: '/carPay',
        builder: (context, state) {
          return const CarPayProduct();
        }),
    // GoRoute(
    //     path: '/homeUser',
    //     builder: (context, state) {
    //       return  HomeUser();
    //     }),
    GoRoute(
        path: '/define',
        builder: (context, state) {
          return Defin1();
        }),

    GoRoute(
        path: '/changePass',
        builder: (context, state) {
          return const ChangePass();
        }),
    GoRoute(
        path: '/forget',
        builder: (context, state) {
          return const Forget();
        }),GoRoute(
        path: '/HomeUser',
        builder: (context, state) {
          return const HomeUser();
        }),

    //----------------------------------

    GoRoute(
        path: '/HomeAdmin',
        builder: (context, state) {
          return const HomeAdmin();
        }),
    GoRoute(
        path: '/LoginAdmin',
        builder: (context, state) {
          return const LoginAdminScreen();
        }),
    GoRoute(
        path: '/AddStore',
        builder: (context, state) {
          return const AddStore();
        }),
    GoRoute(
        path: '/homeAdmin',
        builder: (context, state) {
          return const HomeAdmin();
        }),
    GoRoute(
        path: '/AddProduct1',
        builder: (context, state) {
          return const AddProduct1();
        }),
    GoRoute(
        path: '/AddProduct2',
        builder: (context, state) {
          return const AddProduct2();
        }),

    GoRoute(
        path: '/editProfile',
        builder: (context, state) {
          return const EditProfile();
        }),
    GoRoute(
        path: '/myProfile',
        builder: (context, state) {
          return const MyProfil();
        }),
    GoRoute(
        path: '/notifications',
        builder: (context, state) {
          return const NotifictionsApp();
        }),
    GoRoute(
        path: '/chats',
        builder: (context, state) {
          return const Chats();
        }),
    GoRoute(
        path: '/messageing',
        builder: (context, state) {
          return const ChatScreen();
        }),
    GoRoute(
        path: '/menuD',
        builder: (context, state) {
          return const Drawer();
        }),
    GoRoute(
        path: '/requst',
        builder: (context, state) {
          return const Requst();
        }),
    GoRoute(
        path: '/success',
        builder: (context, state) {
          return const SuccessLogin();
        }),
    GoRoute(
        path: '/login_signUp',
        builder: (context, state) {
          return const LoginAdminScreen();
        }),
  ]);
}
