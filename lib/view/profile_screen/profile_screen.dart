import 'package:car_rental_app/utils/color_constants.dart';
import 'package:car_rental_app/view/profile_screen/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.black,
      appBar: AppBar(
        backgroundColor: ColorConstants.black,
        surfaceTintColor: ColorConstants.black,
        centerTitle: true,
        title: Text(
          "Profile",
          style: GoogleFonts.oxanium(
            color: ColorConstants.white,
            fontSize: 23,
            fontWeight: FontWeight.w400,
            letterSpacing: -0.4,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                Container(
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    color: ColorConstants.shadowColor,
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://i.pinimg.com/236x/60/ff/11/60ff1137e3370f3742e04cc644c32592.jpg"),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Username",
                  style: GoogleFonts.oxanium(
                    color: ColorConstants.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.4,
                  ),
                ),
                Text(
                  "Joined Oct 28",
                  style: GoogleFonts.oxanium(
                    color: ColorConstants.lightWhite,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 18),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 55,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: ColorConstants.blue,
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              FaIcon(
                                FontAwesomeIcons.solidPenToSquare,
                                size: 19,
                                color: ColorConstants.white,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Edit profile",
                                style: GoogleFonts.oxanium(
                                  color: ColorConstants.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              backgroundColor: ColorConstants.bluishBlack,
                              title: Text(
                                "Logout",
                                style: GoogleFonts.oxanium(
                                  color: ColorConstants.blue,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              content: Text(
                                "Are you sure you want to log out?",
                                style: GoogleFonts.oxanium(
                                  color: ColorConstants.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text(
                                    "Cancel",
                                    style: GoogleFonts.oxanium(
                                      color: ColorConstants.lightWhite,
                                      fontSize: 17.5,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text(
                                    "Logout",
                                    style: GoogleFonts.oxanium(
                                      color: ColorConstants.red,
                                      fontSize: 17.5,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        child: Container(
                          height: 55,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: ColorConstants.blue,
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              FaIcon(
                                FontAwesomeIcons.arrowRightFromBracket,
                                size: 19,
                                color: ColorConstants.white,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Logout",
                                style: GoogleFonts.oxanium(
                                  color: ColorConstants.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 13),
            child: Column(
              children: <Widget>[
                CustomListTile(
                  leadingIcon: FontAwesomeIcons.solidUser,
                  title: "My Account",
                ),
                SizedBox(height: 18),
                CustomListTile(
                  leadingIcon: FontAwesomeIcons.solidHeart,
                  title: "My Wishlist",
                ),
                SizedBox(height: 18),
                CustomListTile(
                  leadingIcon: FontAwesomeIcons.circleInfo,
                  title: "About",
                ),
                SizedBox(height: 18),
                CustomListTile(
                  leadingIcon: FontAwesomeIcons.gear,
                  title: "Settings",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
