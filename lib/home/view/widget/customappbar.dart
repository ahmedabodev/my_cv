import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mywebsitr/home/controller/appbar_controller.dart';
import 'package:mywebsitr/home/view/widget/logo.dart';

class CustomAppBar extends StatelessWidget {
   CustomAppBar({Key? key}) : super(key: key);
   final AppBar_Contorller appBar_Contorller=Get.put(AppBar_Contorller());
  List<String>Namebar=[
    'About',
    'Portfolio',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.transparent,
        // color: const Color(0xffffffff),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
          child: Row(

            children:  [
              const SizedBox(width: 20,),
              const Logoflutter(),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child:GetBuilder<AppBar_Contorller>(builder: ( controller) {
                  return  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: Namebar.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: InkWell(
                          onTap: (){
                            controller.changescreen(index);
                          },
                          child: Text(Namebar[index],style:  TextStyle(
                              fontFamily:'Roboto',
                              color:(controller.index==index)?Colors.tealAccent: Colors.black,
                              fontSize: 20
                          )),
                        ),
                      );
                    },);
                },),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
