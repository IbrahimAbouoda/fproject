import 'package:flutter/material.dart';

import '../widgets.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController pass = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(flex: 1, child: Image.asset("assets/images/login.png")),
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    TextFormField(
                      controller: email,
                      decoration: InputDecoration(
                        prefix: Icon(Icons.email_outlined, size: 20),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white10)),
                        hintText: "البريد الاكتروني",
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: pass,
                      decoration: InputDecoration(
                        prefix: Icon(Icons.email_outlined, size: 20),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white10)),
                        hintText: "كلمة المرور",
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: ListTile(
                              leading:
                                  Checkbox(value: true, onChanged: (val) {}),
                              trailing: Text("Rememper Her"),
                            ),
                          ),
                          TextButton(
                            child: Text("ForgetPassword?"),
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    CustomButton(
                      text: "متابعة",
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("سجل الان?"), Text("عضو جديد")],
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
