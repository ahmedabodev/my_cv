import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mywebsitr/about/screen/about.dart';
import 'package:mywebsitr/portfolio/screen/portfolioscreen.dart';


class AppBar_Contorller extends GetxController{
  int index=0;
  changescreen(value){
    index=value;
    update();
  }
  List<Widget>Screens=[
    AboutScreen(),
    PortfolioScreen(),

  ];
}