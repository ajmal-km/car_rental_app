import 'package:car_rental_app/utils/color_constants.dart';
import 'package:car_rental_app/utils/image_constants.dart';
import 'package:car_rental_app/view/widgets/social_container.dart';
import 'package:car_rental_app/view/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key, required this.inOut});

  final bool inOut;

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
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
            padding: EdgeInsets.fromLTRB(25, 120, 25, 40),
            decoration: BoxDecoration(
              color: ColorConstants.transparent,
            ),
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                Text(
                  "SIGN UP",
                  style: GoogleFonts.notoSansBatak(
                    color: ColorConstants.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -1.1,
                  ),
                ),
                SizedBox(height: 40),
                TextFieldWidget(
                  textFieldController: nameController,
                  hint: "YOUR NAME",
                  prfxIcon: Icons.person,
                  fieldValidator: (value) {
                    return null;
                  },
                ),
                SizedBox(height: 25),
                TextFieldWidget(
                  textFieldController: emailController,
                  hint: "YOUR EMAIL",
                  prfxIcon: Icons.mail,
                ),
                SizedBox(height: 25),
                TextFieldWidget(
                  textFieldController: passwordController,
                  hint: "YOUR PASSWORD",
                  prfxIcon: Icons.lock,
                ),
                SizedBox(height: 25),
                TextFieldWidget(
                  textFieldController: confirmPasswordController,
                  hint: "CONFIRM YOUR PASSWORD",
                  prfxIcon: Icons.lock,
                ),
                SizedBox(height: 25),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
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
                      "SIGN UP",
                      style: GoogleFonts.notoSansBatak(
                        color: ColorConstants.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    "OR",
                    style: GoogleFonts.notoSansBatak(
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
