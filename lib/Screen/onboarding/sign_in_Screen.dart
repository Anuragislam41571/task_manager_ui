import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:taskmanager_ui/Screen/onboarding/emailVerifyScreen.dart';
import 'package:taskmanager_ui/Screen/onboarding/signUpScreen.dart';
import 'package:taskmanager_ui/style/style.dart';

class signinScreen extends StatefulWidget {
  const signinScreen({super.key});

  @override
  State<signinScreen> createState() => _signinScreenState();
}

class _signinScreenState extends State<signinScreen> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          backgroundpic(context),
          Container(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 120,
                    ),
                    Text(
                      'Get Started with',
                      style: h1text(),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: emailcontroller,
                      keyboardType: TextInputType.emailAddress,
                      decoration: appinputdecoration('email'),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      controller: passwordcontroller,
                      decoration: appinputdecoration('password'),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    ElevatedButton(
                        style: appbuttonstytle(),
                        onPressed: () {},
                        child: Text('Login')),
                    const SizedBox(
                      height: 25,
                    ),
                    Center(
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => emailverifyScreen()));
                          },
                          child: Text(
                            'Forgot passwprd',
                            style: TextStyle(color: Colors.grey),
                          )),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Center(
                      child: RichText(
                        text: TextSpan(text: 'Dont have account?', children: [
                          TextSpan(
                            text: 'sign up',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => signupScreen()));
                              },
                            style: TextStyle(fontSize: 12, color: Colors.blue),
                          ),
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailcontroller.dispose();
    passwordcontroller.dispose();
  }
}
