import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mywebsitr/about/screen/about.dart';
import 'package:mywebsitr/home/controller/appbar_controller.dart';
import 'package:mywebsitr/home/view/widget/customappbar.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);
final AppBar_Contorller appBar_Contorller =Get.put(AppBar_Contorller());
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/flutter.jpg'),
          fit: BoxFit.cover
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // backgroundColor: const Color(0xfff8f8f8),
        appBar:PreferredSize(
          preferredSize: Size(
            MediaQuery.of(context).size.width,
            70,
          ),
          child:  CustomAppBar(),
        ),
        body:GetBuilder<AppBar_Contorller>(builder: ( controller) {
          return controller.Screens[controller.index];
        },),
      ),
    );
  }
}
