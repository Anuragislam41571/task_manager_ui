import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:taskmanager_ui/style/style.dart';

class signupScreen extends StatefulWidget {
  const signupScreen({super.key});

  @override
  State<signupScreen> createState() => _signupScreenState();
}

class _signupScreenState extends State<signupScreen> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController firstnamecontroller = TextEditingController();

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
                      height: 90,
                    ),
                    Text(
                      'Join with Us',
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
                      controller: firstnamecontroller,
                      decoration: appinputdecoration('First Name'),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    TextFormField(
                      controller: firstnamecontroller,
                      decoration: appinputdecoration('Last Name'),
                    ),
                    TextFormField(
                      controller: firstnamecontroller,
                      decoration: appinputdecoration('Mobile'),
                    ),
                    TextFormField(
                      controller: firstnamecontroller,
                      decoration: appinputdecoration('Password'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: appbuttonstytle(),
                        onPressed: () {},
                        child: Text('Next')),
                    const SizedBox(
                      height: 25,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Center(
                      child: RichText(
                        text: TextSpan(text: ' have account?', children: [
                          TextSpan(
                            text: 'sign in',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pop(context);
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
