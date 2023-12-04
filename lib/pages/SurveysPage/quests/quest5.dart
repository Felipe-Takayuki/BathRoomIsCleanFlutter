// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:bathroomiscleanflutter/widgets/card_survey_widget.dart';
import 'package:bathroomiscleanflutter/widgets/person_withnumber.dart';

class Quest5 extends StatefulWidget {
  const Quest5({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);
  final double height;
  final double width;
  @override
  State<Quest5> createState() => _Quest5State();
}

class _Quest5State extends State<Quest5> {
  @override
  Widget build(BuildContext context) {
    return  Center(
                  child: CardSurveyWidget(
                      width: widget.width,
                      height: widget.height * 100 / 100,
                      quest:
                          "5. Você possui alguma sugestão específica sobre como podemos melhorar a higiene e as condições dos banheiros da escola? (opcional)",
                      survey: Column(
                        children: [
                          PersonWithNumberWidget(
                              widthImage: widget.width * 6 / 100,
                              number: "17",
                              fontSize: widget.height * 4 / 100,
                              padding: EdgeInsets.fromLTRB(
                                  widget.width * 2 / 100,
                                  widget.height * 4 / 100,
                                  widget.width * 2 / 100,
                                  0)),
                          Center(
                              child: Text(
                            "Respostas",
                            style: GoogleFonts.jetBrainsMono(
                                fontSize: widget.height * 4 / 100),
                          )),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: widget.height * 2 / 100,
                                  left: widget.width * 2 / 100),
                              child: Text(
                                "Relatos:",
                                style: GoogleFonts.jetBrainsMono(
                                    color: Colors.white,
                                    fontSize: widget.height * 3.5 / 100),
                              ),
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Spacer(),
                              Container(
                                margin: EdgeInsets.only(
                                    top: widget.height * 2 / 100),
                                padding: const EdgeInsets.all(10),
                                color: const Color.fromRGBO(196, 191, 191, 1),
                                height: widget.height * 60 / 100,
                                width: widget.width * 75 / 100,
                                child: Center(
                                  child: Column(
                                    children: [
                                      Text(
                                        '“Conscientização de que o uso do banheiro é para todos e não devemos quebrar o que será usado”',
                                        style: GoogleFonts.jetBrainsMono(
                                            fontSize:
                                                widget.width * 2 / 100),
                                      ),
                                      SizedBox(
                                        height: widget.height * 5 / 100,
                                      ),
                                      Text(
                                        '"Talvez se os alunos tivessem acesso facilitado, como por exemplo, os próprio alunos pudessem repor os papéis a manutenção do banheiro poderia melhorar."',
                                        style: GoogleFonts.jetBrainsMono(
                                            fontSize:
                                                widget.width * 2 / 100),
                                      ),
                                      SizedBox(
                                        height: widget.height * 5 / 100,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const Spacer()
                            ],
                          ),
                        ],
                      )),
                );
  }
}