import 'package:bathroomiscleanflutter/utilities/images.dart';
import 'package:bathroomiscleanflutter/widgets/desc_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarroselComp extends StatefulWidget {
  const CarroselComp({super.key, required this.height, required this.width});
  final double width;
  final double height;
  @override
  State<CarroselComp> createState() => _CarroselCompState();
}

class _CarroselCompState extends State<CarroselComp> {
   
  @override
  Widget build(BuildContext context) {
     List<String> list = [
      ImagesSite.banheiroImage,
      ImagesSite.banheiroImage1,
      ImagesSite.banheiroImage2,
      ImagesSite.banheiroImage3
    ];

    return  DescWidget(
                  
                  title: "Fotos coletadas",
                  desc: Container(
                      decoration: const BoxDecoration(),
                      width: widget.width * 90 / 100,
                      height: widget.height * 60 / 100,
                      child: CarouselSlider(
                        options: CarouselOptions(
                            autoPlay: true,
                            autoPlayInterval: const Duration(seconds: 1)),
                        items: list
                            .map((item) => Image.asset(
                                  item,
                                  width: widget.width * 65 / 100,
                                  fit: BoxFit.contain,
                                ))
                            .toList(),
                      )),
                );
  }
}