import 'package:car_rental_app/utils/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class TopRatedContainer extends StatelessWidget {
  const TopRatedContainer({
    super.key, this.onTapped,
  });

  final void Function()? onTapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: <Widget>[
            Container(
              width: 150,
              height: 130,
              decoration: BoxDecoration(
                color: ColorConstants.shadowColor,
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                  image: NetworkImage(
                    "https://i.pinimg.com/474x/5e/71/fd/5e71fdbdba39fbe0632113efb4fac7d4.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                  width: 150,
                  height: 130,
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.topRight,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: LinearGradient(
                      colors: ColorConstants.containerGradient,
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundColor: ColorConstants.transparent,
                    child: FaIcon(
                      FontAwesomeIcons.heart,
                      color: ColorConstants.blue,
                    ),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "CAR MODEL",
                    style: GoogleFonts.oxanium(
                      color: ColorConstants.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.4,
                    ),
                  ),
                  Text(
                    "Available now",
                    style: GoogleFonts.oxanium(
                      color: ColorConstants.lightWhite,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.4,
                    ),
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: <Widget>[
                      FaIcon(
                        FontAwesomeIcons.solidStar,
                        color: ColorConstants.gold,
                        size: 16,
                      ),
                      SizedBox(width: 7),
                      Text(
                        "5.0",
                        style: GoogleFonts.oxanium(
                          color: ColorConstants.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      FaIcon(
                        FontAwesomeIcons.userGroup,
                        color: ColorConstants.lightWhite,
                        size: 15.5,
                      ),
                      SizedBox(width: 7),
                      Text(
                        "4 seats",
                        style: GoogleFonts.oxanium(
                          color: ColorConstants.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 25),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: ColorConstants.pacaficblue,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: <Widget>[
                            FaIcon(
                              FontAwesomeIcons.moneyBill,
                              color: ColorConstants.green,
                              size: 15.5,
                            ),
                            SizedBox(width: 8),
                            Text(
                              "\$250.0/day",
                              style: GoogleFonts.oxanium(
                                color: ColorConstants.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
