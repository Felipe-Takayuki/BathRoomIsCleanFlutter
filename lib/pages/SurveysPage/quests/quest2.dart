import 'package:bathroomiscleanflutter/widgets/card_survey_widget.dart';
import 'package:bathroomiscleanflutter/widgets/person_withnumber.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Quest2 extends StatefulWidget {
  const Quest2({super.key, required this.height, required this.width});
  final double height;
  final double width;
  @override
  State<Quest2> createState() => _Quest2State();
}

class _Quest2State extends State<Quest2> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CardSurveyWidget(
          width: widget.width,
          height: widget.height * 30 / 100,
          quest: "2. Você utiliza o banheiro com que frequência?",
          survey: Row(
            children: [
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  PersonWithNumberWidget(
                      widthImage: widget.width * 5 / 100,
                      number: "3",
                      fontSize: widget.width * 2 / 100,
                      padding: EdgeInsets.fromLTRB(widget.width * 8 / 100,
                          widget.height * 4 / 100, widget.width * 8 / 100, 0)),
                  Text(
                    "Apenas quando necessário",
                    style: GoogleFonts.jetBrainsMono(
                        fontSize: widget.width * 1.5 / 100),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  PersonWithNumberWidget(
                      widthImage: widget.width * 5 / 100,
                      number: "10",
                      fontSize: widget.width * 2 / 100,
                      padding: EdgeInsets.fromLTRB(widget.width * 8 / 100,
                          widget.height * 4 / 100, widget.width * 8 / 100, 0)),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Às vezes",
                      style: GoogleFonts.jetBrainsMono(
                          fontSize: widget.width * 1.5 / 100),
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  PersonWithNumberWidget(
                      widthImage: widget.width * 5 / 100,
                      number: "9",
                      fontSize: widget.width * 2 / 100,
                      padding: EdgeInsets.fromLTRB(widget.width * 8 / 100,
                          widget.height * 4 / 100, widget.width * 8 / 100, 0)),
                  Text(
                    "Frequentemente",
                    style: GoogleFonts.jetBrainsMono(
                        fontSize: widget.width * 1.5 / 100),
                  )
                ],
              ),
              const Spacer()
            ],
          )),
    );
  }
}
