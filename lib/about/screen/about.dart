import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mywebsitr/const.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 150,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Hi There,',style: TextStyle(
                        color: Colors.black,
                        fontFamily:'Roboto',
                        fontSize: 32
                    ),),
                    const SizedBox(height: 15,),
                    const Text('I\'m Ahmed Abudeif',style: TextStyle(
                      color: Colors.black,
                        fontFamily:'Roboto',

                        fontSize: 32
                    ),),
                    const SizedBox(height: 15,),
                    const Text('I Am Flutter Developer',style: TextStyle(
                      color: Colors.black,
                        fontFamily:'Roboto',

                        fontSize: 22
                    ),).shimmer(
                      primaryColor: Colors.black
                    ),

                    const SizedBox(height: 15,),
                    Wrap(
                      children: [
                        IconButton(onPressed: (){
                          final Uri url = Uri.parse(linkedin);
                          launchUrl(url);
                        }, icon: const FaIcon(FontAwesomeIcons.linkedin,color: Colors.black,)),
                        IconButton(onPressed: (){
                          final Uri url = Uri.parse(github);
                          launchUrl(url);
                        }, icon: const FaIcon(FontAwesomeIcons.github,color: Colors.black,)),
                        IconButton(onPressed: (){
                          final Uri url = Uri.parse(Facebook);
                          launchUrl(url);
                        }, icon: const FaIcon(FontAwesomeIcons.facebook,color: Colors.black,)),
                        IconButton(onPressed: (){
                          final Uri url = Uri.parse(whatsapp);
                          launchUrl(url);
                        }, icon: const FaIcon(FontAwesomeIcons.whatsapp,color: Colors.black,)),

                      ],
                    ),
                    const SizedBox(height: 15,),
                    MaterialButton(
                      elevation: 10,
                      minWidth: 130,
                      height: 50,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      color: const Color(0xff11017a),
                      onPressed: (){
                        final Uri url = Uri.parse(cv);
                        launchUrl(url);
                      },
                      child:const Text('MY CV',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily:'Roboto',

                            fontSize: 18
                        ),
                      ),
                    ),
                  ],
                ),

                // Image.asset('images/abudeif.png',height: 500,width: 500,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
