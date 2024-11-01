import 'package:car_rental_app/utils/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.heading,
    required this.fieldHint,
    required this.suffixText,
    required this.prefIcon,
    required this.suffIcon, this.onTapped,
  });

  final String heading;
  final void Function()? onTapped;
  final String fieldHint;
  final String suffixText;
  final IconData prefIcon;
  final IconData suffIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          heading,
          style: GoogleFonts.oxanium(
            color: ColorConstants.white,
            fontSize: 24,
            fontWeight: FontWeight.w600,
            letterSpacing: -0.4,
          ),
        ),
        SizedBox(height: 16),
        TextField(
          onTap: onTapped,
          readOnly: true,
          onTapOutside: (event) =>
              FocusManager.instance.primaryFocus!.unfocus(),
          decoration: InputDecoration(
            hintText: fieldHint,
            hintStyle: GoogleFonts.oxanium(
              color: ColorConstants.white,
              fontSize: 18,
              fontWeight: FontWeight.w300,
              letterSpacing: -0.2,
            ),
            prefixIcon: Icon(
              prefIcon,
              size: 27,
              color: ColorConstants.blue,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide:
                  BorderSide(width: 1.8, color: ColorConstants.shadowColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide(width: 1.8, color: ColorConstants.blue),
            ),
            suffixIcon: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  suffixText,
                  style: GoogleFonts.oxanium(
                    color: ColorConstants.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.2,
                  ),
                ),
                SizedBox(width: 8),
                Icon(
                  suffIcon,
                  size: 18,
                  color: ColorConstants.blue,
                ),
                SizedBox(width: 15),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
