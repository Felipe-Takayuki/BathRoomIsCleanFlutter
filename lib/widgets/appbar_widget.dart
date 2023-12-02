import 'package:bathroomiscleanflutter/pages/home_page.dart';
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
      elevation: 0,
      toolbarHeight: height * 10 / 100,
      backgroundColor: ColorsSite.bgColorAppBar,
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const HomePage(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return child; // Retorna a página sem transição
                    },
                    transitionDuration: const Duration(seconds: 0),
                  ),
                );
              },
              child: Image.asset(
                ImagesSite.logoImage,
                width: width * 1.5 / 100,
              )),
          SizedBox(width: width * 1 / 100),
          InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const HomePage(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return child; // Retorna a página sem transição
                    },
                    transitionDuration: const Duration(seconds: 0),
                  ),
                );
              },
              child: Text(
                "BathRoomIsClean()?",
                style: GoogleFonts.jetBrainsMono(
                    fontSize: height * 3 / 100,
                    fontWeight: FontWeight.w500,
                    color: ColorsSite.titleColorAppBar),
              ))
        ],
      ),
    );
  }
}
