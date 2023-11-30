
import 'package:bathroomiscleanflutter/utilities/colors.dart';
import 'package:bathroomiscleanflutter/widgets/appbar_widget.dart';
import 'package:bathroomiscleanflutter/widgets/button_pgroute_widget.dart';
import 'package:bathroomiscleanflutter/widgets/desc_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: ColorsSite.bgColorBody,
        appBar: AppBarWidget(width:  mediaquery.width, height: mediaquery.height),
        body:   Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListButtonsWidget(height: mediaquery.height),
            Padding(
              padding: EdgeInsets.all(mediaquery.height * 10/100),
              child:   
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 DescWidget(title: "Sobre", desc:  
                  SizedBox(
                    width: mediaquery.width * 40/100,
                    child: Text("Nesse site iremos expor a nossa pesquisa que foi iniciada em 22 de setembro de 2023 que tivemos como objetivo mostrar os problemas de higiene e dificuldades dos alunos ao frequentar o banheiro.",
                    style: GoogleFonts.jetBrainsMono(
                      fontSize: mediaquery.height * 3/100,
                      fontWeight: FontWeight.w500
                    ),
                    ),
                  )),

                
               ],
             )),
            
          ],
        ),
    );
  }
}

