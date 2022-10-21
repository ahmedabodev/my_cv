import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mywebsitr/portfolio/controller/indictor_controller.dart';
import 'package:mywebsitr/portfolio/widget/video.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';

class PortfolioScreen extends StatefulWidget {
  PortfolioScreen({Key? key}) : super(key: key);

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
 final indcator_controller inda=Get.put(indcator_controller());
 List<String>images=[
   'images/pegion.PNG',
   'images/Todo.jpg',
   'images/muslim.jpg',
 ];
 List<String>Name=[
   'Pigeon Chat :',
   'Todo Privacy :',
   'تعاليم المسلم :',
 ];
 List<String>Notifa=[
   'FCM Notification',
   'Awesome Notification',
   'Dark Mode',
 ];
 List<String>database=[
   'Firebase',
   'sqflite',
   'Local database',
 ];
 List<String>links=[
   'https://play.google.com/store/apps/details?id=com.abudeif',
   'https://play.google.com/store/apps/details?id=com.abudeif.todo',
   'https://play.google.com/store/apps/details?id=com.abudeif.muslem',
 ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child:SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 100,),
            ListView.builder(
              itemCount: images.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100.0,vertical: 15),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    color: Colors.white.withOpacity(0.3),
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 50.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children:  [
                                    Text('${Name[index]}',style: const TextStyle(
                                        color: Colors.black,
                                        fontFamily:'Roboto',

                                        fontSize: 22
                                    ),),
                                    const SizedBox(height: 5,),
                                    const Text('Getx State management',style: TextStyle(
                                        color: Colors.black,
                                        fontFamily:'Roboto',

                                        fontSize: 18
                                    ),),
                                    const SizedBox(height: 5,),
                                    Text(database[index],style: const TextStyle(
                                        color: Colors.black,
                                        fontFamily:'Roboto',

                                        fontSize: 18
                                    ),),
                                    const SizedBox(height: 5,),
                                    Text(Notifa[index],style: const TextStyle(
                                        color: Colors.black,
                                        fontFamily:'Roboto',

                                        fontSize: 18
                                    ),),

                                    const SizedBox(height: 5,),
                                    InkWell(
                                      onTap: (){
                                        final Uri url = Uri.parse(links[index]);
                                        launchUrl(url);
                                      },
                                      child: const Text('Download From Google Play',style: TextStyle(
                                          color: Colors.blue,
                                          fontFamily:'Roboto',

                                          fontSize: 18
                                      ),),
                                    ),
                                  ],
                                ),
                              ),


                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: 400,
                                child: CarouselSlider.builder(
                                  itemCount: images.length ,
                                  options:CarouselOptions(
                                    height:200,
                                    viewportFraction:1.0,
                                    initialPage: 0,

                                    enableInfiniteScroll: true,
                                    reverse: false,
                                    autoPlay: true,
                                    autoPlayInterval: const Duration(seconds: 3),
                                    autoPlayAnimationDuration: const Duration(milliseconds: 800),
                                    autoPlayCurve: Curves.fastOutSlowIn,
                                    enlargeCenterPage: true,
                                    onPageChanged: ( value,caursol){
                                      inda.changeind(value);
                                    },
                                    scrollDirection: Axis.horizontal,
                                  ),
                                  itemBuilder: (BuildContext context, int indd, int realIndex) {
                                    return ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                      ),
                                      child: Image.asset(images[index],
                                        fit: BoxFit.contain,

                                      ),
                                    );
                                  },

                                ),
                              ),
                         GetBuilder<indcator_controller>(builder: ( controller) {
                           return      DotsIndicator(
                             decorator: const DotsDecorator(
                               color: Colors.grey, // Inactive color
                               activeColor: Colors.black87,
                             ),
                             dotsCount: images.length,
                             position: controller.index.floorToDouble(),
                           );
                         },)
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                );

              },)

          ],
        ),
      ) ,
    );
  }
}
