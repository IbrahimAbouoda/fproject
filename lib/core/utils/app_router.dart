

import 'package:fproject/futuers/Bussiness%20distributor%5Badmin%5D/notifications/presintation/notifictions.dart';
import 'package:fproject/futuers/Bussiness%20distributor%5Badmin%5D/profile/presintation/views/edit_profile.dart';
import 'package:fproject/futuers/Bussiness%20distributor%5Badmin%5D/profile/presintation/views/myProfile.dart';
import 'package:fproject/futuers/defineing/presintation/define1_screen.dart';
import 'package:go_router/go_router.dart';

import '../../futuers/Bussiness distributor[admin]/add products/add_produc_screen2.dart';
import '../../futuers/Bussiness distributor[admin]/add products/add_product_screen1.dart';
import '../../futuers/Bussiness distributor[admin]/add store/add_store_screen.dart';
import '../../futuers/Bussiness distributor[admin]/home/presintation/views/home_distrbute_screen.dart';
import '../../futuers/forgetPassword/presintation/views/forget_pass_screen.dart';
import '../../futuers/home/presintation/views/home_screen.dart';
import '../../futuers/joint/changePassword/presintation/views/change_pass_screen.dart';
import '../../futuers/joint/login/presintation/views/login_screen.dart';
import '../../futuers/signUp/presintation/views/signUp_screen.dart';
import '../../futuers/splash.dart';

abstract class AppRouter {
  static final GoRouter router = GoRouter(routes: <RouteBase>[
    GoRoute(
        path: '/',
        builder: (context, state) {
          return const NotifictionsApp();
        }),

    GoRoute(
        path: '/login',
        builder: (context, state) {
          return const Login();
        }),
    GoRoute(
        path: '/define',
        builder: (context, state) {
          return Defin1();
        }),
    GoRoute(
        path: '/signUp',
        builder: (context, state) {
          return const SignUp();
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
        }),
    GoRoute(
        path: '/home',
        builder: (context, state) {
          return const HomeScreen();
        }),

    //----------------------------------

    GoRoute(
        path: '/AddStore',
        builder: (context, state) {
          return const AddStore();
        }),
    GoRoute(
        path: '/homeDist',
        builder: (context, state) {
          return const HomeDist();
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
  ]);
}
