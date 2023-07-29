import 'package:fproject/futuers/presintaion/Bussiness%20distributor%5Badmin%5D/add%20products/add_produc_screen2.dart';
import 'package:fproject/futuers/presintaion/Bussiness%20distributor%5Badmin%5D/add%20store/add_store_screen.dart';
import 'package:fproject/futuers/presintaion/changePassword/change_pass_screen.dart';
import 'package:fproject/futuers/presintaion/Business%20shop%5Buser%5D/home/home_screen.dart';
import 'package:fproject/futuers/presintaion/splash.dart';
import 'package:go_router/go_router.dart';

import '../../futuers/presintaion/Bussiness distributor[admin]/add products/add_product_screen1.dart';
import '../../futuers/presintaion/Bussiness distributor[admin]/home/home_distrbute_screen.dart';
import '../../futuers/presintaion/forgetPassword/forget_pass_screen.dart';
import '../../futuers/presintaion/login/login_screen.dart';
import '../../futuers/presintaion/signUp/signUp_screen.dart';

abstract class AppRouter {

  static final GoRouter router = GoRouter(routes: <RouteBase>[
    GoRoute(
        path: '/',
        builder: ( context,  state) {
          return const Spalah();
        }),GoRoute(
        path: '/',
        builder: ( context,  state) {
          return const Spalah();
        }),GoRoute(
        path: '/login',
        builder: ( context,  state) {
          return const Login();
        }),GoRoute(
        path: '/signUp',
        builder: ( context,  state) {
          return const SignUp();
        }),GoRoute(
        path: '/changePass',
        builder: ( context,  state) {
          return const ChangePass();
        }),GoRoute(
        path: '/forget',
        builder: ( context,  state) {
          return const Forget();
        }),GoRoute(
        path: '/home',
        builder: ( context,  state) {
          return const HomeScreen();
        }),


    //----------------------------------

    GoRoute(
        path: '/AddStore',
        builder: ( context,  state) {
          return const AddStore();
        })
    ,GoRoute(
        path: '/homeDist',
        builder: ( context,  state) {
          return const HomeDist();
        }),GoRoute(
        path: '/AddProduct1',
        builder: ( context,  state) {
          return const AddProduct1();
        }),GoRoute(
        path: '/AddProduct2',
        builder: ( context,  state) {
          return const AddProduct2();
        }),
  ]);
}