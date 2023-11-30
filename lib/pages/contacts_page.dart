import 'package:bathroomiscleanflutter/utilities/colors.dart';
import 'package:bathroomiscleanflutter/widgets/appbar_widget.dart';
import 'package:bathroomiscleanflutter/widgets/button_pgroute_widget.dart';
import 'package:bathroomiscleanflutter/widgets/desc_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorsSite.bgColorBody,
      appBar: AppBarWidget(height: mediaquery.height, width: mediaquery.width,),
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListButtonsWidget(height: mediaquery.height),
          Padding(
            padding: EdgeInsets.all(mediaquery.height * 10/100),
            child: Column(
              children: [
                DescWidget(title: "Trabalho feito por",
                        desc: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             
                             InkWell(
                               onTap: () => launchUrlString("https://github.com/Noobolon"),
                               child: Text("Eduardo Girão", style: GoogleFonts.jetBrainsMono(
                                fontSize: mediaquery.height * 3/100,
                                decoration: TextDecoration.underline
                
                               ),)
                             ),
                
                            InkWell(
                               onTap: () => launchUrlString("https://github.com/Felipe-Takayuki"),
                               child: Text("Felipe Takahashi", style: GoogleFonts.jetBrainsMono(
                                fontSize: mediaquery.height * 3/100,
                                decoration: TextDecoration.underline
                               ),),
                             ),
                
                               InkWell(
                               onTap: () => launchUrlString("https://github.com/IsaacZanni"),
                               child: Text("Isaac Zanni", style: GoogleFonts.jetBrainsMono(
                                fontSize: mediaquery.height * 3/100,
                                decoration: TextDecoration.underline
                               ),),
                             )
                
                          ],
                        )),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: mediaquery.height * 10/100),
            child: DescWidget(title: "Código", 
            desc: InkWell(
                                 onTap: () => launchUrlString("https://github.com/Felipe-Takayuki/BathRoomIsCleanFlutter/tree/bathroomisclean"),
                                 child: Text("código no github", style: GoogleFonts.jetBrainsMono(
                                  fontSize: mediaquery.height * 3/100,
                                  decoration: TextDecoration.underline
                                 ),),
                               ), ),
          )
        ],
      ),
    );

  }
}