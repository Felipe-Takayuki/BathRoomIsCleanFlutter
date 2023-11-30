
import 'package:bathroomiscleanflutter/utilities/colors.dart';
import 'package:bathroomiscleanflutter/utilities/images.dart';
import 'package:bathroomiscleanflutter/widgets/appbar_widget.dart';
import 'package:bathroomiscleanflutter/widgets/button_pgroute_widget.dart';
import 'package:bathroomiscleanflutter/widgets/desc_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class EvidencesPage extends StatefulWidget {
  const EvidencesPage({super.key});

  @override
  State<EvidencesPage> createState() => _EvidencesPageState();
}

class _EvidencesPageState extends State<EvidencesPage> {
  
  @override
  Widget build(BuildContext context) {
    List<String> list = [ImagesSite.banheiroImage, ImagesSite.banheiroImage1, ImagesSite.banheiroImage2, ImagesSite.banheiroImage3];
    var mediaquery = MediaQuery.of(context).size;
    return Scaffold(
    backgroundColor: ColorsSite.bgColorBody,
      appBar: AppBarWidget(width: mediaquery.width, height: mediaquery.height),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListButtonsWidget(height: mediaquery.height),
            SizedBox(height: mediaquery.height * 2/100,),
            DescWidget(title: "Fotos", desc:      
            
          Container(
            
              width: mediaquery.width * 60/100,

          child: CarouselSlider(
        options: CarouselOptions(

          autoPlay: true,
          autoPlayInterval: const  Duration(seconds: 2)
        ),
        items: list
            .map((item) => Image.asset(item, width: mediaquery.width * 40/100,fit: BoxFit.cover,))
            .toList(),
      )),)
        
          ],
        ),
      ),
    );
  }
}

