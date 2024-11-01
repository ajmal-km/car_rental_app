import 'package:car_rental_app/utils/color_constants.dart';
import 'package:car_rental_app/utils/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/image_container.dart';
import 'widgets/custom_text_field.dart';

class CarDetailsScreen extends StatelessWidget {
  const CarDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.bluishBlack,
      appBar: AppBar(
        backgroundColor: ColorConstants.bluishBlack,
        surfaceTintColor: ColorConstants.bluishBlack,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back,
            size: 27,
            color: ColorConstants.white,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: FaIcon(
              FontAwesomeIcons.heart,
              color: ColorConstants.blue,
            ),
          ),
          SizedBox(width: 3.5),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 5),
        children: <Widget>[
          SizedBox(
            height: 250,
            child: PageView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => ImageContainer(
                url:
                    "https://i.pinimg.com/474x/5e/71/fd/5e71fdbdba39fbe0632113efb4fac7d4.jpg",
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        "Car Make",
                        style: GoogleFonts.oxanium(
                          color: ColorConstants.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.4,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: SizedBox(
                          height: 23,
                          child: VerticalDivider(
                            width: 2,
                            thickness: 2,
                            color: ColorConstants.greyBlue,
                          ),
                        ),
                      ),
                      Text(
                        "4 X 4",
                        style: GoogleFonts.oxanium(
                          color: ColorConstants.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.4,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: SizedBox(
                          height: 23,
                          child: VerticalDivider(
                            width: 2,
                            thickness: 2,
                            color: ColorConstants.greyBlue,
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          FaIcon(
                            FontAwesomeIcons.solidStar,
                            color: ColorConstants.gold,
                            size: 16,
                          ),
                          SizedBox(width: 9),
                          Text(
                            "4.5",
                            style: GoogleFonts.oxanium(
                              color: ColorConstants.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              letterSpacing: -0.4,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 18),
                Row(
                  children: <Widget>[
                    Text(
                      "Car Model",
                      style: GoogleFonts.oxanium(
                        color: ColorConstants.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.4,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "\$250.0/day",
                      style: GoogleFonts.oxanium(
                        color: ColorConstants.green,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.4,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 18),
                  child: Divider(
                    height: 3,
                    thickness: 2,
                    color: ColorConstants.shadowColor,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Host",
                      style: GoogleFonts.oxanium(
                        color: ColorConstants.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.4,
                      ),
                    ),
                    SizedBox(height: 12),
                    Container(
                      height: 120,
                      padding: EdgeInsets.all(13),
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1.8, color: ColorConstants.shadowColor),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: ColorConstants.greyBlue,
                                backgroundImage: NetworkImage(
                                    "https://images.pexels.com/photos/1036623/pexels-photo-1036623.jpeg?auto=compress&cs=tinysrgb&w=600"),
                              ),
                              Spacer(),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.star_rounded,
                                    color: ColorConstants.gold,
                                    size: 16,
                                  ),
                                  SizedBox(width: 3),
                                  Text(
                                    "5.0",
                                    style: GoogleFonts.oxanium(
                                      color: ColorConstants.lightWhite,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(width: 13),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Host Name",
                                style: GoogleFonts.oxanium(
                                  color: ColorConstants.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.workspace_premium_outlined,
                                    color: ColorConstants.gold,
                                    size: 16,
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    "All-star host",
                                    style: GoogleFonts.oxanium(
                                      color: ColorConstants.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "20 trips • Joined Sep 2024",
                                style: GoogleFonts.oxanium(
                                  color: ColorConstants.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "Typically responds in 5 minutes",
                                style: GoogleFonts.oxanium(
                                  color: ColorConstants.lightWhite,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(
                            Icons.call_outlined,
                            color: ColorConstants.green,
                          ),
                          SizedBox(width: 17),
                          Icon(
                            Icons.message,
                            color: ColorConstants.green,
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 18),
                Column(
                  children: <Widget>[
                    CustomTextField(
                      onTapped: () {},
                      heading: "Trip Dates",
                      prefIcon: Icons.calendar_month,
                      fieldHint: "Any time",
                      suffIcon: Icons.arrow_forward_ios,
                      suffixText: "Add Dates",
                    ),
                    SizedBox(height: 18),
                    CustomTextField(
                      onTapped: () {},
                      heading: "Pickup & Return",
                      prefIcon: Icons.location_on,
                      fieldHint: "Your Location",
                      suffIcon: Icons.arrow_forward_ios,
                      suffixText: "Select",
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 21),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: 100,
                width: 115,
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  border:
                      Border.all(width: 2, color: ColorConstants.shadowColor),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FaIcon(
                      FontAwesomeIcons.gasPump,
                      color: ColorConstants.lightWhite,
                      size: 18,
                    ),
                    SizedBox(height: 6),
                    Text(
                      "Fuel Type",
                      style: GoogleFonts.oxanium(
                        color: ColorConstants.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                        letterSpacing: -0.2,
                      ),
                    ),
                    Text(
                      "Diesel",
                      style: GoogleFonts.oxanium(
                        color: ColorConstants.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                        letterSpacing: -0.2,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 115,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border:
                      Border.all(width: 2, color: ColorConstants.shadowColor),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ImageIcon(
                      AssetImage(ImageConstants.turbo_icon),
                      color: ColorConstants.lightWhite,
                    ),
                    SizedBox(height: 3),
                    Text(
                      "Engine",
                      style: GoogleFonts.oxanium(
                        color: ColorConstants.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                        letterSpacing: -0.2,
                      ),
                    ),
                    Text(
                      "585hp",
                      style: GoogleFonts.oxanium(
                        color: ColorConstants.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                        letterSpacing: -0.2,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 115,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border:
                      Border.all(width: 2, color: ColorConstants.shadowColor),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ImageIcon(
                      AssetImage(ImageConstants.transmission_icon),
                      color: ColorConstants.lightWhite,
                    ),
                    SizedBox(height: 3),
                    Text(
                      "Transmission",
                      style: GoogleFonts.oxanium(
                        color: ColorConstants.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                        letterSpacing: -0.2,
                      ),
                    ),
                    Text(
                      "Manual",
                      style: GoogleFonts.oxanium(
                        color: ColorConstants.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                        letterSpacing: -0.2,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 13),
          Padding(
            padding: EdgeInsets.only(bottom: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Description",
                        style: GoogleFonts.oxanium(
                          color: ColorConstants.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.4,
                        ),
                      ),
                      SizedBox(height: 14),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et et dolore magna.",
                        style: GoogleFonts.oxanium(
                          color: ColorConstants.lightWhite,
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 17),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Reviews",
                        style: GoogleFonts.oxanium(
                          color: ColorConstants.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.4,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "more",
                        style: GoogleFonts.oxanium(
                          color: ColorConstants.greyBlue,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.4,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 17),
                ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  separatorBuilder: (context, index) => Padding(
                    padding: EdgeInsets.symmetric(vertical: 13),
                    child: Divider(
                      color: ColorConstants.greyBlue,
                      height: 1,
                      thickness: 1,
                    ),
                  ),
                  itemBuilder: (context, index) => ListView(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: ColorConstants.shadowColor,
                            backgroundImage: NetworkImage(
                                "https://images.pexels.com/photos/27383293/pexels-photo-27383293/free-photo-of-a-woman-in-a-baseball-cap-and-black-leggings.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                "User",
                                style: GoogleFonts.oxanium(
                                  color: ColorConstants.green,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Row(
                                children: List.generate(
                                  7,
                                  (index) => Builder(
                                    builder: (context) {
                                      if (index < 5) {
                                        return FaIcon(
                                          index < 4
                                              ? FontAwesomeIcons.solidStar
                                              : FontAwesomeIcons.star,
                                          color: index < 4
                                              ? ColorConstants.gold
                                              : ColorConstants.greyBlue,
                                          size: index < 4 ? 12 : 15,
                                        );
                                      } else if (index == 5) {
                                        return SizedBox(width: 10);
                                      } else {
                                        return Text(
                                          "4.5",
                                          style: GoogleFonts.oxanium(
                                            color: ColorConstants.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        );
                                      }
                                    },
                                  ),
                                ),
                              ),
                              //
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et et dolore magna.",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.oxanium(
                          color: ColorConstants.white,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: GestureDetector(
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => BookingScreen(),
            //   ),
            // );
          },
          child: Container(
            height: 45,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: ColorConstants.blue,
              borderRadius: BorderRadius.circular(27),
            ),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Book Now",
              style: GoogleFonts.oxanium(
                color: ColorConstants.white,
                fontSize: 22,
                fontWeight: FontWeight.w700,
                letterSpacing: -0.4,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
