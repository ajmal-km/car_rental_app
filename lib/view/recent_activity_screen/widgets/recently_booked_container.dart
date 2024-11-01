import 'package:car_rental_app/utils/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class RecentlyBookedContainer extends StatelessWidget {
  const RecentlyBookedContainer({
    super.key, this.onTapped,
  });

  final void Function()? onTapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: <Widget>[
            Container(
              height: 100,
              width: 130,
              decoration: BoxDecoration(
                color: ColorConstants.shadowColor,
                borderRadius: BorderRadius.circular(28),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://i.pinimg.com/474x/5e/71/fd/5e71fdbdba39fbe0632113efb4fac7d4.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 100,
                color: ColorConstants.bluishBlack,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 13),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
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
                        Spacer(),
                        Text(
                          "Yesterday",
                          style: GoogleFonts.oxanium(
                            color: ColorConstants.lightWhite,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.4,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 7),
                    Row(
                      children: List.generate(
                        8,
                        (index) {
                          if (index == 0) {
                            return Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Text(
                                "rated",
                                style: GoogleFonts.oxanium(
                                  color: ColorConstants.lightWhite,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            );
                          } else if (index == 7) {
                            return Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Text(
                                "5.0",
                                style: GoogleFonts.oxanium(
                                  color: ColorConstants.lightWhite,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            );
                          } else if (index == 1) {
                            return Spacer();
                          } else {
                            return Icon(
                              Icons.star_purple500_sharp,
                              color: ColorConstants.gold,
                              size: 13,
                            );
                          }
                        },
                      ),
                    ),
                    SizedBox(height: 17),
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
                        Spacer(),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 3.7),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: ColorConstants.blue,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.replay_circle_filled_outlined,
                                color: ColorConstants.white,
                                size: 15.5,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "Rebook",
                                style: GoogleFonts.oxanium(
                                  color: ColorConstants.white,
                                  fontSize: 13,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
