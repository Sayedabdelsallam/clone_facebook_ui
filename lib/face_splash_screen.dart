import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:say/login_screen.dart';

class FaceSplashScreen extends StatefulWidget {
  const FaceSplashScreen({super.key});
  static const routeName = 'splash';

  @override
  State<FaceSplashScreen> createState() => _FaceSplashScreenState();
}

class _FaceSplashScreenState extends State<FaceSplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, LoginScreen.routeName);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Center(
              child: SvgPicture.asset("assets/images/facebook_icon.svg"),
          ),
          Spacer(),
          Text(
            'From',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xFF898F9C),
            ),
          ),
          Center(
            child: SvgPicture.asset("assets/images/meta_logo.svg"),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
