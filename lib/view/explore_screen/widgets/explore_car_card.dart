import 'package:car_rental_app/utils/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExploreCarCard extends StatelessWidget {
  const ExploreCarCard({
    super.key, this.onTapped,
  });

  final void Function()? onTapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: <Widget>[
            Container(
              height: 280,
              decoration: BoxDecoration(
                color: ColorConstants.shadowColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                    child: Image.network(
                      "https://i.pinimg.com/474x/5e/71/fd/5e71fdbdba39fbe0632113efb4fac7d4.jpg",
                      // "https://images.pexels.com/photos/3802510/pexels-photo-3802510.jpeg?auto=compress&cs=tinysrgb&w=600",
                      height: 170,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(13, 10, 13, 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              "CAR MODEL",
                              style: GoogleFonts.oxanium(
                                color: ColorConstants.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                                letterSpacing: -0.4,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "\$250.0/day",
                              style: GoogleFonts.oxanium(
                                color: ColorConstants.gold,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                letterSpacing: -0.4,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 2),
                        Text(
                          "Available now",
                          style: GoogleFonts.oxanium(
                            color: ColorConstants.lightWhite,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.4,
                          ),
                        ),
                        SizedBox(height: 2),
                        Row(
                          children: <Widget>[
                            Text(
                              "Type",
                              style: GoogleFonts.oxanium(
                                color: ColorConstants.lightWhite,
                                fontSize: 16.5,
                                fontWeight: FontWeight.w600,
                                letterSpacing: -0.4,
                              ),
                            ),
                            SizedBox(
                              height: 13,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                child: VerticalDivider(
                                  width: 2,
                                  thickness: 2,
                                  color: ColorConstants.iconblue,
                                ),
                              ),
                            ),
                            Text(
                              "Fuel Type",
                              style: GoogleFonts.oxanium(
                                color: ColorConstants.lightWhite,
                                fontSize: 16.5,
                                fontWeight: FontWeight.w600,
                                letterSpacing: -0.4,
                              ),
                            ),
                            SizedBox(
                              height: 13,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                child: VerticalDivider(
                                  width: 2,
                                  thickness: 2,
                                  color: ColorConstants.iconblue,
                                ),
                              ),
                            ),
                            Text(
                              "4 seats",
                              style: GoogleFonts.oxanium(
                                color: ColorConstants.lightWhite,
                                fontSize: 16.5,
                                fontWeight: FontWeight.w600,
                                letterSpacing: -0.4,
                              ),
                            ),
                            Spacer(),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 17, vertical: 4),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: ColorConstants.green,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                "Book now",
                                style: GoogleFonts.oxanium(
                                  color: ColorConstants.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: -0.4,
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
            ),
          ],
        ),
      ),
    );
  }
}
