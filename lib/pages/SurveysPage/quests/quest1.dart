// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:bathroomiscleanflutter/utilities/images.dart';
import 'package:bathroomiscleanflutter/widgets/card_survey_widget.dart';
import 'package:bathroomiscleanflutter/widgets/person_withnumber.dart';

class Quest1 extends StatefulWidget {
  const Quest1({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;
  @override
  State<Quest1> createState() => _Quest1State();
}

class _Quest1State extends State<Quest1> {
  @override
  Widget build(BuildContext context) {
    return Center(
                  child: CardSurveyWidget(
                    width: widget.width,
                    height: widget.height * 50 / 100,
                    quest:
                        "1. Como você classifica a limpeza do banheiro durante o dia?",
                    survey: Row(
                      children: [
                        const Spacer(),
                        Column(
                          children: [
                            PersonWithNumberWidget(
                              widthImage: widget.width * 5 / 100,
                              number: "3",
                              fontSize: widget.width * 2 / 100,
                              padding:
                                  EdgeInsets.all(widget.width * 3 / 100),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  ImagesSite.starImage,
                                  width: widget.width * 5 / 100,
                                ),
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            PersonWithNumberWidget(
                              widthImage: widget.width * 5 / 100,
                              number: "4",
                              fontSize: widget.width * 2 / 100,
                              padding:
                                  EdgeInsets.all(widget.width * 3 / 100),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "2",
                                  style: GoogleFonts.jetBrainsMono(
                                      fontSize: widget.height * 6 / 100,
                                      color:
                                          const Color.fromRGBO(111, 94, 90, 1)),
                                ),
                                Image.asset(
                                  ImagesSite.starImage,
                                  width: widget.width * 5 / 100,
                                ),
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            PersonWithNumberWidget(
                              widthImage: widget.width * 5 / 100,
                              number: "6",
                              fontSize: widget.width * 2 / 100,
                              padding:
                                  EdgeInsets.all(widget.width * 3 / 100),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "3",
                                  style: GoogleFonts.jetBrainsMono(
                                      fontSize: widget.height * 6 / 100,
                                      color:
                                          const Color.fromRGBO(111, 94, 90, 1)),
                                ),
                                Image.asset(
                                  ImagesSite.starImage,
                                  width: widget.width * 5 / 100,
                                ),
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            PersonWithNumberWidget(
                              widthImage: widget.width * 5 / 100,
                              number: "7",
                              fontSize: widget.width * 2 / 100,
                              padding:
                                  EdgeInsets.all(widget.width * 3 / 100),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "4",
                                  style: GoogleFonts.jetBrainsMono(
                                      fontSize: widget.height * 6 / 100,
                                      color:
                                          const Color.fromRGBO(111, 94, 90, 1)),
                                ),
                                Image.asset(
                                  ImagesSite.starImage,
                                  width: widget.width * 5 / 100,
                                ),
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            PersonWithNumberWidget(
                              widthImage: widget.width * 5 / 100,
                              number: "2",
                              fontSize: widget.width * 2 / 100,
                              padding:
                                  EdgeInsets.all(widget.width * 3 / 100),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "5",
                                  style: GoogleFonts.jetBrainsMono(
                                      fontSize: widget.height * 6 / 100,
                                      color:
                                          const Color.fromRGBO(111, 94, 90, 1)),
                                ),
                                Image.asset(
                                  ImagesSite.starImage,
                                  width: widget.width * 5 / 100,
                                ),
                              ],
                            )
                          ],
                        ),
                        const Spacer()
                      ],
                    ),
                  ),
                );
  }
}