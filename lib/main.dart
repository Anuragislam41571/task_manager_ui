import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskmanager_ui/Screen/onboarding/emailVerifyScreen.dart';
import 'package:taskmanager_ui/Screen/onboarding/pinVerifyScreen.dart';
import 'package:taskmanager_ui/Screen/onboarding/setpassScreen.dart';
import 'package:taskmanager_ui/Screen/onboarding/signUpScreen.dart';
import 'package:taskmanager_ui/Screen/onboarding/sign_in_Screen.dart';
import 'package:taskmanager_ui/Screen/onboarding/spalashScreen.dart';

void main(){

  runApp(taskmanagerApp());
}
class taskmanagerApp extends StatelessWidget {
  const taskmanagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/splash' ,
      routes: {

        '/':(context)=>spalashScreen(),
        '/signin':(context)=>signinScreen(),
        '/signup':(context)=>signupScreen(),
        '/setpass':(context)=>setpasswordScreen(),
        '/pinverify':(context)=>pinverifyScreen(),
        '/emailverify':(context)=>emailverifyScreen(),

      },
    );
  }
}
