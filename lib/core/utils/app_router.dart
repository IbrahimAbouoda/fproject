

import 'package:go_router/go_router.dart';

import '../../futuers/Bussiness distributor[admin]/add products/add_produc_screen2.dart';
import '../../futuers/Bussiness distributor[admin]/add products/add_product_screen1.dart';
import '../../futuers/Bussiness distributor[admin]/add store/add_store_screen.dart';
import '../../futuers/Bussiness distributor[admin]/home/presintation/views/home_distrbute_screen.dart';
import '../../futuers/forgetPassword/presintation/views/forget_pass_screen.dart';
import '../../futuers/home/presintation/views/home_screen.dart';
import '../../futuers/joint/changePassword/presintation/views/change_pass_screen.dart';
import '../../futuers/joint/login/presintation/views/login_screen.dart';
import '../../futuers/joint/signUp/presintation/views/signUp_screen.dart';
import '../../futuers/splash.dart';

abstract class AppRouter {
  static final GoRouter router = GoRouter(routes: <RouteBase>[
    GoRoute(
        path: '/',
        builder: (context, state) {
          return const Spalah();
        }),
    GoRoute(
        path: '/',
        builder: (context, state) {
          return const Spalah();
        }),
    GoRoute(
        path: '/login',
        builder: (context, state) {
          return const Login();
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
  ]);
}
