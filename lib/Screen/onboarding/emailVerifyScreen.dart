import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:taskmanager_ui/Screen/onboarding/pinVerifyScreen.dart';
import 'package:taskmanager_ui/Screen/onboarding/signUpScreen.dart';
import 'package:taskmanager_ui/Screen/onboarding/sign_in_Screen.dart';
import 'package:taskmanager_ui/style/style.dart';

class emailverifyScreen extends StatefulWidget {
  const emailverifyScreen({super.key});

  @override
  State<emailverifyScreen> createState() => _emailverifyScreenState();
}

class _emailverifyScreenState extends State<emailverifyScreen> {
  final TextEditingController emailcontroller = TextEditingController();

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
                      height: 70,
                    ),
                    Text(
                      'Your Email Address',
                      style: h1text(),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'A 6 digit verification pin will send to your email address',
                      style: h6text(),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      controller: emailcontroller,
                      keyboardType: TextInputType.emailAddress,
                      decoration: appinputdecoration('email'),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    ElevatedButton(
                        style: appbuttonstytle(),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => pinverifyScreen()));
                        },
                        child: Text('Next')),
                    const SizedBox(
                      height: 25,
                    ),
                    Center(
                      child: RichText(
                        text: TextSpan(text: ' have account?', children: [
                          TextSpan(
                            text: 'sign in',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => signinScreen()),
                                    (route) => false);
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
}
