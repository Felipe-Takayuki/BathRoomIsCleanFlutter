import 'package:bathroomiscleanflutter/utilities/images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonWithNumberWidget extends StatelessWidget {
  const PersonWithNumberWidget(
      {super.key,
      required this.widthImage,
      required this.number,
      required this.fontSize,
      required this.padding});
  final double widthImage;
  final String number;
  final double fontSize;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            ImagesSite.personImage,
            width: widthImage,
          ),
          Text(
            number,
            style: GoogleFonts.mcLaren(
                fontSize: fontSize, color: const Color.fromRGBO(76, 71, 71, 1)),
          )
        ],
      ),
    );
  }
}
