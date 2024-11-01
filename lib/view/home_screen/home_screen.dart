import 'package:car_rental_app/utils/color_constants.dart';
import 'package:car_rental_app/view/car_details_screen/car_details_screen.dart';
import 'package:car_rental_app/view/chatlist_screen/chatlist_screen.dart';
import 'package:car_rental_app/view/home_screen/widgets/carousel_container.dart';
import 'package:car_rental_app/view/home_screen/widgets/top_rated_container.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.bluishBlack,
      appBar: AppBar(
        toolbarHeight: 70,
        titleSpacing: 10,
        backgroundColor: ColorConstants.bluishBlack,
        surfaceTintColor: ColorConstants.bluishBlack,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            IconButton.outlined(
              style: ButtonStyle(
                side: WidgetStatePropertyAll(
                    BorderSide(width: 1.3, color: ColorConstants.greyBlue)),
              ),
              onPressed: () {
                //
              },
              icon: FaIcon(
                FontAwesomeIcons.locationDot,
                color: ColorConstants.greyBlue,
              ),
            ),
            SizedBox(width: 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Location",
                  style: GoogleFonts.oxanium(
                    color: ColorConstants.lightWhite,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Your Location",
                  style: GoogleFonts.oxanium(
                    color: ColorConstants.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              //
            },
            icon: FaIcon(
              FontAwesomeIcons.bell,
              color: ColorConstants.lightWhite,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatlistScreen(),
                ),
              );
            },
            icon: FaIcon(
              FontAwesomeIcons.message,
              color: ColorConstants.lightWhite,
            ),
          ),
          SizedBox(width: 3),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 20, bottom: 16),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Explore new\ndestinations with ease!",
                  style: GoogleFonts.oxanium(
                    color: ColorConstants.lightWhite,
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -1,
                  ),
                ),
                SizedBox(height: 20),
                SearchBar(
                  onTapOutside: (event) {
                    FocusManager.instance.primaryFocus!.unfocus();
                  },
                  backgroundColor:
                      WidgetStatePropertyAll(ColorConstants.shadowColor),
                  trailing: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: FaIcon(
                        FontAwesomeIcons.magnifyingGlass,
                        color: ColorConstants.lightWhite,
                        size: 21,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: GestureDetector(
                        onTap: () {},
                        child: FaIcon(
                          Icons.filter_alt_rounded,
                          color: ColorConstants.lightWhite,
                          size: 29,
                        ),
                      ),
                    ),
                  ],
                  hintText: "Search your dream car...",
                  elevation: WidgetStatePropertyAll(3),
                  textStyle: WidgetStatePropertyAll(
                    GoogleFonts.oxanium(
                      color: ColorConstants.lightWhite,
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.5,
                    ),
                  ),
                  shadowColor:
                      WidgetStatePropertyAll(ColorConstants.transparent),
                  hintStyle: WidgetStatePropertyAll(
                    GoogleFonts.oxanium(
                      color: ColorConstants.lightWhite,
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.5,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Text(
                      "Popular Cars",
                      style: GoogleFonts.oxanium(
                        color: ColorConstants.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.6,
                      ),
                    ),
                    Spacer(),
                    FaIcon(
                      FontAwesomeIcons.arrowRight,
                      size: 24,
                      color: ColorConstants.lightWhite,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          CarouselSlider.builder(
            itemCount: 5,
            itemBuilder: (context, index, realIndex) => CarouselWidget(
              onTapped: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CarDetailsScreen(),
                  ),
                );
              },
            ),
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              height: 220,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 20),
            child: Row(
              children: <Widget>[
                Text(
                  "Top Rated Cars",
                  style: GoogleFonts.oxanium(
                    color: ColorConstants.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.6,
                  ),
                ),
                Spacer(),
                FaIcon(
                  FontAwesomeIcons.arrowRight,
                  size: 24,
                  color: ColorConstants.lightWhite,
                ),
              ],
            ),
          ),
          ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 3,
            separatorBuilder: (context, index) => Padding(
              padding: EdgeInsets.symmetric(vertical: 13),
              child: Divider(
                color: ColorConstants.greyBlue,
                height: 1,
                thickness: 1,
              ),
            ),
            itemBuilder: (context, index) => TopRatedContainer(
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
