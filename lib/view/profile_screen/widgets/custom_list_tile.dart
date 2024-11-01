import 'package:car_rental_app/utils/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.leadingIcon,
    required this.title,
    this.onTapped,
  });

  final IconData leadingIcon;
  final String title;
  final void Function()? onTapped;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTapped,
      contentPadding: EdgeInsets.symmetric(horizontal: 20),
      leading: Container(
        width: 50,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: ColorConstants.blue),
          borderRadius: BorderRadius.circular(10),
        ),
        child: FaIcon(
          leadingIcon,
          color: ColorConstants.lightWhite,
          size: 23,
        ),
      ),
      title: Text(
        title,
        style: GoogleFonts.oxanium(
          color: ColorConstants.white,
          fontSize: 22,
          fontWeight: FontWeight.w300,
          letterSpacing: -0.4,
        ),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 30,
        color: ColorConstants.lightWhite,
      ),
    );
  }
}
