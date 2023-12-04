import 'package:bathroomiscleanflutter/widgets/card_survey_widget.dart';
import 'package:bathroomiscleanflutter/widgets/person_withnumber.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Quest4 extends StatefulWidget {
  const Quest4({super.key, required this.height, required this.width});
  final double height;
  final double width;
  @override
  State<Quest4> createState() => _Quest4State();
}

class _Quest4State extends State<Quest4> {
  @override
  Widget build(BuildContext context) {
    return Center(
                  child: CardSurveyWidget(
                      width: widget.width,
                      height: widget.height,
                      quest:
                          "4. Como você descreveria a manutenção das torneiras ? Elas costumam funcionar corretamente?",
                      survey: Column(
                        children: [
                          PersonWithNumberWidget(
                              widthImage: widget.width * 6 / 100,
                              number: "22",
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
                                        '“A maioria costuma funcionar, porém algumas permanecem pingando mesmo fechadas”',
                                        style: GoogleFonts.jetBrainsMono(
                                            fontSize:
                                                widget.height * 3 / 100),
                                      ),
                                      SizedBox(
                                        height: widget.height * 5 / 100,
                                      ),
                                      Text(
                                        '“Xixi fora do mictório ou da privada, falta de dar descarga, papel usado no chão, lixo sempre cheio o que contribui a sujeira do banheiro, e um pote de sabão líquido no banheiro...”',
                                        style: GoogleFonts.jetBrainsMono(
                                            fontSize:
                                                widget.height * 3 / 100),
                                      ),
                                      SizedBox(
                                        height: widget.height * 5 / 100,
                                      ),
                                      Text(
                                        '“No banheiro feminino atualmente há muitas torneiras com problema, uma principalmente não está fechando, fazendo com que o registro tenha que ser desligado [...]”.',
                                        style: GoogleFonts.jetBrainsMono(
                                            fontSize:
                                                widget.height * 3 / 100),
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