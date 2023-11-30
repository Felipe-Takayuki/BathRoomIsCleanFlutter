import 'dart:developer';

import 'package:bathroomiscleanflutter/utilities/colors.dart';
import 'package:bathroomiscleanflutter/utilities/images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key, required this.width, required this.height});
  final double width;
  final double height;
  @override
  Size get preferredSize => const Size.fromHeight(80.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation:0 ,
      toolbarHeight: height * 10/100 ,
      backgroundColor: ColorsSite.bgColorAppBar,
         title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             GestureDetector(
              onTap: (){
                log("click");
              },
              child: Image.asset(ImagesSite.logoImage, width:width * 1.5/100,)),
              SizedBox(width: width * 1/100),
             GestureDetector(
              onTap: (){
                log("click");
              },
              child: Text("BathRoomIsClean()?",style: GoogleFonts.jetBrainsMono(
                fontSize: height * 3/100,
                fontWeight: FontWeight.w500,
                color: ColorsSite.titleColorAppBar
              ),))
           ],
         ),
    );
  }
}