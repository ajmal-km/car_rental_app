import 'package:car_rental_app/utils/color_constants.dart';
import 'package:car_rental_app/view/explore_screen/explore_screen.dart';
import 'package:car_rental_app/view/home_screen/home_screen.dart';
import 'package:car_rental_app/view/profile_screen/profile_screen.dart';
import 'package:car_rental_app/view/recent_activity_screen/recent_activity_screen.dart.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    ExploreScreen(),
    RecentActivityScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        color: ColorConstants.bluishBlack,
        backgroundColor: ColorConstants.greyBlue,
        animationCurve: Curves.decelerate,
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
        index: currentIndex,
        items: <Widget>[
          FaIcon(
            FontAwesomeIcons.house,
            color: ColorConstants.iconblue,
          ),
          FaIcon(
            FontAwesomeIcons.solidCompass,
            color: ColorConstants.iconblue,
          ),
          FaIcon(
            FontAwesomeIcons.solidCalendarDays,
            color: ColorConstants.iconblue,
          ),
          FaIcon(
            FontAwesomeIcons.userLarge,
            color: ColorConstants.iconblue,
          ),
        ],
      ),
    );
  }
}
