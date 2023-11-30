import 'package:bathroomiscleanflutter/utilities/colors.dart';
import 'package:bathroomiscleanflutter/utilities/images.dart';
import 'package:bathroomiscleanflutter/widgets/appbar_widget.dart';
import 'package:bathroomiscleanflutter/widgets/button_pgroute_widget.dart';
import 'package:bathroomiscleanflutter/widgets/card_survey_widget.dart';
import 'package:bathroomiscleanflutter/widgets/desc_widget.dart';
import 'package:bathroomiscleanflutter/widgets/person_withnumber.dart';
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          ListButtonsWidget(height: mediaquery.height),
          Padding(
            padding:  EdgeInsets.all(mediaquery.width * 5/100),
            child: Column(
              
              children: [
                DescWidget(title: "Como a pesquisa foi realizada?", 
                desc: SizedBox(
                width: mediaquery.width * 40/100,
                child: Text("A nossa pesquisa foi executada utilizando dados do formulário feito pelo grupo, tendo como público alvo os alunos da ETEC.", 
                style: GoogleFonts.jetBrainsMono(
                  fontSize: mediaquery.height * 3/100,
                  fontWeight: FontWeight.w500
                ),))),
        
              ],
            ),
          ),
          

          


                Center(
                  child: Column(
                    children: [
                      Image.asset(ImagesSite.personImage),
                      Text("Obtivemos 22 respostas.", style: GoogleFonts.jetBrainsMono(fontSize: mediaquery.height *  3/100, fontWeight: FontWeight.w500),),
                      

                      SizedBox(height: mediaquery.height * 4/100,),


                    // PERGUNTA 1
                      
                       Center(
                         child: CardSurveyWidget(width: mediaquery.width, height: mediaquery.height * 50/100, 
                         quest: "1. Como você classifica a limpeza do banheiro durante o dia?",
                         survey:
                            Row(
                            
                            children: [
                              const Spacer(),
                              Column(
                                children: [
                                  PersonWithNumberWidget(widthImage: mediaquery.width * 5/100, number: "3", fontSize: mediaquery.height * 4/100, padding: EdgeInsets.all(mediaquery.width * 3/100),),
                                  Row(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                       
                                    Image.asset(ImagesSite.starImage, width:  mediaquery.width * 5/100,),
                                  
                                  ],)
                                ],
                              ), 
                              Column(
                                children: [
                                  PersonWithNumberWidget(widthImage: mediaquery.width * 5/100, number: "4", fontSize: mediaquery.height * 4/100, padding: EdgeInsets.all(mediaquery.width * 3/100),),
                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                        Text("2", style: GoogleFonts.jetBrainsMono(fontSize: mediaquery.height * 6/100,
                                        color: const Color.fromRGBO(111, 94, 90, 1)),),
                                    Image.asset(ImagesSite.starImage, width:  mediaquery.width * 5/100,),
                                  
                                  ],)
                                ],
                              ),
                               Column(
                                children: [
                                  PersonWithNumberWidget(widthImage: mediaquery.width * 5/100, number: "6", fontSize: mediaquery.height * 4/100, padding: EdgeInsets.all(mediaquery.width * 3/100),),
                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                        Text("3", style: GoogleFonts.jetBrainsMono(fontSize: mediaquery.height * 6/100,
                                         color: const Color.fromRGBO(111, 94, 90, 1)),),
                                    Image.asset(ImagesSite.starImage, width:  mediaquery.width * 5/100,),
                                  
                                  ],)
                                ],
                              ),
                               Column(
                                children: [
                                  PersonWithNumberWidget(widthImage: mediaquery.width * 5/100, number: "7", fontSize: mediaquery.height * 4/100, padding: EdgeInsets.all(mediaquery.width * 3/100),),
                                  Row(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                        Text("4", style: GoogleFonts.jetBrainsMono(fontSize: mediaquery.height * 6/100, 
                                        color: const Color.fromRGBO(111, 94, 90, 1)),),
                                    Image.asset(ImagesSite.starImage, width:  mediaquery.width * 5/100,),
                                  
                                  ],)
                                ],
                              ),
                               Column(
                                children: [
                                  PersonWithNumberWidget(widthImage: mediaquery.width * 5/100, number: "2", fontSize: mediaquery.height * 4/100, padding: EdgeInsets.all(mediaquery.width * 3/100),),
                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                        Text("5", style: GoogleFonts.jetBrainsMono(fontSize: mediaquery.height * 6/100, 
                                        color: const Color.fromRGBO(111, 94, 90, 1)),),
                                    Image.asset(ImagesSite.starImage, width:  mediaquery.width * 5/100,),
                                  
                                  ],)
                                ],

                              ),
                              const Spacer()
                            ],
                                                     )
                          ,),
                       ),

                       
                      SizedBox(height: mediaquery.height * 4/100,),

                      //  PERGUNTA 2
                       Center(
                        child: CardSurveyWidget(width: mediaquery.width, height: mediaquery.height * 30/100, 
                        quest: "2. Você utiliza o banheiro com que frequência?",
                         survey: Row(
                          children: [
                             const Spacer(),
                              Column(
                                children: [
                                  PersonWithNumberWidget(widthImage: mediaquery.width * 5/100, number: "3", fontSize: mediaquery.height * 4/100, padding: EdgeInsets.fromLTRB(mediaquery.width * 8/100, mediaquery.height *4/100, mediaquery.width * 8/100, 0)),
                                  Text("Apenas quando necessário", style: GoogleFonts.jetBrainsMono(fontSize: mediaquery.height * 3/100),)
                                ],
                              ), 
                              Column(
                                children: [
                                  PersonWithNumberWidget(widthImage: mediaquery.width * 5/100, number: "10", fontSize: mediaquery.height * 4/100, padding: EdgeInsets.fromLTRB(mediaquery.width * 8/100, mediaquery.height *4/100, mediaquery.width * 8/100, 0)),
                                  Text("Às vezes", style: GoogleFonts.jetBrainsMono(fontSize: mediaquery.height * 3/100),)
                                ],
                              ),
                               Column(
                                children: [
                                  PersonWithNumberWidget(widthImage: mediaquery.width * 5/100, number: "9", fontSize: mediaquery.height * 4/100, padding: EdgeInsets.fromLTRB(mediaquery.width * 8/100, mediaquery.height *4/100, mediaquery.width * 8/100, 0)),
                                   Text("Frequentemente", style: GoogleFonts.jetBrainsMono(fontSize: mediaquery.height * 3/100), )
                                ],
                              ),
                              const Spacer()
                          ],
                         )),
                       ),
                     
                       SizedBox(height: mediaquery.height * 4/100,),

                     // PERGUNTA 3
                       Center(
                        child: CardSurveyWidget(width: mediaquery.width, height: mediaquery.height * 90/100, 
                        quest: "3. Você enfrenta problemas ao utilizar o banheiro? Se sim, quais?",
                         survey:  Column(
                           children: [
                             Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                   
                                  Column(
                                    children: [
                                      
                                      PersonWithNumberWidget(widthImage: mediaquery.width * 5/100, number: "17", fontSize: mediaquery.height * 4/100, padding: EdgeInsets.fromLTRB(mediaquery.width * 2/100, mediaquery.height *4/100, mediaquery.width * 2/100, 0)),
                                      Text("Sim", style: GoogleFonts.jetBrainsMono(fontSize: mediaquery.height * 3/100),)
                                    ],
                                  ), 
                                  Column(
                                    children: [
                                      PersonWithNumberWidget(widthImage: mediaquery.width * 5/100, number: "5", fontSize: mediaquery.height * 4/100, padding: EdgeInsets.fromLTRB(mediaquery.width * 2/100, mediaquery.height *4/100, mediaquery.width * 2/100, 0)),
                                      Text("Não", style: GoogleFonts.jetBrainsMono(fontSize: mediaquery.height * 3/100),)
                                    ],
                                  ),
                                   Spacer(),
                                  Padding(
                                    padding: EdgeInsets.only(top: mediaquery.height * 10/100),
                                    child: Text("Alguns\nrelatos:", style: GoogleFonts.jetBrainsMono(color: Colors.white, fontSize: mediaquery.height * 3/100),),
                                  ),
                                 
                                  Container(
                                    margin: EdgeInsets.only(top: mediaquery.height * 5/100),
                                    padding: EdgeInsets.all(10),
                                    color: const Color.fromRGBO(196, 191, 191, 1),
                                    height: mediaquery.height * 80/100,
                                    width: mediaquery.width * 40/100,
                                    child: Center(
                                      child: Column(
                                        
                                        children: [
                                          Text('"Falta de sabonete e chão muito molhado"', style: GoogleFonts.jetBrainsMono(fontSize: mediaquery.height * 3/100),),
                                          SizedBox(height: mediaquery.height * 4/100,),
                                  
                                          Text('“Xixi fora do mictório ou da privada,falta de dar descarga, papel usado no chão, lixo sempre cheio o que contribui a sujeira do banheiro, e um pote de sabão líquido no banheiro...”', style: GoogleFonts.jetBrainsMono(fontSize: mediaquery.height * 3/100),),
                                          SizedBox(height: mediaquery.height * 4/100,),

                                          Text('“Falta de papel, privada suja, não dão descarga as vezes e algumas torneiras ficam ligadas.”', style: GoogleFonts.jetBrainsMono(fontSize: mediaquery.height * 3/100),),
                                           SizedBox(height: mediaquery.height * 4/100,),
                                          
                                          Text('“Falta de papel higiênico, absorventes, sabonete e papel nas pias”', style: GoogleFonts.jetBrainsMono(fontSize: mediaquery.height * 3/100),),

                                        ],
                                      ),
                                    ),
                                  ),
                                 const Spacer()
                              ],
                             ),
                           ],
                         )),
                       ),

                       SizedBox(height: mediaquery.height * 4/100,),

                       // PERGUNTA 4
                            Center(
                        child: CardSurveyWidget(width: mediaquery.width, height: mediaquery.height * 90/100, 
                        quest: "4. Como você descreveria a manutenção das torneiras ? Elas costumam funcionar corretamente?",
                         survey:  Column(
                           children: [
                             Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                   
                                  Column(
                                    children: [
                                      
                                      PersonWithNumberWidget(widthImage: mediaquery.width * 5/100, number: "22", fontSize: mediaquery.height * 4/100, padding: EdgeInsets.fromLTRB(mediaquery.width * 2/100, mediaquery.height *4/100, mediaquery.width * 2/100, 0)),
                                      Text("Respostas", style: GoogleFonts.jetBrainsMono(fontSize: mediaquery.height * 3/100),)
                                    ],
                                  ), 
                                  
                                  const Spacer(),
                                  Padding(
                                    padding: EdgeInsets.only(top: mediaquery.height * 10/100),
                                    child: Text("Alguns\nrelatos:", style: GoogleFonts.jetBrainsMono(color: Colors.white, fontSize: mediaquery.height * 3/100),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: mediaquery.height * 5/100),
                                    padding: EdgeInsets.all(10),
                                    color: const Color.fromRGBO(196, 191, 191, 1),
                                    height: mediaquery.height * 80/100,
                                    width: mediaquery.width * 40/100,
                                    child: Center(
                                      child: Column(
                                        
                                        children: [
                                          Text('“A maioria costuma funcionar, porém algumas permanecem pingando mesmo fechadas”', style: GoogleFonts.jetBrainsMono(fontSize: mediaquery.height * 3/100),),
                                          SizedBox(height: mediaquery.height * 4/100,),
                                  
                                          Text('“Xixi fora do mictório ou da privada, falta de dar descarga, papel usado no chão, lixo sempre cheio o que contribui a sujeira do banheiro, e um pote de sabão líquido no banheiro...”', style: GoogleFonts.jetBrainsMono(fontSize: mediaquery.height * 3/100),),
                                          SizedBox(height: mediaquery.height * 4/100,),

                                          Text('“No banheiro feminino atualmente há muitas torneiras com problema, uma principalmente não está fechando, fazendo com que o registro tenha que ser desligado [...]”.', style: GoogleFonts.jetBrainsMono(fontSize: mediaquery.height * 3/100),),
                                           SizedBox(height: mediaquery.height * 4/100,),
                                          
                      

                                        ],
                                      ),
                                    ),
                                  ),
                                 const Spacer()
                              ],
                             ),
                           ],
                         )),
                       ),

                       SizedBox(height: mediaquery.height * 4/100,),

                       // PERGUNTA 5 
                         Center(
                        child: CardSurveyWidget(width: mediaquery.width, height: mediaquery.height * 80/100, 
                        quest: '5. Você possui alguma sugestão específica sobre como podemos melhorar a higiene e as condições dos banheiros da escola? (opcional)',
                         survey:  Column(
                           children: [
                             Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                   
                                  Column(
                                    children: [
                                      
                                      PersonWithNumberWidget(widthImage: mediaquery.width * 5/100, number: "22", fontSize: mediaquery.height * 4/100, padding: EdgeInsets.fromLTRB(mediaquery.width * 2/100, mediaquery.height *4/100, mediaquery.width * 2/100, 0)),
                                      Text("Respostas", style: GoogleFonts.jetBrainsMono(fontSize: mediaquery.height * 3/100),)
                                    ],
                                  ), 
                                  
                                  const Spacer(),
                                  Padding(
                                    padding: EdgeInsets.only(top: mediaquery.height * 10/100),
                                    child: Text("Alguns\nrelatos:", style: GoogleFonts.jetBrainsMono(color: Colors.white, fontSize: mediaquery.height * 3/100),),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: mediaquery.height * 5/100),
                                    padding: EdgeInsets.all(10),
                                    color: const Color.fromRGBO(196, 191, 191, 1),
                                    height: mediaquery.height * 70/100,
                                    width: mediaquery.width * 40/100,
                                    child: Center(
                                      child: Column(
                                        
                                        children: [
                                          Text('“Conscientização de que o uso do banheiro é para todos e não devemos quebrar o que será usado”', style: GoogleFonts.jetBrainsMono(fontSize: mediaquery.height * 3/100),),
                                          SizedBox(height: mediaquery.height * 4/100,),
                                
                                          Text('“Talvez se os alunos tivessem acesso facilitado, como por exemplo, os próprio alunos pudessem repor os papéis a manutenção do banheiro poderia melhorar.”', style: GoogleFonts.jetBrainsMono(fontSize: mediaquery.height * 3/100),),
                                          SizedBox(height: mediaquery.height * 4/100,),

                                          
                                          
                      

                                        ],
                                      ),
                                    ),
                                  ),
                                 const Spacer()
                              ],
                             ),
                           ],
                         )),
                       )


                   ],
                  ),
                ),

             

               

                
            
           
        ]),
      ),
      
    );
  }
}