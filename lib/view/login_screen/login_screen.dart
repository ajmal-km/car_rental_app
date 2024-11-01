import 'package:car_rental_app/utils/color_constants.dart';
import 'package:car_rental_app/utils/image_constants.dart';
import 'package:car_rental_app/view/bottom_navbar_screen/bottom_navbar_screen.dart';
import 'package:car_rental_app/view/widgets/social_container.dart';
import 'package:car_rental_app/view/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key, required this.inOut});

  final bool inOut;

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: ColorConstants.white,
      body: Stack(
        children: <Widget>[
          Image.asset(
            ImageConstants.bgImage,
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(25, 150, 25, 40),
            decoration: BoxDecoration(
              color: ColorConstants.transparent,
            ),
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                Text(
                  "SIGN IN",
                  style: GoogleFonts.oxanium(
                    color: ColorConstants.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -1.1,
                  ),
                ),
                SizedBox(height: 60),
                TextFieldWidget(
                  textFieldController: emailController,
                  hint: "YOUR EMAIL",
                  prfxIcon: Icons.mail,
                  fieldValidator: (value) {
                    return null;
                  },
                ),
                SizedBox(height: 25),
                TextFieldWidget(
                  textFieldController: passwordController,
                  hint: "YOUR PASSWORD",
                  prfxIcon: Icons.lock,
                ),
                SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavbarScreen(),
                      ),
                      (route) => false,
                    );
                  },
                  child: Container(
                    height: 55,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 2.5,
                        color: ColorConstants.white,
                      ),
                    ),
                    child: Text(
                      "SIGN IN",
                      style: GoogleFonts.oxanium(
                        color: ColorConstants.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Center(
                  child: Text(
                    "OR",
                    style: GoogleFonts.oxanium(
                      color: ColorConstants.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -1,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SocialContainer(isSignIn: inOut),
              ],
            ),
          ),
          Positioned(
            top: 35,
            left: 5,
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back,
                size: 27,
                color: ColorConstants.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
