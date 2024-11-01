import 'package:car_rental_app/utils/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.textFieldController,
    this.labelText,
    this.hint,
    this.prfxIcon,
    this.sfxIcon,
    this.fieldValidator,
  });

  final TextEditingController textFieldController;
  final Widget? labelText;
  final String? hint;
  final IconData? prfxIcon;
  final IconData? sfxIcon;
  final String? Function(String?)? fieldValidator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textFieldController,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      style: GoogleFonts.oxanium(
        color: ColorConstants.white,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
      decoration: InputDecoration(
        fillColor: ColorConstants.shadowColor,
        filled: true,
        label: labelText,
        hintText: hint,
        hintStyle: GoogleFonts.oxanium(
          color: ColorConstants.white,
          fontSize: 14.7,
          fontWeight: FontWeight.w700,
        ),
        prefixIcon: Icon(
          prfxIcon,
          color: ColorConstants.white,
        ),
        suffixIcon: Icon(
          sfxIcon,
          color: ColorConstants.white,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(style: BorderStyle.none),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(style: BorderStyle.none),
          borderRadius: BorderRadius.circular(20),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2.6, color: ColorConstants.red),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2.6, color: ColorConstants.red),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      validator: fieldValidator,
    );
  }
}
