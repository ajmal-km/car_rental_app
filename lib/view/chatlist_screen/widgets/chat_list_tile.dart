import 'package:car_rental_app/utils/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatListTile extends StatelessWidget {
  const ChatListTile({
    super.key,
    this.onTapped,
  });

  final void Function()? onTapped;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTapped,
      contentPadding: EdgeInsets.symmetric(horizontal: 5),
      leading: CircleAvatar(
        radius: 35,
        backgroundColor: ColorConstants.shadowColor,
        backgroundImage: NetworkImage(
            "https://i.pinimg.com/236x/60/ff/11/60ff1137e3370f3742e04cc644c32592.jpg"),
      ),
      title: Text(
        "Name",
        style: GoogleFonts.oxanium(
          color: ColorConstants.white,
          fontSize: 21,
          fontWeight: FontWeight.w300,
          letterSpacing: 0.3,
        ),
      ),
      subtitle: Text(
        "Message",
        style: GoogleFonts.oxanium(
          color: ColorConstants.blue,
          fontSize: 17,
          fontWeight: FontWeight.w300,
        ),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "time",
            style: GoogleFonts.oxanium(
              color: ColorConstants.lightWhite,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          CircleAvatar(
            radius: 12,
            backgroundColor: ColorConstants.green,
            child: Text(
              "1",
              style: GoogleFonts.oxanium(
                color: ColorConstants.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
  }
}
