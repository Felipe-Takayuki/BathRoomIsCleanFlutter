import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DescWidget extends StatelessWidget {
  const DescWidget({super.key, required this.title, required this.desc});
  final String title;
  final Widget desc; 
  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: GoogleFonts.jetBrainsMono(color: Colors.black, fontWeight: FontWeight.w700, fontSize: mediaquery.height * 5/100),),
        desc
      ],
    );
  }
}