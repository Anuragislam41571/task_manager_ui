import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:taskmanager_ui/Screen/onboarding/sign_in_Screen.dart';
import 'package:taskmanager_ui/style/style.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class pinverifyScreen extends StatefulWidget {
  const pinverifyScreen({super.key});

  @override
  State<pinverifyScreen> createState() => _pinverifyScreenState();
}

class _pinverifyScreenState extends State<pinverifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          backgroundpic(context),
          Container(
              child: Padding(
            padding: EdgeInsets.all(35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 70,
                ),
                Text(
                  'Pin Verification',
                  style: h1text(),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'A 6 digit verification pin send to your email address',
                  style: h6text(),
                ),
                PinCodeTextField(
                  appContext: context,
                  length: 6,
                  pinTheme: PinTheme(
                    inactiveColor: Colors.grey,
                    inactiveFillColor: Colors.grey,
                    activeColor: Colors.green,
                    activeFillColor: Colors.green,
                    selectedColor: Colors.red,
                    selectedFillColor: Colors.red,
                    shape: PinCodeFieldShape.box,
                    fieldHeight: 55,
                    fieldWidth: 60,
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: appbuttonstytle(),
                    onPressed: () {},
                    child: Text('Verify')),
                SizedBox(
                  height: 20,
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
          ))
        ],
      ),
    );
  }
}
