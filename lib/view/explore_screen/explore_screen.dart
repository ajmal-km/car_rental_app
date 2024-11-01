import 'package:car_rental_app/utils/color_constants.dart';
import 'package:car_rental_app/view/car_details_screen/car_details_screen.dart';
import 'package:car_rental_app/view/explore_screen/widgets/explore_car_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.bluishBlack,
      appBar: AppBar(
        backgroundColor: ColorConstants.bluishBlack,
        surfaceTintColor: ColorConstants.bluishBlack,
        title: Text(
          "Explore",
          style: GoogleFonts.oxanium(
            color: ColorConstants.white,
            fontSize: 23,
            fontWeight: FontWeight.w400,
            letterSpacing: -0.4,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 20, bottom: 16),
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Brands",
                      style: GoogleFonts.oxanium(
                        color: ColorConstants.lightWhite,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.4,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "See all",
                      style: GoogleFonts.oxanium(
                        color: ColorConstants.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.4,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 100,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  itemCount: 5,
                  separatorBuilder: (context, index) => SizedBox(width: 16),
                  itemBuilder: (context, index) => Container(
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      border: Border.all(
                          width: 4, color: ColorConstants.pacaficblue),
                    ),
                    child: Text(
                      "Name",
                      style: GoogleFonts.oxanium(
                        color: ColorConstants.lightWhite,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.4,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  "Select by Transmission",
                  style: GoogleFonts.oxanium(
                    color: ColorConstants.lightWhite,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.4,
                  ),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 40,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  separatorBuilder: (context, index) => SizedBox(width: 16),
                  itemCount: 4,
                  itemBuilder: (context, index) => Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: ColorConstants.blue,
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: Text(
                      "Transmission",
                      style: GoogleFonts.oxanium(
                        color: ColorConstants.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.4,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 2,
                separatorBuilder: (context, index) => Padding(
                  padding: EdgeInsets.symmetric(vertical: 13),
                  child: Divider(
                    color: ColorConstants.greyBlue,
                    height: 1,
                    thickness: 1,
                  ),
                ),
                itemBuilder: (context, index) => ExploreCarCard(
                  onTapped: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CarDetailsScreen(),
                      ),
                    );
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
