import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskmanager_ui/Screen/onboarding/sign_in_Screen.dart';
import 'package:taskmanager_ui/style/style.dart';
import 'package:flutter_svg/svg.dart';

class spalashScreen extends StatefulWidget {
  const spalashScreen({super.key});

  @override
  State<spalashScreen> createState() => _spalashScreenState();
}

class _spalashScreenState extends State<spalashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    movetonextScreen();
  }

  Future<void> movetonextScreen() async {
    await Future.delayed(Duration(seconds: 3));
    if (mounted) {
      setState(() {});
    }
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => signinScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          backgroundpic(context),
          Container(
            child: Center(
                child: Image(
                    image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQD354uuBTVu-ISNmlaxqWff9bLnIMFw3nZ3A&s'))),
          )
        ],
      ),
    );
  }
}
