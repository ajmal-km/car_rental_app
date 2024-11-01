import 'package:car_rental_app/utils/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialContainer extends StatelessWidget {
  const SocialContainer({
    super.key,
    required this.isSignIn,
  });

  final bool isSignIn;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 55,
          padding: EdgeInsets.only(left: 40),
          decoration: BoxDecoration(
            color: ColorConstants.navyBlue,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: <Widget>[
              FaIcon(
                FontAwesomeIcons.facebook,
                color: ColorConstants.white,
              ),
              SizedBox(width: 35),
              Text(
                isSignIn ? "Sign in with Facebook" : "Sign up with Facebook",
                style: GoogleFonts.oxanium(
                  color: ColorConstants.white,
                  fontSize: 19,
                  fontWeight: FontWeight.w800,
                  letterSpacing: -0.3,
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 27),
        Container(
          height: 55,
          padding: EdgeInsets.only(left: 40),
          decoration: BoxDecoration(
            color: ColorConstants.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: <Widget>[
              FaIcon(
                FontAwesomeIcons.google,
                color: ColorConstants.black,
              ),
              SizedBox(width: 35),
              Text(
                isSignIn ? "Sign in with Google" : "Sign up with Google",
                style: GoogleFonts.oxanium(
                  color: ColorConstants.black,
                  fontSize: 19,
                  fontWeight: FontWeight.w900,
                  letterSpacing: -1,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
