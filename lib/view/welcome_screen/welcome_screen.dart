import 'package:car_rental_app/utils/color_constants.dart';
import 'package:car_rental_app/utils/image_constants.dart';
import 'package:car_rental_app/view/login_screen/login_screen.dart';
import 'package:car_rental_app/view/register_screen/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollBehavior: MaterialScrollBehavior(),
        children: <Widget>[
          Stack(
            children: <Widget>[
              // Background Image
              Image.asset(
                ImageConstants.bgImage,
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              ),
              // Body Container
              Container(
                padding: EdgeInsets.fromLTRB(25, 90, 25, 50),
                decoration: BoxDecoration(
                  color: ColorConstants.transparent,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Elevate your drive with elegance.",
                      maxLines: 2,
                      style: GoogleFonts.oxanium(
                        color: ColorConstants.white,
                        fontSize: 39,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -1,
                        height: 1.3,
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      "Discover a world of vehicles at your fingertips. Unleash the thrill of driving in style. Your journey begins here.",
                      maxLines: 3,
                      style: GoogleFonts.oxanium(
                        color: ColorConstants.white,
                        fontSize: 18,
                        letterSpacing: -0.3,
                      ),
                    ),
                    Spacer(),
                    //Sign in and Sign up buttons
                    Column(
                      children: <Widget>[
                        InkWell(
                          borderRadius: BorderRadius.circular(26),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(inOut: true),
                              ),
                            );
                          },
                          child: Container(
                            height: 60,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: ColorConstants.shadowColor,
                              borderRadius: BorderRadius.circular(26),
                            ),
                            child: Text(
                              "SIGN IN",
                              style: GoogleFonts.oxanium(
                                color: ColorConstants.white,
                                fontSize: 21,
                                fontWeight: FontWeight.w700,
                                letterSpacing: -0.7,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 35),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    RegisterScreen(inOut: false),
                              ),
                            );
                          },
                          borderRadius: BorderRadius.circular(26),
                          child: Container(
                            height: 60,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: ColorConstants.shadowColor,
                              borderRadius: BorderRadius.circular(26),
                            ),
                            child: Text(
                              "SIGN UP",
                              style: GoogleFonts.oxanium(
                                color: ColorConstants.white,
                                fontSize: 21,
                                fontWeight: FontWeight.w700,
                                letterSpacing: -0.7,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
