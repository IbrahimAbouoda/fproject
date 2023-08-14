
import 'package:flutter/material.dart';
import 'package:fproject/core/utils/app_images.dart';
import 'package:fproject/core/utils/constant.dart';
import 'package:fproject/service/Auth/login/widgets/animated_cross.dart';
import 'package:fproject/service/Auth/login/widgets/auth_text_f.dart';
import 'package:fproject/service/Auth/login/widgets/toggle_b.dart';
import 'package:fproject/service/Auth/models/user.dart';
import 'package:fproject/service/outh_service.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../core/firebase/auth.dart';
import '../../shared_preferences/shared_preferences.dart';

class LoginAdminScreen extends StatefulWidget {
  static const id = '/authScreen';

  const LoginAdminScreen({Key? key}) : super(key: key);

  @override
  State<LoginAdminScreen> createState() => _LoginAdminScreenState();
}

class _LoginAdminScreenState extends State<LoginAdminScreen> {


  String switched = 'login';
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfirmationController =
      TextEditingController();
  bool isAdmin = false;
  bool showProgress = false;

  @override
  void dispose() {
    _emailController;
    _nameController;
    _passwordController;
    super.dispose();
  }

  bool showSpinner = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AuthService(),
      child: Consumer<AuthService>(
        builder: (context, auth, child) => Scaffold(
          backgroundColor: const Color(0xfffffbf8),
          body: showProgress
              ? const Center(child: CircularProgressIndicator())
              : Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      top: -200,
                      child: Container(
                        width: 500,
                        height: 500,
                        decoration: const BoxDecoration(
                          color: ConstantStayles.kPrimColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    //  const BackgroundCurve(),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 32.0, top: 32.0, right: 32.0),
                      child: SingleChildScrollView(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                child: Image.asset(
                                  Assets.imagesLogo,
                                  width: 200,
                                ),
                              ),
                              Center(
                                  child: AnimatedContainer(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                duration: const Duration(milliseconds: 400),
                                height: switched == 'login' ? 410 : 515,
                                decoration: BoxDecoration(
                                  color: const Color(0xfffcf7ee),
                                  borderRadius: BorderRadius.circular(36),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 10.0,
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16, horizontal: 24),
                                  child: Form(
                                    key: _formKey,
                                    child: Expanded(
                                      child: listViewForm(context),
                                    ),
                                  ),
                                ),
                              )),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
        ),
      ),
    );
  }

  ListView listViewForm(BuildContext context) {
    return ListView(
      // mainAxisSize: MainAxisSize.min,
      children: [
        ToggleButton(
          width: 250.0,
          height: 40.0,
          toggleBackgroundColor: const Color(0xfffcf7ee),
          toggleBorderColor: (Colors.grey[350])!,
          toggleColor: ConstantStayles.kPrimColor,
          activeTextColor: const Color(0xfffcf7ee),
          inactiveTextColor: ConstantStayles.kPrimColor,
          leftDescription: 'Login',
          rightDescription: 'Register',
          onLeftToggleActive: () {
            setState(() {
              switched = 'login';
            });
          },
          onRightToggleActive: () {
            setState(() {
              switched = 'register';
            });
          },
        ),
        const SizedBox(
          height: 12,
        ),
        AnimatedCrossFadeBox(
          hint: "Name",
          swith: "login",
          nameController: _nameController,
          switched: switched,
        ),
        AuthTextField(
          hint: 'Enter email',
          controller: _emailController,
        ),
        const SizedBox(
          height: 8,
        ),
        AuthTextField(
          hint: 'Enter password',
          controller: _passwordController,
        ),
        AnimatedCrossFadeBox(
          nameController: _passwordConfirmationController,
          switched: switched,
          hint: "Confirm password",
          swith: "login",
        ),
        switched == 'login'
            ? const SizedBox()
            : Row(
                children: [
                  Checkbox(
                    value: isAdmin,
                    onChanged: (v) {
                      setState(() {
                        isAdmin = !isAdmin;
                      });
                    },
                    activeColor: ConstantStayles.kPrimColor,
                  ),
                  const Text("Are you admin ?")
                ],
              ),
        const SizedBox(
          height: 24,
        ),
        materialButton(context),
      ],
    );
  }

  Material materialButton(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(24),
      color: ConstantStayles.kPrimColor,
      child: InkWell(
        borderRadius: BorderRadius.circular(24),
        onTap: switched == 'login'
            ? () async {
                setState(() {
                  showProgress = true;
                });
                if (mounted) {
                  if (_emailController.text.toString().trim().isNotEmpty &&
                      _passwordController.text.toString().trim().isNotEmpty) {
                    try {
                      final userLogin =
                          await FbAuthentication.loginWithEmailAndPassword(
                        _emailController.text.toString().trim(),
                        _passwordController.text.toString().trim(),
                      );

                      if (userLogin.user != null) {
                        // ignore: use_build_context_synchronously
                        UserModel? user = await FbAuthentication.getUserData(
                            context, _emailController.text.toString().trim());
                        if (user != null) {
                          String? myTokenNow = SharedPrefController.getData(
                              key: Keys.token.name);
                          if (myTokenNow != null && user.token != myTokenNow) {
                            await FbAuthentication.updateUserToken(context,
                                _emailController.text.trim(), myTokenNow);
                            user.token = myTokenNow;
                          }
                          await SharedPrefController.setUserData(user);

                          if (user.role == UserRole.admin.name) {
                            context.go("/homeAdmin");
                          } else {
                            context.go("/homeUser");
                          }
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: Text(
                                    "login user ${userLogin.user!.email.toString().trim()}")),
                          );
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content: Text(userLogin.credential.toString())),
                        );
                      }
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(e.toString())),
                      );
                    }
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Email or password null")),
                    );
                  }
                }
                setState(() {
                  showProgress = false;
                });
              }
            : () async {
                setState(() {
                  showProgress = true;
                });
                if (_formKey.currentState!.validate()) {
                  try {
                    FbAuthentication.signUpWithEmailAndPassword(
                      _emailController.text.toString().trim(),
                      _passwordController.text.toString().trim(),
                    );

                    String? myTokenNow =
                        SharedPrefController.getData(key: Keys.token.name);
                    UserModel user = UserModel(
                      imageUrl: null,
                      name: _nameController.text.trim(),
                      email: _emailController.text.trim(),
                      role: isAdmin ? UserRole.admin.name : UserRole.user.name,
                      token: myTokenNow,
                    );
                    bool isCreated =
                        await FbAuthentication.addNewUser(context, user);
                    if (isCreated && mounted) {
                      setState(() {
                        showProgress = false;
                      });
                      await SharedPrefController.setUserData(user);
                      if (user.role == UserRole.admin.name) {
                        context.go("/HomeAdmin");
                      } else {
                        context.go("/HomeUser");
                      }
                    }
                  } catch (error) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(error.toString())),
                    );
                  }
                }
                setState(() {
                  showProgress = false;
                });
              },
        child: SizedBox(
          width: 260,
          height: 50,
          child: Center(
            child: Text(
              switched.toUpperCase(),
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
