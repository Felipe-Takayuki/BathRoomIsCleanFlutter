import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DescWidget extends StatelessWidget {
  const DescWidget({super.key, required this.title, required this.desc, required this.height});
  final String title;
  final Widget desc;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: height * 10/100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.jetBrainsMono(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: height * 5 / 100),
          ),
          desc
        ],
      ),
    );
  }
}
