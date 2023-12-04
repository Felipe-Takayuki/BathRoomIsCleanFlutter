import 'package:bathroomiscleanflutter/pages/SurveysPage/quests/quest1.dart';
import 'package:bathroomiscleanflutter/pages/SurveysPage/quests/quest2.dart';
import 'package:bathroomiscleanflutter/pages/SurveysPage/quests/quest3.dart';
import 'package:bathroomiscleanflutter/pages/SurveysPage/quests/quest4.dart';
import 'package:bathroomiscleanflutter/pages/SurveysPage/quests/quest5.dart';
import 'package:bathroomiscleanflutter/pages/carrosel.dart';
import 'package:bathroomiscleanflutter/utilities/colors.dart';
import 'package:bathroomiscleanflutter/utilities/images.dart';
import 'package:bathroomiscleanflutter/widgets/appbar_widget.dart';
import 'package:bathroomiscleanflutter/widgets/button_pgroute_widget.dart';
import 'package:bathroomiscleanflutter/widgets/desc_widget.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SurveysPage extends StatefulWidget {
  const SurveysPage({super.key});

  @override
  State<SurveysPage> createState() => _SurveysPageState();
}

class _SurveysPageState extends State<SurveysPage> {
  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorsSite.bgColorBody,
      appBar: AppBarWidget(
        height: mediaquery.height,
        width: mediaquery.width,
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ListButtonsWidget(height: mediaquery.height),
          SizedBox(
            height: mediaquery.height * 10 / 100,
          ),
          Center(
              child: CarroselComp(
                  height: mediaquery.height, width: mediaquery.width)),
          Padding(
            padding: EdgeInsets.all(mediaquery.width * 5 / 100),
            child: Column(
              children: [
                DescWidget(
                    title: "Como a pesquisa foi realizada?",
                    desc: SizedBox(
                        width: mediaquery.width * 40 / 100,
                        child: Text(
                          "A nossa pesquisa foi executada utilizando dados do formulário feito pelo grupo, tendo como público alvo os alunos da ETEC.",
                          style: GoogleFonts.jetBrainsMono(
                              fontSize: mediaquery.height * 3 / 100,
                              fontWeight: FontWeight.w500),
                        ))),
              ],
            ),
          ),
          Center(
            child: Column(
              children: [
                Image.asset(ImagesSite.personImage),
                Text(
                  "Obtivemos 22 respostas.",
                  style: GoogleFonts.jetBrainsMono(
                      fontSize: mediaquery.height * 3 / 100,
                      fontWeight: FontWeight.w500),
                ),

                SizedBox(
                  height: mediaquery.height * 4 / 100,
                ),

                // PERGUNTA 1
                Quest1(height: mediaquery.height, width: mediaquery.width),
                
                SizedBox(
                  height: mediaquery.height * 4 / 100,
                ),

                //  PERGUNTA 2
                Quest2(height: mediaquery.height, width: mediaquery.width),


                SizedBox(
                  height: mediaquery.height * 4 / 100,
                ),

                // PERGUNTA 3
                Quest3(height: mediaquery.height, width: mediaquery.width),

                SizedBox(
                  height: mediaquery.height * 4 / 100,
                ),

                // PERGUNTA 4
                Quest4(height: mediaquery.height, width: mediaquery.width),


                SizedBox(
                  height: mediaquery.height * 4 / 100,
                ),

                // PERGUNTA 5
               Quest5(height: mediaquery.height, width: mediaquery.width)
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

