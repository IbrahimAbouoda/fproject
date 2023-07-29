import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                flex: 2,
                child: Column(
                  children: [
                    TextFormField(
                      controller: email,
                      decoration: InputDecoration(
                        prefix: Icon(Icons.email_outlined, size: 20),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white10)),
                        hintText: "الاسم",
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
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
                      height: 7,
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
                      height: 7,
                    ),
                    TextFormField(
                      controller: email,
                      decoration: InputDecoration(
                        prefix: Icon(Icons.email_outlined, size: 20),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white10)),
                        hintText: "تأكيد كلمة المرور",
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    TextFormField(
                      controller: email,
                      decoration: InputDecoration(
                        prefix: Icon(Icons.email_outlined, size: 20),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white10)),
                        hintText: "نوع الحساب",
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
                      height: 15,
                    ),
                    SizedBox(
                      width: 150,
                      child: TextButton(
                        onPressed: () {
                          setState(() {});
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue)),
                        child: const Text(
                          "متابعة",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("سجل الان?"), Text("عضو فعلا")],
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
