import 'package:bathroomiscleanflutter/pages/contacts_page.dart';
import 'package:bathroomiscleanflutter/pages/home_page.dart';
import 'package:bathroomiscleanflutter/pages/surveys_page.dart';
import 'package:bathroomiscleanflutter/utilities/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonPgRouteWidget extends StatefulWidget {
  const ButtonPgRouteWidget(
      {super.key,
      required this.btnColor,
      required this.btnText,
      this.height,
      this.width,
      this.route});
  final Color btnColor;
  final String btnText;
  final double? height;
  final double? width;
  final dynamic route;

  @override
  // ignore: library_private_types_in_public_api
  _ButtonPgRouteWidgetState createState() => _ButtonPgRouteWidgetState();
}

class _ButtonPgRouteWidgetState extends State<ButtonPgRouteWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHovered = false;
        });
      },
      child: InkWell(
        onTap: () {
          Navigator.pushReplacement(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  widget.route,
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return child; // Retorna a página sem transição
              },
              transitionDuration: const Duration(seconds: 0),
            ),
          );
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: isHovered
                ? const Color.fromARGB(255, 0, 0, 0)
                : widget.btnColor,
          ),
          child: Center(
            child: Text(
              widget.btnText,
              style: GoogleFonts.jetBrainsMono(
                fontSize: widget.height! * 3 / 100,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ListButtonsWidget extends StatefulWidget {
  const ListButtonsWidget({super.key, required this.height});
  final double height;
  @override
  State<ListButtonsWidget> createState() => _ListButtonsWidgetState();
}

class _ListButtonsWidgetState extends State<ListButtonsWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: ButtonPgRouteWidget(
          btnColor: ColorsSite.colorBtnHome,
          btnText: "Tela Inicial",
          height: widget.height,
          route: const HomePage(),
        )),
        Expanded(
            child: ButtonPgRouteWidget(
          btnColor: ColorsSite.colorBtnSurveys,
          btnText: "Evidências",
          height: widget.height,
          route: const SurveysPage(),
        )),
        Expanded(
            child: ButtonPgRouteWidget(
          btnColor: ColorsSite.colorBtnContacts,
          btnText: "Alunos",
          height: widget.height,
          route: const ContactPage(),
        ))
      ],
    );
  }
}
