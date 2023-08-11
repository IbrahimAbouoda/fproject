import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fproject/core/utils/app_images.dart';
import 'package:fproject/core/utils/constant.dart';
import 'package:fproject/service/Auth/login/widgets/animated_cross.dart';
import 'package:fproject/service/Auth/login/widgets/auth_text_f.dart';
import 'package:fproject/service/Auth/login/widgets/toggle_b.dart';
import 'package:fproject/service/outh_service.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  static const id = '/authScreen';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Future<void> _signUp() async {
    try {
      final String email = _emailController.text.trim();
      final String password = _passwordController.text;

      final newUser = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (newUser != null) {
        // ignore: use_build_context_synchronously
        context.go("/success");
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Regisiration user ${newUser.user!.email}")));
      } else {
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(newUser.credential.toString())));
      }
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
    }

    //Implement registration functionality.
  }

  String switched = 'login';
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfirmationController =
      TextEditingController();

  @override
  void dispose() {
    _emailController;
    _nameController;
    _passwordController;
    super.dispose();
  }

  bool showSpinner = false;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AuthService(),
      child: Consumer<AuthService>(
        builder: (context, auth, child) => Scaffold(
          backgroundColor: const Color(0xfffffbf8),
          body: Stack(
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
                padding:
                    const EdgeInsets.only(left: 32.0, top: 32.0, right: 32.0),
                child: SingleChildScrollView(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 36),
                          child: Image.asset(
                            Assets.imagesLogo,
                            width: 200,
                          ),
                        ),
                        Center(
                            child: AnimatedContainer(
                          margin: const EdgeInsets.symmetric(vertical: 8.0),
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
                                vertical: 30, horizontal: 24),
                            child: Form(
                              key: _formKey,
                              child: Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ToggleButton(
                                      width: 250.0,
                                      height: 40.0,
                                      toggleBackgroundColor:
                                          const Color(0xfffcf7ee),
                                      toggleBorderColor: (Colors.grey[350])!,
                                      toggleColor: ConstantStayles.kPrimColor,
                                      activeTextColor: const Color(0xfffcf7ee),
                                      inactiveTextColor:
                                          ConstantStayles.kPrimColor,
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
                                        swith: "Login",
                                        nameController: _nameController,
                                        switched: switched),
                                    AuthTextField(
                                        hint: 'Enter email or username',
                                        controller: _emailController),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    AuthTextField(
                                        hint: 'Enter password',
                                        controller: _passwordController),
                                    AnimatedCrossFadeBox(
                                        nameController:
                                            _passwordConfirmationController,
                                        switched: switched,
                                        hint: "Confirm password",
                                        swith: "Login"),
                                    const SizedBox(
                                      height: 24,
                                    ),
                                    Material(
                                      borderRadius: BorderRadius.circular(24),
                                      color: ConstantStayles.kPrimColor,
                                      child: InkWell(
                                        borderRadius: BorderRadius.circular(24),
                                        onTap: switched == 'login'
                                            ? () async {
                                                if (mounted) {
                                                  if (_formKey.currentState!
                                                      .validate()) {
                                                    try {
                                                      final newUser = await _auth
                                                          .signInWithEmailAndPassword(
                                                              email:
                                                                  _emailController
                                                                      .text,
                                                              password:
                                                                  _passwordController
                                                                      .text);
                                                      // ignore: unnecessary_null_comparison
                                                      if (newUser != null) {
                                                        // ignore: use_build_context_synchronously

                                                        // ignore: use_build_context_synchronously
                                                        context
                                                            .go("/homeAdmin");
                                                        // ignore: use_build_context_synchronously
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(SnackBar(
                                                                content: Text(
                                                                    "login user ${newUser.user!.email}")));
                                                      } else {
                                                        // ignore: use_build_context_synchronously

                                                        ScaffoldMessenger(
                                                            child: Text(newUser
                                                                .credential
                                                                .toString()));
                                                      }
                                                    } catch (e) {
                                                      ScaffoldMessenger(
                                                          child: Text(
                                                              e.toString()));
                                                    }
                                                  } else {
                                                    print(
                                                        'email or password null');
                                                  }
                                                  //Implement registration functionality.
                                                }
                                                //Implement login functionality.
                                              }
                                            : () async {
                                                if (_formKey.currentState!
                                                    .validate()) {
                                                  _signUp();
                                                }
                                              },
                                        child: SizedBox(
                                          width: 260,
                                          height: 50,
                                          child: Center(
                                            child: Text(
                                              switched.toUpperCase(),
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
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
}
