import 'package:flutter/material.dart';

import '../../utils/color_constants.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({super.key, required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstants.shadowColor,
        image: DecorationImage(
          image: NetworkImage(url),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
