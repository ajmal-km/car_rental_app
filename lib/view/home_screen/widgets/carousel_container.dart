import 'package:car_rental_app/utils/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({
    super.key,
    this.onTapped,
  });

  final void Function()? onTapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        decoration: BoxDecoration(
          color: ColorConstants.shadowColor,
          borderRadius: BorderRadius.circular(40),
          image: DecorationImage(
            image: NetworkImage(
              "https://i.pinimg.com/474x/5e/71/fd/5e71fdbdba39fbe0632113efb4fac7d4.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: ColorConstants.containerGradient),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: ColorConstants.transparent,
                    child: FaIcon(
                      FontAwesomeIcons.heart,
                      color: ColorConstants.blue,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: ColorConstants.pacaficblue,
                      borderRadius: BorderRadius.circular(11),
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
              ),
              Spacer(),
              Text(
                "CAR MODEL",
                style: GoogleFonts.oxanium(
                  color: ColorConstants.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.6,
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
              SizedBox(height: 8),
              Row(
                children: <Widget>[
                  FaIcon(
                    FontAwesomeIcons.gasPump,
                    color: ColorConstants.lightWhite,
                    size: 15,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "TYPE",
                    style: GoogleFonts.oxanium(
                      color: ColorConstants.lightWhite,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.3,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: SizedBox(
                      height: 22,
                      child: VerticalDivider(
                        thickness: 2,
                        width: 2,
                        color: ColorConstants.shadowColor,
                      ),
                    ),
                  ),
                  FaIcon(
                    FontAwesomeIcons.gasPump,
                    color: ColorConstants.lightWhite,
                    size: 15,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "MANUAL",
                    style: GoogleFonts.oxanium(
                      color: ColorConstants.lightWhite,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.3,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: SizedBox(
                      height: 22,
                      child: VerticalDivider(
                        thickness: 2,
                        width: 2,
                        color: ColorConstants.shadowColor,
                      ),
                    ),
                  ),
                  FaIcon(
                    FontAwesomeIcons.gasPump,
                    color: ColorConstants.lightWhite,
                    size: 15,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "POWER",
                    style: GoogleFonts.oxanium(
                      color: ColorConstants.lightWhite,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.3,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
