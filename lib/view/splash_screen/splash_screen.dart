import 'package:car_rental_app/utils/color_constants.dart';
import 'package:car_rental_app/utils/image_constants.dart';
import 'package:car_rental_app/view/welcome_screen/welcome_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then(
      (value) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => WelcomeScreen(),
          ),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.bluishBlack,
      body: Center(
        child: Image.asset(
          ImageConstants.carent_logo,
          height: 100,
          width: 250,
        ),
      ),
    );
  }
}
