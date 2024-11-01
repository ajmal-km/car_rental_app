import 'package:car_rental_app/utils/color_constants.dart';
import 'package:car_rental_app/view/car_details_screen/car_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/recently_booked_container.dart';

class RecentActivityScreen extends StatelessWidget {
  const RecentActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.bluishBlack,
      appBar: AppBar(
        backgroundColor: ColorConstants.bluishBlack,
        surfaceTintColor: ColorConstants.bluishBlack,
        title: Text(
          "Recent Bookings",
          style: GoogleFonts.oxanium(
            color: ColorConstants.white,
            fontSize: 23,
            fontWeight: FontWeight.w400,
            letterSpacing: -0.4,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(bottom: 16),
        children: <Widget>[
          SizedBox(
            height: 40,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 16),
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              separatorBuilder: (context, index) => SizedBox(width: 15),
              itemBuilder: (context, index) => Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 18),
                decoration: BoxDecoration(
                  color: ColorConstants.pacaficblue,
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Text(
                  "Today",
                  style: GoogleFonts.oxanium(
                    color: ColorConstants.white,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 25),
            physics: NeverScrollableScrollPhysics(),
            itemCount: 8,
            separatorBuilder: (context, index) => Padding(
              padding: EdgeInsets.symmetric(vertical: 13),
              child: Divider(
                height: 1.5,
                thickness: 1.5,
                color: ColorConstants.shadowColor,
              ),
            ),
            itemBuilder: (context, index) => RecentlyBookedContainer(
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
      ),
    );
  }
}
