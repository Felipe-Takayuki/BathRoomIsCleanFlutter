import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardSurveyWidget extends StatefulWidget {
  const CardSurveyWidget({super.key, required this.width, required this.height,  required this.quest, required this.survey});
  final double width;
  final double height;
  final String quest; 
  final Widget survey;
  @override
  State<CardSurveyWidget> createState() => _CardSurveyWidgetState();
}

class _CardSurveyWidgetState extends State<CardSurveyWidget> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
       children: [
        Container(
          decoration:const  BoxDecoration(
             color:  Color.fromRGBO(217, 217, 217, 1),
             borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          padding: EdgeInsets.all(widget.height * 2/100),
          width: widget.width * 80/100,
          height: 100,
          child: Center(
            child: Text(widget.quest, style: GoogleFonts.jetBrainsMono(
              fontSize: widget.width * 1.5/100,
              fontWeight: FontWeight.w500
            ),),
          ),
        ),
          Container(
          decoration:const  BoxDecoration(
             color:  Color.fromRGBO(161, 161, 161, 1),
             borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)
             )
          ),
          width: widget.width * 78/100,
          height: widget.height,
          child: Center(
            child: widget.survey
          ),
        ),
       ],
    );
  }
}