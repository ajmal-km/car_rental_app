import 'package:car_rental_app/utils/color_constants.dart';
import 'package:car_rental_app/view/chatlist_screen/widgets/chat_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatlistScreen extends StatelessWidget {
  const ChatlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.bluishBlack,
      appBar: AppBar(
        backgroundColor: ColorConstants.bluishBlack,
        surfaceTintColor: ColorConstants.bluishBlack,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: FaIcon(
            FontAwesomeIcons.arrowLeft,
            color: ColorConstants.lightWhite,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Chats",
          style: GoogleFonts.oxanium(
            color: ColorConstants.white,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: <Widget>[
          SearchBar(
            backgroundColor: WidgetStatePropertyAll(ColorConstants.shadowColor),
            hintText: "Search",
            trailing: <Widget>[
              IconButton(
                onPressed: () {},
                icon: FaIcon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: ColorConstants.lightWhite,
                  size: 23,
                ),
              ),
            ],
            onTapOutside: (event) =>
                FocusManager.instance.primaryFocus!.unfocus(),
            elevation: WidgetStatePropertyAll(3),
            textStyle: WidgetStatePropertyAll(
              GoogleFonts.oxanium(
                color: ColorConstants.lightWhite,
                fontSize: 19,
                fontWeight: FontWeight.w400,
                letterSpacing: -0.3,
              ),
            ),
            shadowColor: WidgetStatePropertyAll(ColorConstants.transparent),
            hintStyle: WidgetStatePropertyAll(
              GoogleFonts.oxanium(
                color: ColorConstants.lightWhite,
                fontSize: 19,
                fontWeight: FontWeight.w400,
                letterSpacing: -0.3,
              ),
            ),
          ),
          ListView.separated(
            padding: EdgeInsets.only(top: 22),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 10,
            separatorBuilder: (context, index) => Padding(
              padding: EdgeInsets.symmetric(vertical: 13),
              child: Divider(
                height: 1.5,
                thickness: 1.5,
                color: ColorConstants.shadowColor,
              ),
            ),
            itemBuilder: (context, index) => ChatListTile(),
          ),
        ],
      ),
    );
  }
}
